@extends('dashboard.layout')

@section('content')

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/strap-dashboard.css">

<div class="container" align="center">
    <a href="{{ route('welcome') }}">
        <img src="/image/logo-pelindo.png" width="220">
    </a><br><br>
    <h3>Asset Management Dashboard</h3>
    <!-- <h6>AREA : {{auth()->user()->area_user}} [ Location : {{ auth()->user()->location_user }} ]</h6> -->
</div>



<div class="row">
    <div class="col-lg-12 margin-tb">
        <div>
            <h2 align="center"></h2>
        </div>
    </div>
</div>
<div class="mx-auto">
    <div>
        <form action="{{ route('scan.index') }}" method="GET" role="search">
            <div class="input-group">
                <input type="text" autocomplete="off" class="form-control mr-2" name="term" id="term" placeholder="Search Number of ISPS/RFID or Name" id="term" autofocus>
                <a href="{{ route('scan.index') }}" class=" mt-1"></a>
        </form>
    </div>
</div>
</div>


<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
    $(document).ready(function() {
        readData()
        $("$term").keyup(function() {
            var strcari = $("$term").val();
            if (strcari != "") {
                $("#read").html('<center><p class="text-muted">Menunggu Mencari Data..</p></center>');
                $.ajax({
                    type: "get",
                    url: "{{url('ajax')}}",
                    data: "name=" + strcari,
                    success: function(data) {
                        $("#read").html(data);
                    }
                });
            } else {
                readData()
            }
        });
    });

    function readData() {
        $.get("{{ url('read') }}", {}, function(data, status) {
            $("#read").html(data);
        });
    }
</script>

@if ($message = Session::get('success'))
<div class="alert alert-success">
    <p>{{ $message }}</p>
</div>
@endif

<br>
@foreach ($products as $product)
{{-- Tampilan Baru --}}
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

@endforeach

@endsection