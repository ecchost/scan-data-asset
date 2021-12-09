@extends('products.layout')

@section('content')
<link rel="stylesheet" type="text/css" href="css/create-admin.css">
<br>
<br>
<div class="row">
    <br><br>
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
    <div class="row gutters">
        <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                    <div class="account-settings">
                        <div class="user-profile">
                            <div class="user-avatar">
                                <img src="/image/{{ $product->image }}" width="200px" alt="Maxwell Admin">
                            </div><br>
                            <h5 class="user-name">{{ $product->fullname }}</h5>
                            <h6 class="user-email">{{ $product->instansi }}</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mb-2 text-primary">Personal Details</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input type="text" class="form-control" value="{{ $product->fullname }}" name="fullname" placeholder="Enter full name" readonly>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>RFID Number :</label>
                                    <input type="text" class="form-control" value="{{ $product->name }}" name="name" placeholder="Enter RFID Number" readonly>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Area</label>
                                    <input type="text" class="form-control" value="{{ $product->area }}" name="area" placeholder="Enter Area Location" readonly>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Instansi</label>
                                    <input type="text" class="form-control" value="{{ $product->instansi }}" name="instansi" placeholder="Enter Instansi" readonly>
                                </div>
                            </div>
                        </div>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mt-3 mb-2 text-primary">Unique Prof</h6>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>ID Number</label>
                                    <input type="text" class="form-control" value="{{ $product->no_id }}" name="no_id" placeholder="Enter ID Number" readonly>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>Detail</label>
                                    <input type="text" class="form-control" value="{{ $product->detail }}" name="detail" placeholder="Enter Details" readonly>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection