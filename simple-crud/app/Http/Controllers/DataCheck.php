<?php

namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;

class DataCheck extends Controller
{
    public function index(Request $request)
    {
        // $products = Product::latest()->paginate(5);

        $products = Product::where([
            ['name', '!=', Null],
            [function ($query) use ($request){
                if(($term = $request->term)) {
                    $query->orWhere('name', 'LIKE', '%'. $term . '%')->orWhere('fullname', 'LIKE', '%'. $term . '%')->orWhere('instansi', 'LIKE', '%'. $term . '%')->get();
                }
            }]
        ])->orderBy("id", "desc")->paginate(15);
    
        return view('datacheck',compact('products'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }
}
