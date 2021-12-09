@extends('products.layout')
   
@section('content')
<br>
<br>
    <div class="row">
    <br><br>
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Edit Data</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('products.index') }}"> Back</a>
            </div>
        </div>
    </div>
   
    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
  
    <form action="{{ route('products.update',$product->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
   

        <div class="container">
    <div class="row gutters">
        <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                    <div class="account-settings">
                        <div class="user-profile">
                            <div class="user-avatar">
                                <img src="/image/{{ $product->image }}" width="200px" alt="Maxwell Admin">
                                <br><div class="mb-3">{!! DNS2D::getBarcodeHTML($product->name, 'QRCODE') !!}</div>
                            </div><br>
                            <h5 class="user-name">{{ $product->fullname }}</h5>
                            <h6 class="user-email">{{ $product->instansi }}</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mb-2 text-primary">PERSONAL DETAILS</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>FULL NAME</label>
                                    <input type="text" class="form-control" value="{{ $product->fullname }}" name="fullname" placeholder="{{ $product->fullname }}">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>RFID NUMBER :</label>
                                    <input type="text" class="form-control" value="{{ $product->name }}" name="name" placeholder="{{ $product->name }}">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>AREA</label><p class="text-danger">(WAJIB DIISI SESUAI AREA PADA KARTU)</p>
                                <div class="form-check">
                                    <input class="form-check-input" type="hidden" name="area_a" id="area_a" value="0">
                                    <input class="form-check-input" type="checkbox" name="area_a" id="area_a" value="1">
                                    <label class="form-check-label" for="area_a">A. DERMAGA</label>
                                </div>
                                    <div class="form-check">
                                    <input class="form-check-input" type="hidden" name="area_b" id="area_b" value="0">
                                    <input class="form-check-input" type="checkbox" name="area_b" id="area_b" value="1">
                                    <label class="form-check-label" for="area_b">B. TERMINAL PENUMPANG</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="hidden" name="area_c" id="area_c" value="0">
                                    <input class="form-check-input" type="checkbox" name="area_c" id="area_c" value="1">
                                    <label class="form-check-label" for="area_c">C. GUDANG</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="hidden" name="area_d" id="area_d" value="0">
                                    <input class="form-check-input" type="checkbox" name="area_d" id="area_d" value="1">
                                    <label class="form-check-label" for="area_d">D. LAPANGAN PENUMPUKAN</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="hidden" name="area_e" id="area_e" value="0">
                                    <input class="form-check-input" type="checkbox" name="area_e" id="area_e" value="1">
                                    <label class="form-check-label" for="area_e">E. AREA STUFFING/STRIPPING</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="hidden" name="area_f" id="area_f" value="0">
                                    <input class="form-check-input" type="checkbox" name="area_f" id="area_f" value="1">
                                    <label class="form-check-label" for="area_f">F. AREA STUFFING/STRIPPING (TUKUNG)</label> 
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="hidden" name="area_g" id="area_g" value="0">
                                    <input class="form-check-input" type="checkbox" name="area_g" id="area_g" value="1">
                                    <label class="form-check-label" for="area_g">G. AREA KANTOR</label> 
                                </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>INSTANSI</label>
                                    <input type="text" class="form-control" value="{{ $product->instansi }}" name="instansi" placeholder="{{ $product->instansi }}">
                                </div>
                            </div>
                        </div>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mt-3 mb-2 text-primary">UNIQUE PROF</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>ID NUMBER</label>
                                    <input type="text" class="form-control" value="{{ $product->no_id }}" name="no_id" placeholder="{{ $product->no_id }}">
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>EXP DATE</label>
                                    <input type="date" class="form-control" value="{{ $product->exp_date}}"name="exp_date" placeholder="{{$product->exp_date}}">
                                </div>
                            </div>

                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>STATUS</label><p class="text-danger">(WAJIB DIISI)</p>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="card_status" id="card_status" value="BELUM AMBIL">
                                    <label class="form-check-label" for="card_status">BELUM AMBIL</label>
                                </div>
                                    <div class="form-check">
                                    <input class="form-check-input" type="radio" name="card_status" id="card_status" value="SUDAH AMBIL">
                                    <label class="form-check-label" for="card_status">SUDAH AMBIL</label>
                                </div>
                                </div>
                            </div>

                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mt-3 mb-2 text-primary">Vaksin COVID-19</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Vaksin COVID-19 Number</label><p class="text-danger">ISI JIKA SUDAH MELAKUKAN VAKSIN</p>
                                    <input type="text" class="form-control" value="{{ $product->no_vaksin_cov }}" name="no_vaksin_cov" placeholder="{{ $product->no_vaksin_cov}}">
                                </div>
                            </div>

                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>STATUS</label><p class="text-danger">ISI JIKA SUDAH MELAKUKAN VAKSIN</p>
                                    <div class="form-check">
                                        
                                    <input class="form-check-input" type="hidden" name="dosis_satu_cov" id="dosis_satu_cov" value="0">
                                        <input class="form-check-input" type="checkbox" name="dosis_satu_cov" id="dosis_satu_cov" value="Sudah Dosis 1">
                                        <label class="form-check-label" for="dosis_satu_cov">SUDAH VAKSIN DOSIS 1</label> 
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="hidden" name="dosis_dua_cov" id="dosis_dua_cov" value="0">
                                        <input class="form-check-input" type="checkbox" name="dosis_dua_cov" id="dosis_dua_cov" value="Sudah Dosis 2">
                                        <label class="form-check-label" for="dosis_dua_cov">SUDAH VAKSIN DOSIS 2</label> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-xs-6 col-sm-12 col-md-12">
                                <div class="form-group">
                                    <strong>Image : </strong>
                                    <input type="file" name="image" class="form-control" placeholder="image"><br>
                                </div>
                            </div>
                            
                            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
   
    </form>
@endsection
