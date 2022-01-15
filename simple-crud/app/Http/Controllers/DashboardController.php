<?php

namespace App\Http\Controllers;

use App\Models\Dashboard;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Carbon\Carbon;
use App\Models\HistoryKeeper;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $datetoday = Carbon::now();

        $users_area = auth()->user()->user_area;

        $products = Product::where([
            ['name', '!=', Null],
            [function ($query) use ($request) {
                if (($term = $request->term)) {
                    $query->orWhere('name', 'LIKE', '%' . $term . '%')->orWhere('fullname', 'LIKE', '%' . $term . '%')->get();
                }
            }],
        ])->orderBy("id", "desc")->paginate(1);

        $c = count($products);

        if ($c == 0) {

            $ninuzero = "00100";

            $products = Product::where([
                ['name', '!=', Null],
                [function ($query) use ($ninuzero) {
                    if (($ninuzero = $ninuzero)) {
                        $query->orWhere('name', 'LIKE', '%' . $ninuzero . '%')->orWhere('fullname', 'LIKE', '%' . $term . '%')->get();
                    }
                }]
            ])->orderBy("id", "desc")->paginate(1);

            return view('dashboard.index', compact('products'))
                ->with('i', (request()->input('page', 1) - 1) * 5);
        } else {



            return view('dashboard.index', compact('products'))
                ->with('i', (request()->input('page', 1) - 1) * 5);
        }
    }

    public function read()
    {
        return 'Silahkan melakukan pencarian data';
    }

    public function ajax(Request $request)
    {
        $name = $request->name;
        $results = DB::table('products')->where('name', 'like', '%' . $name . '%')->get();

        $c = count($results);

        if ($c == 0) {
            return '<p class="text-muted">Maaf , Data tidak ditemukan</p>';
        } else {
            return view('dashboard.index')->with([
                'data' => $results
            ]);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Dashboard  $dashboard
     * @return \Illuminate\Http\Response
     */
    public function show(Dashboard $dashboard)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Dashboard  $dashboard
     * @return \Illuminate\Http\Response
     */
    public function edit(Dashboard $dashboard)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Dashboard  $dashboard
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Dashboard $dashboard)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Dashboard  $dashboard
     * @return \Illuminate\Http\Response
     */
    public function destroy(Dashboard $dashboard)
    {
        //
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $output = "";
            $products = DB::table('products')->where('name', 'LIKE', '%' . $request->search . "%")->get();
            if ($products) {
                foreach ($products as $key => $product) {
                    $output .= '<tr>' .
                        '<td>' . $product->id . '</td>' .
                        '<td>' . $product->name . '</td>' .
                        '<td>' . $product->detail . '</td>' .
                        '</tr>';
                }
                return Response($output);
            }
        }
    }
}
