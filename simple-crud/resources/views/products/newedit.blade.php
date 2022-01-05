@extends('products.layout')

@section('content')
<div class="backgroud">
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Create Data</h2>
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

  <form  action="{{ route('products.update',$product->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
        <div class="container">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                    <img src="/image/{{ $product->image }}" width="200px" alt="Maxwell Admin">
                    <br>
                    <div class="mb-3">{!! DNS2D::getBarcodeSVG($product->name, 'QRCODE',7,7) !!}</div>                    
                </div>
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 pl-28">
                                <h6 class="mb-2 text-primary">ASSET DETAILS</h6>
                            </div>
                            <div class="col-auto">
                                <div class="form-group">
                                    <label>KATEGORI ASSET :</label>
                                    <input type="text" class="form-control" value="{{ $product->fullname }}" name="fullname" placeholder="{{ $product->fullname }}">
                                </div>
                                <div class="form-group">
                                    <label>NILAI ASSET :</label>
                                    <input type="text" class="form-control" value="{{ $product->nilai_asset }}" name="nilai_asset" placeholder="{{ $product->nilai_asset }}">
                                </div>
                                <div class="form-group">
                                    <label>KONDISI AWAL ASSET :</label>
                                    <input type="text" class="form-control" value="{{ $product->first_condition }}" name="first_condition" placeholder="{{ $product->first_condition }}">
                                </div>
                                <div class="form-group">
                                    <label>KONDISI SAAT INI :</label>
                                    <input type="text" class="form-control" value="{{ $product->last_condition }}" name="last_condition" placeholder="{{ $product->last_condition }}">
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-6">  
                                <div class="form-group">
                                    <label>JENIS ASSET :</label>
                                    <input type="text" class="form-control" value="{{ $product->jenis_asset }}" name="jenis_asset" placeholder="{{ $product->jenis_asset }}">
                                </div>
                                <div class="form-group">
                                    <label>Divisi :</label>
                                    <input type="text" class="form-control" value="{{ $product->divisi }}" name="divisi" placeholder="{{ $product->divisi }}">
                                </div>
                                <div class="form-group">
                                    <label>TANGGAL TERIMA ASSET :</label>
                                    <input type="date" class="form-control" value="{{ $product->exp_date}}"name="exp_date" placeholder="{{$product->exp_date}}">
                                </div>
                                <div class="form-group">
                                    <label>BATAS PAKAI :</label>
                                    <input type="text" class="form-control" value="{{ $product->btpakai }}" name="btpakai" placeholder="{{ $product->btpakai }}">
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-6" style="margin-bottom: -50px">
                            <div class="form-group">
                                <h6 class="my-div2 text-white">Aktif</h6>
                                <img src="/image/{{ $product->gb_asset }}" width="200px" alt="Gambar Asset" title="{{ $product->name }}">
                                <h6 class="my-div text-white">{{ $product->fullname }}</h6>
                            </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>KETERANGAN TAMBAHAN :</label>
                                    <input id="keterangan_tambahan" type="hidden" placeholder="{{ $product->keterangan_tambahan }}" value="{{ $product->keterangan_tambahan }}" name="keterangan_tambahan">
                                    <trix-editor input="keterangan_tambahan"></trix-editor>
                                </div>
                                <div class="form-group">
                                <label>RFID NUMBER :</label>
                                <input type="text" class="form-control" value="{{ $product->name }}" name="name" placeholder="{{ $product->name }}">
                            </div>
                            </div>
                        </div>
                        <div class="row gutters">                        
                            <div class="col-xs-4 col-sm-4 col-md-4">
                                <div class="form-group">
                                    <strong>Image User : </strong>
                                    <input type="file" name="image" class="form-control" placeholder="image"><br>
                                </div>
                            </div>
                            <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <strong>Image Asset : </strong>
                                <input type="file" name="gb_asset" class="form-control" placeholder="gb_asset"><br>
                            </div>
                        </div>
                        </div>
                        <div class="col-xs-7 col-sm-7 col-md-7 text-center">
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection