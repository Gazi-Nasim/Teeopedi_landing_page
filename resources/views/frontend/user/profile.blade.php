@extends('frontend.layouts.master')
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
                            <li class="breadcrumb-item active" aria-current="page">Profile</li>
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
                                        <h3>PERSONAL DETAIL</h3>
                                        <form class="theme-form" action="{{route('user.update-profile')}}" method="POST" enctype="multipart/form-data">
                                            @csrf
                                             <div class="upload-img">
                                                <div class="upload__img-wrap"></div>
                                                <div class="upload-file">
                                                    <div class="photo-upload">
                                                        <div class="photo-preview">
                                                            @if(!empty(auth()->user()->avatar))
                                                                <div id="imagePreview"
                                                                    style="background-image: url({{ asset('uploads/users/' . auth()->user()->avatar) }});">
                                                                </div>
                                                            @else
                                                                <div id="imagePreview"
                                                                    style="background-image: url('/assets/images/avtar.jpg');">
                                                                </div>
                                                            @endif
                                                        </div>
                                                        <div class="photo-edit">
                                                            <input type='file' name="avatar" id="imageUpload" accept=".png, .jpg, .jpeg .gif .webp .svg" />
                                                            @if(!empty(auth()->user()->avatar))
                                                                <label for="imageUpload">Change Photo</label>
                                                            @else
                                                                <label for="imageUpload">Upload Photo</label>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-row row">
                                                <div class="col-md-6 mb-4">
                                                   <label for="name" class="form-label">Name <span class="text-danger">*</span></label>
                                                    <input type="text" maxlength="100" name="name" value="{{auth()->user()->name ?? old('name')}}" class="form-control @error('name') is-invalid @enderror">
                                                    @error('name')
                                                        <span class="text-danger" role="alert">
                                                            <small>{{ $message }}</small>
                                                        </span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                   <label for="email" class="form-label">Email <span class="text-danger">*</span></label>
                                                    <input type="email" maxlength="100" name="email" value="{{auth()->user()->email ?? old('email')}}"  class="form-control @error('email') is-invalid @enderror">
                                                    @error('email')
                                                        <span class="text-danger" role="alert">
                                                            <small>{{ $message }}</small>
                                                        </span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="text" class="form-label">Phone number</label>
                                                    <input type="text" maxlength="11" name="phone" value="{{auth()->user()->phone ?? old('phone')}}" class="form-control @error('phone') is-invalid @enderror">
                                                    @error('phone')
                                                        <span class="text-danger" role="alert">
                                                            <small>{{ $message }}</small>
                                                        </span>
                                                    @enderror
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <label for="text" class="form-label">Address</label>
                                                    <input type="text" maxlength="200" name="address" value="{{auth()->user()->address ?? old('address')}}" class="form-control @error('address') is-invalid @enderror">
                                                    @error('address')
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
