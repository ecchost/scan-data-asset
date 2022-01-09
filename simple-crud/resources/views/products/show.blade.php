@extends('products.layout')

@section('content')
<div class="row">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h3> Show Data</h3><br>
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
            <div class="mb-3">{!! DNS2D::getBarcodeHTML($product->name, 'QRCODE',7,7) !!}</div>
        </div>
    </div>
    <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
        <div class="row gutters">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <h6 class="mb-2 text-primary">ASSET DETAILS</h6>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
                    <div class="form-group">
                        <h6><label>DIVISI :</label></h6>
                        {{ $product->divisi->nama_divisi }}
                    </div>
                    <div class="form-group">
                        <h6><label>JABATAN :</label></h6>
                        {{ $product->jabatan }}
                    </div>
                    <div class="form-group">
                        <h6><label>USER :</label></h6>
                        {{ $product->pengguna }}
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-6">
                    <div class="form-group">
                        <h6><label>COMPUTER TYPE :</label></h6>
                        {{ $product->fullname }}
                    </div>
                    <div class="form-group">
                        <h6><label>KONDISI ASSET :</label></h6>
                        {{ $product->asset_condition }}
                    </div>
                     <div class="form-group">
                        <h6><label>BARCODE LINK :</label></h6>
                        {{ $product->name }}
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-6" style="margin-bottom: -50px">
                    <div class="form-group">
                        <h6 class="my-div2 text-white">{{ $product->asset_condition }}</h6>
                        <img src="/image/{{ $product->gb_asset }}" width="200px" alt="Gambar Asset" title="{{ $product->name }}">
                        <h6 class="my-div text-white">{{ $product->fullname }}</h6>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-6" style="margin-top: -50px">
                    <div class="form-group">
                        <h6><label>KETERANGAN TAMBAHAN :</label></h6>
                        <label style="margin-left: 20px"> SN :</label> {{ $product->sn }} <br>
                        <label style="margin-left: 20px"> OS :</label> {{ $product->os }} <br>
                        <label style="margin-left: 20px"> IP :</label> {{ $product->ip }}
                        <label style="margin-left: 20px"> MAC ADDRESS :</label> {{ $product->mac_address }} <br>
                        <label style="margin-left: 20px"> HDD :</label> {{ $product->hdd }} 
                        <label style="margin-left: 20px"> SSD :</label> {{ $product->ssd }} <br>
                        <label style="margin-left: 20px"> MONITOR :</label> {{ $product->monitor }} <br>
                        <label style="margin-left: 20px"> PRINTER :</label> {{ $product->printer }} <br>
                    </div>
                </div>
            </div>
        </div>
        {{-- <img src="/image/dekorasi.png" width="2000px" height="3000px" style="margin-bottom: -1000px" alt="Maxwell Admin"> --}}
    </div>    

</div>
@endsection