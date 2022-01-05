@extends('products.layout')

@section('content')
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/css/create-admin.css">
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2> Show Data</h2><br>
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('products.index') }}"> Back</a>
        </div>
    </div>
</div>


<div class="container">
    <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
        <div class="form-group">
            <img src="/image/{{ $product->image }}" width="200px" alt="Maxwell Admin">
            <br>
            <div class="mb-3">{!! DNS2D::getBarcodeSVG($product->name, 'QRCODE',7,7) !!}</div>
        </div>
    </div>
    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="row gutters">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <h6 class="mb-2 text-primary">ASSET DETAILS</h6>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                    <div class="form-group">
                        <label>KATEGORI ASSET :</label>
                        <h6>{{ $product->fullname }}</h6>
                    </div>
                    <div class="form-group">
                        <label>NILAI ASSET :</label>
                        <h6>Rp {{ $product->nilai_asset }}</h6>
                    </div>
                    <div class="form-group">
                        <label>KONDISI AWAL ASSET :</label>
                        <h6>{{ $product->first_condition }}</h6>
                    </div>
                    <div class="form-group">
                        <label>KONDISI SAAT INI :</label>
                        <h6>{{ $product->last_condition }}</h6>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-6">  
                    <div class="form-group">
                        <label>JENIS ASSET :</label>
                        <h6>{{ $product->jenis_asset }}</h6>
                    </div>
                    <div class="form-group">
                        <label>LOKASI ASSET :</label>
                        <h6>{{ $product->divisi }}</h6>
                    </div>
                    <div class="form-group">
                        <label>TANGGAL TERIMA ASSET :</label>
                        <h6>{{ $product->exp_date }}</h6>
                    </div>
                    <div class="form-group">
                        <label>BATAS PAKAI :</label>
                        <h6>{{ $product->btpakai }}</h6>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-6" style="margin-bottom: -50px">
                    <div class="form-group">
                        <h6 class="my-div2 text-white">Aktif</h6>
                        <img src="/image/{{ $product->gb_asset }}" width="200px" alt="Gambar Asset" title="{{ $product->name }}">
                        <h6 class="my-div text-white">{{ $product->fullname }}</h6>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-6">
                    <div class="form-group">
                        <label>RFID NUMBER :</label>
                        <h6>{{ $product->name }}</h6>
                    </div>
                    <div class="form-group">
                        <label>KETERANGAN TAMBAHAN :</label>
                        {!! $product->keterangan_tambahan !!}
                    </div>
                </div>
            </div>
        </div>
        {{-- <img src="/image/dekorasi.png" width="2000px" height="3000px" style="margin-bottom: -1000px" alt="Maxwell Admin"> --}}
    </div>    

</div>
@endsection