@extends('frontend.layouts.master')
@push('css')
@endpush
@section('content')
<!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>dashboard</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('index')}}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Security</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->


    <!--  dashboard section start -->
    <section class="dashboard-section section-b-space user-dashboard-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    @include('frontend.user.include.dashboard_menu')
                </div>
                <div class="col-lg-9">
                    <div class="faq-content tab-content" id="top-tabContent">
                        <!-- personal deatail section start -->
                        <section class="contact-page register-page">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h3>CHANGE PASSWORD</h3>
                                        <form class="theme-form"  method="POST" action="{{route('user.store-new-password')}}">
                                            @csrf
                                            <div class="form-row row">
                                                <div class="col-md-6 mb-4">
                                                   <label for="current_password" class="form-label">Current Passwrod <span class="text-danger">*</span></label>
                                                    <input type="password" name="current_password" class="form-control @error('current_password') is-invalid @enderror">
                                                    @error('current_password')
                                                        <span class="text-danger" role="alert">
                                                            <small>{{ $message }}</small>
                                                        </span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                   <label for="new_password" class="form-label">New Password <span class="text-danger">*</span></label>
                                                <input type="password" name="new_password" class="form-control @error('new_password') is-invalid @enderror">
                                                @error('new_password')
                                                    <span class="text-danger" role="alert">
                                                        <small>{{ $message }}</small>
                                                    </span>
                                                @enderror
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                   <label for="new_confirm_password" class="form-label">Confirm Password <span class="text-danger">*</span></label>
                                                    <input type="password" name="new_confirm_password" class="form-control @error('new_confirm_password') is-invalid @enderror">
                                                    @error('new_confirm_password')
                                                        <span class="text-danger" role="alert">
                                                            <small>{{ $message }}</small>
                                                        </span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-12">
                                                    <button class="btn btn-sm btn-solid" type="submit">Save changes</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Section ends -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--  dashboard section end -->
@endsection
