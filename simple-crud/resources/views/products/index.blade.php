@extends('products.layout')

@section('content')

<div class="row">
    <div class="pull-left">
        <h2>Data RFID Card</h2>
    </div>
    <br>
    <div class="col-lg-12 margin-tb">
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('products.index') }}"> Refresh </a>
        </div>
        <div class="pull-left">
            <a class="btn btn-success" href="{{ route('products.create') }}"> Create New Data </a>
        </div>
        <div class="pull-right">
            <a class="btn btn-danger" href="/products/export/"> Export Data </a>
        </div>
    </div>
</div>
<br>
<div class="mx-auto">
    <div class="">
        <form action="{{ route('products.index') }}" method="GET" role="search">
            <div class="input-group">
                <input type="text" class="form-control mr-2" name="term" placeholder="Search Barcode" id="term">
                <a href="{{ route('products.index') }}" class=" mt-1">
                </a><br><br>
            </div>
        </form>
    </div>
</div>

@if ($message = Session::get('success'))
<div class="alert alert-success">
    <p>{{ $message }}</p>
</div>
@endif

<table class="table table-bordered">
    <tr>
        <th>No.</th>
        <th>Nama Barang Dan Divisi</th>
        <th>Nama Barang Dan Divisi</th>
        <th width="50px">Barcode</th>
        <th width="50px">Action</th>
    </tr>
    @foreach ($products as $product)
    <tr>
        <td>{{ ++$i }}</td>
        <td>{{ $product->fullname }} <br>{{ $product->divisi }}</td>
        <td>{{ $product->fullname }} <br>{{ $product->divisi }}</td>
        <td>{!! DNS2D::getBarcodeSVG($product->name, 'QRCODE',5,5) !!}</td>
        <td align="center">
            <form action="{{ route('products.destroy',$product->id) }}" method="POST">
                <a class="btn btn-success" href="{{ route('products.show',$product->id) }}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                    <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                    <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                  </svg>
                  </a><br><br>
                <a class="btn btn-primary" href="{{ route('products.edit',$product->id) }}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                  <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z"/>
                    </svg>
                </a><br><br>
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                    <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                </svg>
                </button>
            </form>
        </td>
    </tr>
    @endforeach
</table>

{!! $products->links() !!}

@endsection