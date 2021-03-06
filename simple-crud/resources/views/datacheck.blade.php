

<br>
<br>
<div class="row">
    <br>
    <br>
    <div class="col-lg-12 margin-tb">
        <div class="pull-left">
            <h2>Data RFID Card</h2>
        </div>
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('datacheck.index') }}"> Refresh </a>
        </div>
    </div>
</div>
<div class="mx-auto">
    <div class="">
        <form action="{{ route('datacheck.index') }}" method="GET" role="search">
            <div class="input-group">
                <input type="text" class="form-control mr-2" name="term" placeholder="Search Number ISPS/RFID or Name" id="term">
                <a href="{{ route('datacheck.index') }}" class=" mt-1">
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
        <th>No</th>
        <th>RFID</th>
        <th>Full Name</th>
        <th>A</th>
        <th>B</th>
        <th>C</th>
        <th>D</th>
        <th>E</th>
        <th>F</th>
        <th>Instansion</th>
        <th>ID Number</th>
        <th>EXP Date</th>
        <th>Image</th>
        <th width="280px">Action</th>
        <th>Status</th>
    </tr>
    @foreach ($products as $product)
    <tr>
        <td>{{ ++$i }}</td>
        <td>{{ $product->name }}</td>
        <td>{{ $product->fullname }}</td>
        <td>{{ $product->area_a }}</td>
        <td>{{ $product->area_b }}</td>
        <td>{{ $product->area_c }}</td>
        <td>{{ $product->area_d }}</td>
        <td>{{ $product->area_e }}</td>
        <td>{{ $product->area_f }}</td>
        <td>{{ $product->instansi }}</td>
        <td>{{ $product->no_id }}</td>
        <td>{{ $product->exp_date }}</td>
        <td><img src="/image/{{ $product->image }}" width="100px"></td>
        <td align="center">
            <form action="{{ route('products.destroy',$product->id) }}" method="POST">
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
        <td>
            @if ($product->card_status == "SUDAH AMBIL")
            <a class="btn btn-success">{{$product->card_status}}</a>
            @else ($product->card_status == "BELUM AMBIL")
            <a class="btn btn-warning">{{$product->card_status}}</a>
            @endif
        </td>
    </tr>
    @endforeach
</table>

{!! $products->links() !!}