@extends('products.layout')

@section('content')
    <div class="backgroud">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Update Data</h2>
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

        <form action="{{ route('products.update', $product->id) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="container">
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                    <h6 class="my-div2 text-white">{{ $product->asset_condition }}</h6>
                    <img src="/image/{{ $product->gb_asset }}" width="200px" alt="Gambar Asset"
                        title="{{ $product->name }}">
                    <h6 class="my-div text-white">{{ $product->fullname }}</h6>
                    <br>
                    <div class="mb-3">{!! DNS2D::getBarcodeSVG($product->name, 'QRCODE', 7, 7) !!}</div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="row gutters">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 pl-28">
                            <h6 class="mb-2 text-primary">ASSET DETAILS</h6>
                        </div>
                        <div class="col-auto">
                            <div class="form-group">
                                <label>DIVISI :</label>
                                <select id="divisi_id" name="divisi_id" class="form-control custom-select">
                                    @foreach ($divisi as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('divisi_id', $product->divisi_id) == $item->id ? 'selected' : null }}>
                                            {{ $item->nama_divisi }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>KATEGORI :</label>
                                <select id="kategori_id" name="kategori_id" class="form-control custom-select">
                                    <option selected disabled>Select one</option>
                                    @foreach ($kategori as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('kategori_id', $product->kategori_id) == $item->id ? 'selected' : null }}>
                                            {{ $item->nama_kategori }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>JABATAN :</label>
                                <input type="text" class="form-control" value="{{ $product->jabatan }}" name="jabatan"
                                    placeholder="{{ $product->jabatan }}">
                            </div>
                            <div class="form-group">
                                <label>COMPUTER TYPE :</label>
                                <input type="text" class="form-control" value="{{ $product->fullname }}"
                                    name="fullname" placeholder="{{ $product->fullname }}">
                            </div>
                            <div class="form-group">
                                <label>KONDISI ASSET :</label>
                                <input type="text" class="form-control" value="{{ $product->asset_condition }}"
                                    name="asset_condition" placeholder="{{ $product->asset_condition }}">
                            </div>
                            <div class="form-group">
                                <label>OS :</label>
                                <input type="text" class="form-control" value="{{ $product->os }}" name="os"
                                    placeholder="{{ $product->os }}">
                            </div>
                            <div class="form-group">
                                <label>IP :</label>
                                <input maxlength="17" type="text" class="form-control" value="{{ $product->ip }}"
                                    name="ip" placeholder="{{ $product->ip }}">
                            </div>
                            <div class="form-group">
                                <label>Mac Address :</label>
                                <input maxlength="20" type="text" class="form-control"
                                    value="{{ $product->mac_address }}" name="mac_address"
                                    placeholder="{{ $product->mac_address }}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <div class="form-group">
                                <label>USER :</label>
                                <input type="text" class="form-control" value="{{ $product->pengguna }}"
                                    name="pengguna" placeholder="{{ $product->pengguna }}">
                            </div>
                            <div class="form-group">
                                <label>Spesifikasi :</label>
                                <input type="text" class="form-control" value="{{ $product->spesifikasi }}"
                                    name="spesifikasi" placeholder="{{ $product->spesifikasi }}">
                            </div>
                            <div class="form-group">
                                <label>PRINTER :</label>
                                <input type="text" class="form-control" value="{{ $product->printer }}" name="printer"
                                    placeholder="{{ $product->printer }}">
                            </div>
                            <div class="form-group">
                                <label>SN :</label>
                                <input type="text" class="form-control" value="{{ $product->sn }}" name="sn"
                                    placeholder="{{ $product->sn }}">
                            </div>
                            <div class="form-group">
                                <label>MONITOR :</label>
                                <input type="text" class="form-control" value="{{ $product->monitor }}" name="monitor"
                                    placeholder="{{ $product->monitor }}">
                            </div>
                            <div class="form-group">
                                <label>HDD :</label>
                                <input maxlength="5" type="text" class="form-control" value="{{ $product->hdd }}"
                                    name="hdd" placeholder="{{ $product->hdd }}">
                            </div>
                            <div class="form-group">
                                <label>SSD :</label>
                                <input maxlength="5" type="text" class="form-control" value="{{ $product->ssd }}"
                                    name="ssd" placeholder="{{ $product->ssd }}">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            {{-- <div class="form-group">
                                    <label>KETERANGAN TAMBAHAN :</label>
                                    <input id="keterangan_tambahan" type="hidden" placeholder="{{ $product->keterangan_tambahan }}" value="{{ $product->keterangan_tambahan }}" name="keterangan_tambahan">
                                    <trix-editor input="keterangan_tambahan"></trix-editor>
                                </div> --}}
                            <div class="form-group">
                                <label>Barcode Link :</label>
                                <input type="text" class="form-control" value="{{ $product->name }}" name="name"
                                    placeholder="{{ $product->name }}">
                            </div>
                        </div>
                    </div>
                    <div class="row gutters">
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="form-group">
                                <strong>Image Asset : </strong>
                                <input type="file" name="gb_asset" class="form-control" placeholder="gb_asset"><br>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-7 col-sm-7 col-md-7 text-center">
                        <button type="submit" class="btn btn-warning">Update</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection
