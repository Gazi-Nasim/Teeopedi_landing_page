
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
                    <div class="float-left">
                        <h2 class="mt-2">Landing Page for {{$product->title}}</h2>
                    </div>
                </div>
                <div class="card-body">
                    @if($product->landing_page=='no')
                    <a href="{{route('landing.activate',$product->id)}}" class="btn btn-sm btn-warning">Activate Landing page</a>
                    @else
                    <a href="{{route('landing.index',$product->id)}}" class="btn btn-sm btn-info">Header and Images</a>
                    <a href="{{route('landing.advantage',$product->id)}}" class="btn btn-sm btn-success">Advantages of the product</a>
                    <a href="{{route('landing.policy',$product->id)}}" class="btn btn-sm btn-warning">Policy</a>
                    <a href="{{route('landing.bullets',$product->id)}}" class="btn btn-sm btn-primary">Bullet Points</a>
                    <a href="{{route('landing.whychoose',$product->id)}}" class="btn btn-sm btn-danger">Why choose the product</a>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @if($product->landing_page=='yes')
    <div class="row">
        <div class="col-lg-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <div class="float-left">
                        <h2 class="mt-2">Headers and Images</h2>
                    </div>
                </div>
                <div class="card-body">
                    <form action="{{route('landing.header_update',$product->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-row">
                            <div class="col-6 mb-3">
                                <label for="heading_one"> First Headline <span class="required-icon">*</span></label>
                                <textarea name="heading_one" class="form-control" id="heading_one" autofocus="" maxlength="120" cols="30" rows="2" required>{{ ( (isset($data->heading_one))) ? $data->heading_one : (old('heading_one') ?? '') }}</textarea>
                                @error('heading_one')
                                <span style="color: red">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="col-6 mb-3">
                                <label for="heading_second"> Second Headline <span class="required-icon">*</span></label>
                                <textarea name="heading_second" class="form-control" id="heading_second" autofocus="" maxlength="100" cols="30" rows="2" required value="">{{ ( (isset($data->heading_second))) ? $data->heading_second : (old('heading_second') ?? '') }}</textarea>
                                @error('heading_second')
                                <span style="color: red">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="col-6 mb-3">
                                <label for="heading_third"> Third Headline <span class="required-icon">*</span></label>
                                <textarea name="heading_third" class="form-control" id="heading_third" autofocus="" maxlength="100" cols="30" rows="2" required value="">{{ ( (isset($data->heading_third))) ? $data->heading_third : (old('heading_third') ?? '') }}</textarea>
                                @error('heading_third')
                                <span style="color: red">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="col-6 mb-3">
                                <label for="heading_fourth"> Forth Headline <span class="required-icon">*</span></label>
                                <textarea name="heading_fourth" class="form-control" id="heading_fourth" autofocus="" maxlength="100" cols="30" rows="2" required value="">{{ ( (isset($data->heading_fourth))) ? $data->heading_fourth : (old('heading_fourth') ?? '') }}</textarea>
                                @error('heading_fourth')
                                <span style="color: red">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="col-6 mb-3">
                                <label for="heading_fifth"> Fifth Headline <span class="required-icon">*</span></label>
                                <textarea name="heading_fifth" class="form-control" id="heading_fifth" autofocus="" maxlength="100" cols="30" rows="2" required value="">{{ ( (isset($data->heading_fifth))) ? $data->heading_fifth : (old('heading_fifth') ?? '') }}</textarea>
                                @error('heading_fifth')
                                <span style="color: red">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="col-6 mb-3">
                                <label for="picture_one"> First Picture <span class="required-icon">*</span></label>
                                <input type="file" autofocus="" class="form-control" name="picture_one" id="picture_one" placeholder="Enter tag name" value="" maxlength="100" >
                                <span> @if(isset($data->picture_one)) <img style="height:30px; width: 50px; " src="{{asset('images/main_banner/'.$data->picture_one)}}" alt="Picture"> @endif</span>
                            </div>
            
            
                            <div class="col-6 mb-3">
                                <label for="picture_second"> Second Picture <span class="required-icon">*</span></label>
                                <input type="file" autofocus="" class="form-control" name="picture_second" id="picture_second" placeholder="Enter tag name" value="" maxlength="100" >
                                <span> @if(isset($data->picture_second)) <img style="height:30px; width: 50px; " src="{{asset('images/main_banner/'.$data->picture_second)}}" alt="Picture"> @endif</span>
                            </div>
            
                            <div class="col-6 mb-3">
                                <label for="picture_third"> Third Picture <span class="required-icon">*</span></label>
                                <input type="file" autofocus="" class="form-control" name="picture_third" id="picture_third" placeholder="Enter tag name" value="" maxlength="100">
                                <span> @if(isset($data->picture_third)) <img style="height:30px; width: 50px; " src="{{asset('images/main_banner/'.$data->picture_third)}}" alt="Picture"> @endif</span>
                            </div>
            
                        </div>
                        <button class="mb-1 btn cus-btn btn-primary align-right" type="submit">Update</button>
            
                    </form>
                </div>
            </div>
        </div>
    </div>
    @endif
</div>
@endsection