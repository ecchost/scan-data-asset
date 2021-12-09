@extends('products.layout')

@section('content')

<br>
<br>
<div class="row">
    <br><br>
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h5>Add New Data</h5>
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

<form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <link rel="stylesheet" type="text/css" href="css/create-admin.css">
    <div class="container">
        <div class="row gutters">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mb-2 text-primary">PERSONAL DETAILS</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>FULL NAME</label>
                                    <input type="text" class="form-control" name="fullname" placeholder="Enter full name" required>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>RFID NUMBER :</label>
                                    <input type="text" class="form-control" name="name" placeholder="Enter RFID Number" required>
                                </div>
                            </div>
                            <hr>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>AREA :</label><p class="text-danger">(WAJIB DIISI)</p>
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
                                <div class="form-check">
                                    <input class="form-check-input" type="hidden" name="area_g" id="area_g" value="0">
                                    <input class="form-check-input" type="checkbox" name="area_g" id="area_g" value="1">
                                    <label class="form-check-label" for="area_g">G. AREA KANTOR</label> 
                                </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>INSTANSI</label>
                                    <input type="text" class="form-control" name="instansi" placeholder="Enter Instansi" required>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mt-3 mb-2 text-primary">UNIQUE PROF</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>ID NUMBER</label>
                                    <input type="text" class="form-control" name="no_id" placeholder="Enter ID Number" required>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>EXP DATE</label>
                                    <input type="date" class="form-control" name="exp_date" placeholder="Enter ID Number" required>
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
                        </div>
                        <br><hr>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mt-3 mb-2 text-primary">Vaksin COVID-19</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Vaksin COVID-19 Number</label><p class="text-danger">ISI JIKA SUDAH MELAKUKAN VAKSIN</p>
                                    <input type="text" class="form-control" name="no_vaksin_cov" placeholder="Enter ID Number Vaksin COVID-19">
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
                        </div>
                        <br><hr>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mt-3 mb-2 text-primary">Image</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <input type="file" class="form-control" name="image" placeholder="Input Image" required>
                                </div>
                            </div>
                        </div>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="text-right">
                                    <button type="submit" class="btn btn-primary">Create</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</form>
@endsection