<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Http\Request;
use DB;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
        
    public function index(Request $request){

        $users = User::where([
            ['name', '!=', Null],
            [function ($query) use ($request){
                if(($term = $request->term)) {
                    $query->orWhere('name', 'LIKE', '%'. $term . '%')->get();
                }
            }]
        ])->orderBy("id", "desc")->paginate(5);

    
        return view('user',compact('users'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    public function create(){

        return view('create-user');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
            'user_level' => 'required',
        ]);

        $input = $request->all();

        User::create([
            'name' => $input['name'],
            'email' => $input['email'],
            'password' => Hash::make($input['password']),
            'user_level' => $input['user_level'],
        ]);
     
        return redirect()->route('user.index')
                        ->with('success','User created successfully.');
    }

    public function edit($id)
    {
    $item = User::findOrFail($id);
    return view('user.edit',[
        'item' => $item
    ]);

    }
    public function update (Request $request, $id){
        $data = $request->all();
        $item = User::findOrFail($id);
        $item->update($data);
        return redirect()->route('user.index');
    }

    public function destroy($id)
    {
        $item = User::findOrFail($id);
        $item->delete();
    
        return redirect()->route('user.index')
                        ->with('success','User deleted successfully');
    }
}
