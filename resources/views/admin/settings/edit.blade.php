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
    <div class="row">
        <div class="col-lg-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Update General Settings</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('general-settings.update')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="site_title">Site title <span class="required-icon">*</span></label>
                                <input  type="text" autofocus class="form-control" name="site_title" id="site_title" placeholder="Enter site title" value="{{$settings->site_title ?? old('site_title')}}" maxlength="100" required>
                                @error('site_title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="hash_tag">Hash Tag</label>
                                <input type="text" class="form-control" name="hash_tag" id="hash_tag" placeholder="Enter hash tag" value="{{$settings->hash_tag ?? old('hash_tag')}}" maxlength="200">
                                @error('hash_tag')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="hash_slogan	">Hash slogan</label>
                                <input type="text" class="form-control" name="hash_slogan" id="hash_slogan" placeholder="Enter hash slogan" value="{{$settings->hash_slogan ?? old('hash_slogan')}}" maxlength="200">
                                @error('hash_slogan')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="site_description">Site Description</label>
                                <textarea class="form-control" name="site_description" id="site_description" placeholder="Enter site description" maxlength="1000">{{$settings->site_description ?? old('site_description')}}</textarea>
                                @error('site_description')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="about_us_text">About Us (Home)</label>
                                <textarea class="form-control" name="about_us_text" id="about_us_text" placeholder="Enter about us text" maxlength="1000">{{ $settings->about_us_text ?? old('about_us_text')}}</textarea>
                                @error('about_us_text')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="icon_title_1">About Us (Home) Icon Title 1 </label>
                                <input type="text" class="form-control" name="icon_title_1" id="icon_title_1" placeholder="Enter title" value="{{$settings->about_icon_title_1 ?? old('icon_title_1')}}" maxlength="100">
                                @error('icon_title_1')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="icon_1">About Us (Home) Icon 1</label>
                                <input type="file" autofocus class="form-control-file" id="icon_1" name="icon_1">
                                @error('icon_1')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-4 mb-3">
                                @if($settings->about_icon_1)<img src="{{asset('uploads/settings/'.$settings->about_icon_1)}}" alt="{{$settings->site_title}}" width="80"> @endif
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="icon_title_2">About Us (Home) Icon Title 2</label>
                                <input type="text" class="form-control" name="icon_title_2" id="icon_title_2" placeholder="Enter title" value="{{$settings->about_icon_title_2 ?? old('icon_title_2')}}" maxlength="100">
                                @error('icon_title_2')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="icon_2">About Us (Home) Icon 2</label>
                                <input type="file" autofocus class="form-control-file" id="icon_2" name="icon_2">
                                @error('icon_2')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                             <div class="col-md-4 mb-3">
                                @if($settings->about_icon_2)<img src="{{asset('uploads/settings/'.$settings->about_icon_2)}}" alt="{{$settings->site_title}}" width="80"> @endif
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="icon_title_3">About Us (Home) Icon Title 3</label>
                                <input type="text" class="form-control" name="icon_title_3" id="icon_title_3" placeholder="Enter title" value="{{$settings->about_icon_title_3 ?? old('icon_title_3')}}" maxlength="100">
                                @error('icon_title_3')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="icon_3">About Us (Home) Icon 3</label>
                                <input type="file" autofocus class="form-control-file" id="icon_3" name="icon_3">
                                @error('icon_3')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                             <div class="col-md-4 mb-3">
                                @if($settings->about_icon_3)<img src="{{asset('uploads/settings/'.$settings->about_icon_3)}}" alt="{{$settings->site_title}}" width="80"> @endif
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="home_promo_video_title">Home Promo Video Title</label>
                                <input type="text" class="form-control" name="home_promo_video_title" id="home_promo_video_title" placeholder="Enter video title" maxlength="255" value="{{$settings->home_promo_video_title ?? old('home_promo_video_title')}}"/>
                                @error('home_promo_video_title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="home_promo_video">Home Promo Video ID</label>
                                <input type="text" class="form-control" name="home_promo_video" id="home_promo_video" placeholder="Enter video id" maxlength="255" value="{{$settings->home_promo_video ?? old('home_promo_video')}}"/>
                                @error('home_promo_video')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="address">Address</label>
                                <textarea class="form-control" name="address" id="address" placeholder="Enter address" maxlength="1000">{{ $settings->address ?? old('address')}}</textarea>
                                @error('address')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="email">email</label>
                                <input type="text" class="form-control" name="email" id="email" placeholder="Enter email address" maxlength="100" value="{{$settings->email ?? old('email')}}">
                                @error('email')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                             <div class="col-md-6 mb-3">
                                <label for="phone">phone</label>
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter phone no" maxlength="15" value="{{$settings->phone ?? old('phone')}}">
                                @error('phone')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="notice">Notice</label>
                                <textarea class="form-control" name="notice" id="notice" placeholder="Enter notice" maxlength="1000">{{$settings->notice ?? old('notice')}}</textarea>
                                @error('notice')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="copyright_text">Footer Copyright Text</label>
                                <input type="text" class="form-control" name="copyright_text" id="copyright_text" placeholder="Enter copyright text here" maxlength="255" value="{{$settings->copyright_text ?? old('copyright_text')}}"/>
                                @error('copyright_text')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="logo">Logo <span class="required-icon">*</span> @if($settings->logo)<img src="{{asset('uploads/settings/logo/'.$settings->logo)}}" alt="{{$settings->site_title}}" width="80"> @endif</label>
                                <input accept= "image/*" autofocus type="file" class="form-control-file" id="logo" name="logo">
                                @error('logo')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="fb_logo">Facebook Logo (Must be 700 x 365) @if($settings->fb_logo)<img src="{{asset('uploads/settings/logo/'.$settings->fb_logo)}}" alt="{{$settings->site_title}}" width="80"> @endif</label>
                                <input accept= "image/*" type="file" class="form-control-file" id="fb_logo" name="fb_logo">
                                @error('fb_logo')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="favicon">Favicon <span class="required-icon">*</span> @if($settings->favicon)<img src="{{asset('uploads/settings/favicon/'.$settings->favicon)}}" alt="{{$settings->site_title}}" width="80"> @endif</label>
                                <input type="file" autofocus class="form-control-file" id="favicon" name="favicon">
                                @error('favicon')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                             <div class="col-md-12 mb-3">
                                <label for="about_us_image">About Us Image @if($settings->favicon)<img src="{{asset('uploads/settings/'.$settings->about_us_image)}}" alt="{{$settings->site_title}}" width="80"> @endif</label>
                                <input type="file" autofocus class="form-control-file" id="about_us_image" name="about_us_image">
                                @error('about_us_image')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Update</button>
                        {{-- <a href="/admin/general-settings" class="mb-1 btn btn-sm btn-secondary ml-2"> Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
