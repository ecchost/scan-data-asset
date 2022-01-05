<?php
  
namespace App\Http\Controllers;
   
use App\Models\Product;
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
     
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        // return view('products.create');
        return view('products.newcreate');
    }
    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'fullname' => 'required',
            'jenis_asset' => 'required',
            'nilai_asset' => 'required',
            'first_condition' => 'required',
            'last_condition' => 'required',
            'keterangan_tambahan' => 'required',
            'divisi' => 'required',
            // 'area_a' => 'required',
            // 'area_b' => 'required',
            // 'area_c' => 'required',
            // 'area_d' => 'required',
            // 'area_e' => 'required',
            // 'area_f' => 'required',
            // 'area_g' => 'required',
            'btpakai' => 'required',
            // 'no_id' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'gb_asset' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'exp_date' => 'required|date',
            // 'card_status' => 'required',
            // 'dosis_satu_cov' => 'required',
            // 'dosis_dua_cov' => 'required',
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
     
    /**
     * Display the specified resource.*/
    public function show(Product $product)
    {
        return view('products.show',compact('product'));
    } 
     
    /**
     * Show the form for editing the specified resource.*/
    public function edit(Product $product)
    {
        // return view('products.edit',compact('product'));
        return view('products.newedit',compact('product'));
    }
    
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {
        $request->validate([
            'name' => 'required',
            'fullname' => 'required',
            'jenis_asset' => 'required',
            'nilai_asset' => 'required',
            'first_condition' => 'required',
            'last_condition' => 'required',
            'keterangan_tambahan' => 'required',
            'divisi' => 'required',
            
            // 'area_a' => 'required',
            // 'area_b' => 'required',
            // 'area_c' => 'required',
            // 'area_d' => 'required',
            // 'area_e' => 'required',
            // 'area_f' => 'required',
            // 'area_g' => 'required',
            'btpakai' => 'required',
            // 'no_id' => 'required',
            'exp_date' => 'required',
            // 'card_status' => 'required',
            // 'dosis_satu_cov' => 'required',
            // 'dosis_dua_cov' => 'required',
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
    
    /**
     * Remove the specified resource from storage.*/
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