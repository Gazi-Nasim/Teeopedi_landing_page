@extends('frontend.layouts.master')
<?php $title = 'Reset Password'; $meta_img='';?>
@section('content')
<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card">
                <div class="card-header f-18">{{ __('Reset Password') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="col-md-12 mb-3 text-center ">
                            <span id="success" class="p-3 text-white rounded suc-msg successMessage">
                                <i class="fa fa-check-circle"></i> {{Session::get('status')}}
                            </span>
                        </div>
                    @endif
                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf
                        <div class="row mb-3">

                            <div class="col-md-12">
                                <label for="email" class="col-form-label text-md-end f-17">{{ __('Email Address') }}</label>

                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror  @if(Session::has('error')) is-invalid @endif" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                @if(Session::has('error'))
                                    <span class="text-danger f-14" role="alert">
                                        <strong>{{ Session::get('error') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="row mb-0">
                            <div class="col-md-12">
                                <button type="submit" class="btn reset-btn">
                                    {{ __('Send Password Reset Link') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
