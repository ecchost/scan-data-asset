@extends('products.layout')

@section('content')
    <div class="container" background="white">
        <x-jet-authentication-card>
            <x-slot name="logo">
                <img src="/image/logo-pelindo.png" width="400">
            </x-slot>

            <x-jet-validation-errors class="mb-4" />

            <form action="{{ route('user.update', $item->id) }}" method="POST" enctype="multipart/form-data">
                @method('PUT')
                @csrf
                <div class="container" align="center">
                    <h4>Edit</h4>
                </div>
                <br>

                <div>
                    <x-jet-label for="name" value="{{ __('Name') }}" />
                    <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" value="{{ $item->name }}"
                        required autofocus autocomplete="name" />
                </div>

                <div class="mt-4">
                    <x-jet-label for="email" value="{{ __('Email') }}" />
                    <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" value="{{ $item->email }}"
                        required />
                </div>

                <div class="mt-4">
                    <x-jet-label for="password_confirmation" value="{{ __('Access') }}" />
                    <div class="input-group mb-3">
                        <select class="form-select" id="user_level" name="user_level" value="{{ $item->user_level }}">
                            <option value="user">User</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>
                </div>

                <div class="flex items-center justify-end mt-4">
                    <x-jet-button class="ml-4">
                        <a>Edit</a>
                    </x-jet-button>
                </div>

            </form>
        </x-jet-authentication-card>
    </div>
@endsection
