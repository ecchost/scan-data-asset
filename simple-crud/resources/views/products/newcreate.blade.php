@extends('products.layout')

@section('content')

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
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
        <div class="card h-100 pull-right">
            <div class="card-body">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <h6 class="mb-2 text-primary">ASSET DETAILS</h6>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="form-group">
                                <label for="divisi_id">Divisi</label>
                                <select name="divisi_id" class="form-control custom-select">
                                  <option selected disabled>Pilih Divisi</option>
                                  @foreach ($divisi as $item )
                                  <option value="{{ $item->id }}" {{ old('divisi_id') == $item->id ? 'selected' : null }}>{{ $item->nama_divisi }}</option>
                                  @endforeach
                                </select>
                              </div>
                            <div class="form-group">
                                <label>JABATAN :</label>
                                <input type="text" class="form-control" name="jabatan" placeholder="Enter Jabatan" required>
                            </div>
                            <div class="form-group">
                                <label for="fullname">COMPUTER TYPE :</label>
                                <input type="text" class="form-control" name="fullname" placeholder="Enter Kategori Asset" required>
                            </div>
                            <div class="form-group">
                                <label  for="asset_condition">KONDISI ASSET :</label>
                                <input type="text" class="form-control"  id="asset_condition" name="asset_condition" placeholder="Enter Kondisi Saat Ini" required>
                            </div>
                            <div class="form-group">
                                <label for="name">RFID NUMBER :</label>
                                <input type="text" class="form-control" value="{{ route('products.index') }}/" name="name" id="name" placeholder="Enter RFID Number" required>
                            </div>
                            <div class="form-group">
                                <strong>Image User : </strong>
                                <input type="file" class="form-control" name="image" placeholder="Input Image" required>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="form-group">
                                <label  for="pengguna">USER :</label>
                                <input type="text" class="form-control"  id="pengguna" name="pengguna" placeholder="Enter Pengguna Saat Ini" required>
                            </div>
                            <div class="form-group">
                                <label  for="printer">PRINTER :</label>
                                <input type="text" class="form-control"  id="printer" name="printer" placeholder="Enter Printer Saat Ini" required>
                            </div><div class="form-group">
                                <label  for="printer">SN :</label>
                                <input type="text" class="form-control"  id="sn" name="sn" placeholder="Enter SN Saat Ini" required>
                            </div>
                            <div class="form-group">
                                <label  for="spesifikasi">SPESIFIKASI :</label>
                                <input type="text" class="form-control"  id="spesifikasi" name="spesifikasi" placeholder="Enter Spesifikasi Saat Ini" required>
                            </div>
                            <div class="form-group">
                                <label  for="os">OS :</label>
                                <input type="text" class="form-control"  id="os" name="os" placeholder="Enter OS Saat Ini" required>
                            </div>
                            <div class="form-group">
                                <strong>Image Asset : </strong>
                                <input type="file" class="form-control" name="gb_asset" placeholder="Input Gambar Asset" required>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="form-group">
                                <label  for="ip">IP :</label>
                                <input type="text" class="form-control"  id="ip" name="ip" placeholder="Enter IP Saat Ini" required>
                            </div>
                            <div class="form-group">
                                <label  for="mac_address">MAC ADDRESS :</label>
                                <input type="text" class="form-control"  id="mac_address" name="mac_address" placeholder="Enter Mac Address Saat Ini" required>
                            </div><div class="form-group">
                                <label  for="monitor">MONITOR :</label>
                                <input type="text" class="form-control"  id="monitor" name="monitor" placeholder="Enter Monitor Saat Ini" required>
                            </div>
                            <div class="form-group">
                                <label  for="hdd">HDD :</label>
                                <input type="text" class="form-control"  id="hdd" name="hdd" placeholder="Enter HDD Saat Ini" required>
                            </div>
                            <div class="form-group">
                                <label  for="ssd">SSD :</label>
                                <input type="text" class="form-control"  id="ssd" name="ssd" placeholder="Enter SDD Saat Ini" required>
                            </div>
                            <button type="submit" class="btn btn-success">Create</button>
                        </div>
                    </div>
                    {{-- <img src="/image/dekorasi.png" style=" height:20% weight:20% margin-top: -500px" alt="Maxwell Admin"> --}}
                </div>
            </div>
        </div>
    </div>
</form>
@endsection