@extends('products.layout')
 
@section('content')

<br>
    <br>
    <div class="row">
    <br>
    <br>
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Data USERS</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('user.index') }}"> Refresh </a>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('user.create') }}"> Create New USERS </a>
            </div>
        </div> 
    </div>
    <div class="mx-auto">
            <div class="">
                <form action="{{ route('user.index') }}" method="GET" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control mr-2" name="term" placeholder="Search USERS" id="term">
                        <a href="{{ route('user.index') }}" class=" mt-1">
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
            <th>Name</th>
            <th>Email</th>
            <th>User Level</th>
            <th>Email Verified</th>
            <th>Action</th>
        </tr>
        @foreach ($users as $users)
        <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $users->name }}</td>
            <td>{{ $users->email }}</td>
            <td>{{ $users->user_level }}</td>
            <td>{{ $users->created_at }}</td>
            <td>
            <a href="{{route('user.edit', $users->id)}}" class="btn btn-info">
                Edit
            </a>
            <form action="{{ route('user.destroy', $users->id) }}" method="POST" class="d-inline">
                @csrf
                @method('delete')
                <button class="btn btn-danger">
                    Delete
                </button>
            </form>
            </td>
        </tr>
        @endforeach
    </table>
  

@endsection