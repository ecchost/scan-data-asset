@extends('products.layout')

@section('content')
    <div class="container" background="white">
        <x-jet-authentication-card>
            <x-slot name="logo">
                <img src="/image/logo-pelindo.png" width="400">
            </x-slot>

            <x-jet-validation-errors class="mb-4" />

            <form method="POST" action="{{ route('user.store') }}">
                @csrf
                <div class="container" align="center">
                    <h4>Create New User</h4>
                </div>
                <br>

                <div>
                    <x-jet-label for="name" value="{{ __('Name') }}" />
                    <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required
                        autofocus autocomplete="name" />
                </div>

                <div class="mt-4">
                    <x-jet-label for="email" value="{{ __('Email') }}" />
                    <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')"
                        required />
                </div>

                <div class="mt-4">
                    <x-jet-label for="password" value="{{ __('Password') }}" />
                    <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required
                        autocomplete="new-password" />
                </div>

                <div class="mt-4">
                    <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                    <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password"
                        name="password_confirmation" required autocomplete="new-password" />
                </div>

                <div class="mt-4">
                    <x-jet-label for="password_confirmation" value="{{ __('Access') }}" />
                    <div class="input-group mb-3">
                        <select class="form-select" id="user_level" name="user_level">
                            <option value="user">User</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>
                </div>

                <div class="flex items-center justify-end mt-4">
                    <x-jet-button class="ml-4">
                        <a>Create</a>
                    </x-jet-button>
                </div>

            </form>
        </x-jet-authentication-card>
    </div>
@endsection
