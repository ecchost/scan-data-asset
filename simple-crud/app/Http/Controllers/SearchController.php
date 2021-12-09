<?php

namespace App\Http\Controllers;

use App\Models\Dashboard;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    public function index()
    {
        return view('home');
    }
    
    public function read()
    {
        return "<html align='center'><img src='/image/rfid.png' width='350px'><br><br><h5>Silahkan cari data/Tap Kartu RFID Anda</h5></html>";
    }

    public function ajax(Request $request)
    {
        $name = $request->name;
        $results = DB::table('products')->where('no_id','like','%'.$name.'%')->orWhere('name','like','%'.$name.'%')->get();

        $c = count($results);

        if($c == 0){
            return '<p class="text-muted">Maaf , Data tidak ditemukan</p>';
        } else {
            return view('ajaxpage')->with([
                'data' => $results
            ]);
        }

    }
}