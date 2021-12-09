@extends('dashboard.layout')

@section('content')

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/strap-dashboard.css">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<div class="container" align="center">
    <a href="{{ route('welcome') }}">
        <img src="https://upload.wikimedia.org/wikipedia/id/0/0a/Pelindo_IV.svg" width="220">
    </a><br><br>
    <h3>ACCESS CARD PELABUHAN SEMAYANG</h3>
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
            <div align="center">
                <select class="dropdown" name="area_id" id="area_id" required>
                    <option value="area_a">A. DERMAGA </option>
                    <option value="area_b">B. TERMINAL PENUMPANG </option>
                    <option value="area_c">C. GUDANG </option>
                    <option value="area_d">D. LAPANGAN PENUMPUKAN</option>
                    <option value="area_e">E. AREA STUFFING/STRIPPING</option>
                    <option value="area_f">F. AREA STUFFING/STRIPPING (TUKUNG)</option>
                    <option value="area_f">G. AREA KANTOR</option>
                </select>
            </div><br>

            <div class="input-group">
                <input type="text" autocomplete="off" class="form-control mr-2" name="term" id="term" placeholder="Search Number of ISPS/RFID or Name" id="term" autofocus>
                <a href="{{ route('scan.index') }}" class=" mt-1">
                </a>

                <a type="button" type="submit" class="btn btn-primary">Search</a>
                </a>
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

<!-- <table class="table table-bordered"> -->
<!-- <tr> -->
<!-- <th>No</th> -->
<!-- <th>Image</th>
            <th>Description</th>
            <th>Details</th> -->
<!-- </tr> -->
<br>
@foreach ($products as $product)
<!-- <tr>
            <td>{{ ++$i }}</td>
            <td><img src="/image/{{ $product->image }}" width="400px"></td>
            <td>{{ $product->name }}</td>
            <td>
                <p>{{ $product->detail }}</p>
            </td>
            <td>{{ $product->detail }}</td>
        </tr> -->

<div class="container">
    <div class="main-body">
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex flex-column align-items-center text-center">
                            <img src="/image/{{ $product->image }}" alt="Admin" class="p-1 bg-light" width="310">
                            <div class="mt-3">
                                <h4>{{ $product->fullname }}</h4>
                                <p class="text-muted font-size-sm">{{ $product->instansi }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">

                <div class="card">

                    <div class="card-body">
                        <a type="button" class="btn btn-primary" href="http://scan-pelindo.xyz/scan?term=0110"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z" />
                                <path d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z" />
                            </svg></a>

                        <h5 align="center">Profile Information</h5>
                        <h5 align="center">Access Card</h5><br>

                        <h5 align="center"></h5>
                        <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Full Name</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="{{ $product->fullname }}" readonly>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">RFID Number</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="{{ $product->name }}" readonly>
                                <div class="mb-3">{!! DNS2D::getBarcodeHTML($product->name, 'QRCODE') !!}</div>
                            </div>
                        </div>
                        <!-- <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Area</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="{{$product->area_a}},{{ $product->area_b }},{{ $product->area_c }},{{ $product->area_d }},{{ $product->area_e }},{{ $product->area_f }}" readonly>
                            </div>
                        </div> -->
                        <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Instansi</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="{{ $product->instansi }}" readonly>
                            </div>
                        </div>
                        <!-- <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">ID Number</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="{{ $product->no_id }}" readonly>
                            </div>
                        </div> -->
                        <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Date Created</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="{{ $product->created_at }}" readonly>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Expired Date</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input type="text" class="form-control" value="{{ date('d-M-y', strtotime($product->exp_date)) }} " readonly>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Vaksin Cov-19 Number</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                            @if ($product->no_vaksin_cov != "")
                                <input type="text" class="form-control" style="background-color:green; color:white" value="{{ $product->no_vaksin_cov }}" readonly>
                            @else ($product->no_vaksin_cov == "")
                                <input type="text" class="form-control" style="background-color:yellow;" value="BELUM VAKSIN" readonly>
                            @endif
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-sm-3">
                                <h6 class="mb-0">Dosis Vaksin Cov-19</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                            @if ($product->dosis_satu_cov == "0")
                                <input type="text" class="form-control" style="background-color:yellow; color:#bbb"  value="{{ $product->dosis_satu_cov }}, {{ $product->dosis_dua_cov }} " readonly>
                            @else ($product->dosis_satu_cov == "Sudah Dosis 1")
                                <input type="text" class="form-control" style="background-color:green; color:white"  value="{{ $product->dosis_satu_cov }}, {{ $product->dosis_dua_cov }} " readonly>
                            @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="justify-content-center">

            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <p align="center">
                    <a type="button" type="submit" class="btn btn-danger" href="{{ route('logout') }}" onclick="event.preventDefault();
                        this.closest('form').submit();">
                        {{ __('Log Out') }}
                    </a>
                </p>
            </form>

        </div>

    </div>
</div>



@endforeach

<!-- </table> -->

<!-- {!! $products->links() !!} -->

@endsection