@extends('admin.layouts.master')
@section('content')
<div class="content-wrapper">
  @if(Session::has('success'))
    <div class="alert alert-dismissible fade show alert-success p-3" role="alert">
      <p class="text-white mt-s"><i class="fas fa-check-circle"></i> {{Session::get('success')}}</p>
      <button type="button" class="close p-3" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">×</span>
      </button>
    </div>
  @endif
    @if(!empty($settings))
    <script>
        window.location.href="{{route('admin.dashboard')}}";
    </script>
    @endif
    <div class="row">
        <div class="col-lg-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Create General Settings</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('general-settings.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="site_title">Site Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control" name="site_title" id="site_title" placeholder="Enter site title" value="{{old('site_title')}}" maxlength="100" required>
                                @error('site_title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="hash_tag">Hash tag</label>
                                <input type="text" class="form-control" name="hash_tag" id="hash_tag" placeholder="Enter hash tag" value="{{old('hash_tag')}}" maxlength="200">
                                @error('hash_tag')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>

                            <div class="col-md-12 mb-3">
                                <label for="hash_slogan">Hash Slogan</label>
                                <input type="text" class="form-control" name="hash_slogan" id="hash_slogan" placeholder="Enter hash slogan" value="{{old('hash_slogan')}}" maxlength="200">
                                @error('hash_slogan')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="site_description">Site Description</label>
                                <textarea class="form-control" name="site_description" id="site_description" placeholder="Enter site description" maxlength="1000">{{old('site_description')}}</textarea>
                                @error('site_description')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="about_us_text">About Us</label>
                                <textarea class="form-control" name="about_us_text" id="about_us_text" placeholder="Enter about us text" maxlength="1000">{{old('about_us_text')}}</textarea>
                                @error('about_us_text')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="home_promo_video">Home Promo Video ID</label>
                                <input type="text" class="form-control" name="home_promo_video" id="home_promo_video" placeholder="Enter video id" maxlength="255" value="{{old('home_promo_video')}}"/>
                                @error('home_promo_video')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="address">Address</label>
                                <textarea class="form-control" name="address" id="address" placeholder="Enter address" maxlength="1000">{{old('address')}}</textarea>
                                @error('address')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="email">email</label>
                                <input type="text" class="form-control" name="email" id="email" placeholder="Enter email address" maxlength="100" value="{{old('email')}}">
                                @error('email')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                             <div class="col-md-6 mb-3">
                                <label for="phone">phone</label>
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter phone no" maxlength="15" value="{{old('phone')}}">
                                @error('phone')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="notice">Notice</label>
                                <textarea class="form-control" name="notice" id="notice" placeholder="Enter notice" maxlength="1000">{{old('notice')}}</textarea>
                                @error('notice')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="logo">Logo <span class="required-icon">*</span></label>
                                <input accept= "image/*" type="file" autofocus class="form-control-file" id="logo" name="logo">
                                @error('logo')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="fb_logo">Facebook Logo (Must be 700 x 365)</label>
                                <input type="file" autofocus class="form-control-file" id="fb_logo" name="fb_logo">
                                @error('fb_logo')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="favicon">Favicon <span class="required-icon">*</span></label>
                                <input type="file" autofocus class="form-control-file" id="favicon" name="favicon" required>
                                @error('favicon')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="about_us_image">About Us Image </label>
                                <input type="file" autofocus class="form-control-file" id="about_us_image" name="about_us_image">
                                @error('about_us_image')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Create</button>
                        {{-- <a href="/admin/general-settings" class="mb-1 btn btn-sm btn-secondary ml-2"> Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
        
    </div>
</div>
@endsection
