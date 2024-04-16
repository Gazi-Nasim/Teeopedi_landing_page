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
                    <h2>Create Slider</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('slider.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input autofocus type="text" class="form-control" name="title" id="title" placeholder="Enter title" value="{{old('title')}}" maxlength="255" required>
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="slider_description">Description</label>
                                <textarea class="form-control" name="slider_description" id="slider_description" placeholder="Enter description" maxlength="1000">{{old('slider_description')}}</textarea>
                                @error('slider_description')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="slider_type">Slider Type <span class="required-icon">*</span></label>
                                <select type="text" class="form-control" id="slider_type" name="slider_type">
                                    <option value="">Select Slider Type</option>
                                    <option value="1">Desktop</option>
                                    <option value="2">Mobile</option>
                                </select>
                                @error('slider_type')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="slider_img_title">Slider Image Title</label>
                                <input type="text" class="form-control" name="slider_img_title" id="slider_img_title" placeholder="Enter slide image title" value="{{old('slider_img_title')}}" maxlength="255">
                                @error('slider_img_title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="hover_text">Hover Text</label>
                                <input type="text" class="form-control" name="hover_text" id="hover_text" placeholder="Enter hover text" value="{{old('hover_text')}}" maxlength="255">
                                @error('hover_text')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="image">Slider Image <span class="text-light bg-success p-1 rounded">(* Image Dimension For Mobile - 832×670) (* Image Dimension For Desktop - 1920×690)</span></label>
                                <input accept= "image/*" type="file" class="form-control-file dropify" id="image" name="img[]" multiple data-height="90">
                                @error('img')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="status" >Status</label><br>
                                <label class="radio-inline">
                                <input autofocus type="radio" name="status" value="1" checked > Active
                                </label>
                                <label class="radio-inline">
                                <input autofocus type="radio" name="status" value="2"> Inactive
                               </label>
                                @error('status')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Create</button>
                        {{-- <a href="/admin/slider" class="mb-1 btn btn-sm btn-secondary ml-2"> Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection