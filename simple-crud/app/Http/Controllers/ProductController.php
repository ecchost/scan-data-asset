<?php
  
namespace App\Http\Controllers;
   
use App\Models\Product;
use App\Models\Divisi;
use Illuminate\Http\Request;
use DB;
use App\Exports\ProductExport;
use Maatwebsite\Excel\Facades\Excel;

  
class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index(Request $request)
    {
        $products = Product::where([
            ['name', '!=', Null],
            [function ($query) use ($request){
                if(($term = $request->term)) {
                    $query->orWhere('name', 'LIKE', '%'. $term . '%')->orWhere('fullname', 'LIKE', '%'. $term . '%')->get();
                }
            }]
        ])->orderBy("id", "desc")->paginate(15);
    
        return view('products.index',compact('products')) 
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }
     

    public function create(Request $request)
    {
        $divisi = Divisi::all();
        // return view('products.create');
        return view('products.newcreate', compact('divisi'));
    }
    
    
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'fullname' => 'required',
            'divisi_id' => 'required',
            'jabatan' => 'required',
            'pengguna' => 'required',
            'printer' => 'required',
            'sn' => 'required',
            'os' => 'required',
            'ip' => 'required',
            'mac_address' => 'required',
            'monitor' => 'required',
            'hdd' => 'required',
            'ssd' => 'required',
            'spesifikasi' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'gb_asset' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        $input = $request->all();

        if ($image = $request->file('image')) {
            $destinationPath = 'image/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['image'] = "$profileImage";
        }

        if ($image = $request->file('gb_asset')) {
            $destinationPath = 'image/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['gb_asset'] = "$profileImage";
        }

        
        Product::create($input);

        // Product::create($request->all());
           
            return redirect()->route('products.index')->with('success','Product created successfully.');     
    }
     

    public function show(Product $product)
    {
        $divisi = Divisi::all();
        return view('products.show',compact('product','divisi'));
    } 
     

    public function edit(Product $product)
    {
        $divisi = Divisi::all();
        // return view('products.edit',compact('product'));
        return view('products.newedit',compact('product','divisi'));
    }
    

    public function update(Request $request, Product $product)
    {
        $request->validate([
            'name' => 'required',
            'fullname' => 'required',
            'divisi_id' => 'required',
            'jabatan' => 'required',
            'pengguna' => 'required',
            'asset_condition' => 'required',
            'printer' => 'required',
            'sn' => 'required',
            'os' => 'required',
            'ip' => 'required',
            'mac_address' => 'required',
            'monitor' => 'required',
            'hdd' => 'required',
            'ssd' => 'required',
            'spesifikasi' => 'required',
        ]);
        

        $input = $request->all();
  
        if ($image = $request->file('image')) {
            $destinationPath = 'image/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['image'] = "$profileImage";
        }elseif($image = $request->file('gb_asset')){
            $destinationPath = 'image/';
            $profileImage = date('YmdHis') . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $profileImage);
            $input['gb_asset'] = "$profileImage";
        }else{
            unset($input['image']);
        }

        $product->update($input);
    
        return redirect()->route('products.index')
                        ->with('success','Data updated successfully');
    }
    
    public function destroy(Product $product)
    {
        $product->delete();
    
        return redirect()->route('products.index')
                        ->with('success','Data deleted successfully');
    }
    public function cari(Request $request){
        $cari = $request->cari;
 
    		// mengambil data dari table pegawai sesuai pencarian data
		$product = DB::table('products')
		->where('name','like',"%".$cari."%")
		->paginate();
 
    		// mengirim data pegawai ke view index
		return view('index',['product' => $product]);   
    }
    public function export(Product $product) 
    {
        return Excel::download(new ProductExport, 'Asset_IT_Pelindo.xlsx');
    }
    
}