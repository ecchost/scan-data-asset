@extends('products.layout')

@section('content')
<div class="row">
  <div class="col-lg-12 margin-tb">
      <div class="pull-left">
          <h2>Add New Data</h2>
      </div>
      <div class="pull-right">
          <a class="btn btn-primary" href="{{ route('products.index') }}"> Back</a>
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
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <h6 class="mb-2 text-primary">ASSET DETAILS</h6>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="fullname">KATEGORI ASSET :</label>
                                        <input type="text" class="form-control" name="fullname" placeholder="Enter Kategori Asset" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="nilai_asset">NILAI ASSET :</label>
                                        <input type="text" class="form-control" id="nilai_asset" name="nilai_asset" placeholder="Enter Nilai Asset" required>
                                    </div>
                                    <div class="form-group">
                                        <label  for="first_condition">KONDISI AWAL ASSET :</label>
                                        <input type="text" class="form-control"  id="first_condition" name="first_condition" placeholder="Enter Kondisi Awal Asset" required>
                                    </div>
                                    <div class="form-group">
                                        <label  for="last_condition">KONDISI SAAT INI :</label>
                                        <input type="text" class="form-control"  id="last_condition" name="last_condition" placeholder="Enter Kondisi Saat Ini" required>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">  
                                    <div class="form-group">
                                        <label  name="jenis_asset">JENIS ASSET :</label>
                                        <input type="text" class="form-control" id="jenis_asset" name="jenis_asset" placeholder="Enter Jenis Asset" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Divisi :</label>
                                        <input type="text" class="form-control" name="divisi" placeholder="Enter Divisi" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="exp_date">TANGGAL TERIMA ASSET :</label>
                                        <input type="date" class="form-control" id="exp_date" name="exp_date" placeholder="Masukkan Tanggal">
                                    </div>
                                    <div class="form-group">
                                        <label for="btpakai">BATAS PAKAI :</label>
                                        <input type="text" class="form-control" id="btpakai" name="btpakai" placeholder="Enter Batas Pakai Asset" required>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="keterangan_tambahan">KETERANGAN TAMBAHAN :</label>
                                        <input id="keterangan_tambahan" type="hidden" name="keterangan_tambahan">
                                        <trix-editor input="keterangan_tambahan"></trix-editor>
                                    </div>
                                    <div class="form-group">
                                      <label for="name">RFID NUMBER :</label>
                                      <input type="text" class="form-control" value="{{ route('products.index') }}/" name="name" id="name" placeholder="Enter RFID Number" required>
                                  </div>
                                </div>
                            </div>
                            <div class="row gutters">                        
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                    <div class="form-group">
                                        <strong>Image User : </strong>
                                        <input type="file" class="form-control" name="image" placeholder="Input Image" required>
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-4 col-md-4">
                                  <div class="form-group">
                                      <strong>Image Asset : </strong>
                                      <input type="file" class="form-control" name="gb_asset" placeholder="Input Gambar Asset" required>
                                  </div>
                              </div>
                            </div>
                            <div class="col-xs-7 col-sm-7 col-md-7 text-center">
                              <button type="submit" class="btn btn-primary">Create</button>
                            </div>
                            <img src="/image/dekorasi.png" style=" height:20% weight:20% margin-top: -500px" alt="Maxwell Admin">
                        </div>
                    </div>
                </div>
            </div>
        </form>
</div>
@endsection