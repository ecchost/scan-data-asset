@extends('products.layout')

@section('content')

    <div class="row">
        <div class="pull-left">
            <h2>Data Asset</h2>
        </div>
        <br>
        <div class="col-lg-12 margin-tb">
            <div class="pull-left mr-3">
                <a class="btn btn-app bg-success" href="{{ route('products.create') }}"> <i class="fas fa-plus"></i>
                    Tambah Data </a>
                <a class="btn btn-app bg-danger" href="/products/export/"> <i class="fas fa-file-export"></i> Export Data </a>
                <a class="btn btn-app bg-primary" href="{{ route('products.index') }}"> <i class="fas fa-redo-alt"></i>
                    Refresh </a>
            </div>
            <div class="pull-right">
                <form action="{{ route('products.index') }}" method="GET" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" name="term" placeholder="Search Barcode" id="term">
                        <a href="{{ route('products.index') }}">
                        </a><br><br>
                    </div>
                </form>
            </div>
            <div class="pull-right">
                <select class="prodkat" id="kategori_id" onchange="cariKategori()"
                    class="form-control custom-select">
                    <option value="">Pilih Kategori</option>
                    @foreach ($kategoris as $kategori)
                        <option> {{ $kategori->nama_kategori }}</option>
                    @endforeach
                </select>
            </div>
        </div>
    </div>

    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif

    <table class="table table-sm">
        <caption>List Asset dan Lokasi</caption>
        <thead class="thead-dark">
            <tr>
                <th width="20px">No.</th>
                <th>Nama Barang dan Lokasi</th>
                <th>Barcode</th>
                <th class="text-center" width="300px">Action</th>
            </tr>
        </thead>
        @foreach ($products as $product)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{ $product->fullname }}
                    <br>{{ $product->divisi->nama_divisi }}<br>{{ $product->kategori->nama_kategori }}
                </td>
                <td>{!! DNS2D::getBarcodeSVG($product->name, 'QRCODE', 5, 5) !!}</td>
                <td class="justify-center">
                    <form action="{{ route('products.destroy', $product->id) }}" method="POST">
                        <a class="btn btn-app" href="{{ route('products.show', $product->id) }}">
                            <i class="fas fa-eye"></i> Show
                        </a>
                        <a class="btn btn-app" href="{{ route('products.edit', $product->id) }}">
                            <i class="fas fa-edit"></i> Edit
                        </a>
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-app">
                            <i class="fas fa-trash"></i> Delete
                        </button>
                    </form>
                </td>
            </tr>
        @endforeach
    </table>

    {!! $products->links() !!}

    <script>
        function cariKategori() {
            let kategori_id = $("#kategori_id").val();
            $("#table tbody").children().remove();
            if (kategori_id != '' && kategori_id != null) {
                $.ajax({
                    type: 'get',
                    url: '{{ url('') }}/list_item/ ' + kategori_id,
                    dataType: 'json',
                    success: function(res) {
                        let tampilan_table = '';
                        $.each(res, function(index, data) {
                            console.log(res);
                        })
                        $("#table tbody").append(tampilan_table);
                    }
                })
            }
        }
    </script>

@endsection
