@extends('admin.layouts.master')

@section('content')
<div class="content-wrapper">
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Edit Page</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('page.update',[$page->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control @error('title') is-invalid @enderror" placeholder="Enter title" value="{{ $page->title  ?? old('title')}}" required name="title">
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="short_description">Short Description</label>
                                <textarea class="form-control @error('short_description') is-invalid @enderror" name="short_description" rows="3" id="short_description" placeholder="Enter short description" maxlength="1000">{{$page->short_desc  ??  old('short_description')}}</textarea>
                                @error('short_description')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="description">Description</label>
                                <textarea class="form-control @error('description') is-invalid @enderror" name="description" rows="6" id="description" placeholder="Enter blog description" maxlength="8000">{{ $page->description  ??  old('description')}}</textarea>
                                @error('description')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="featured_img">Featured Image</label><br>
                                @if($page->image)
                                    <img src="{{asset('uploads/pages/images/'.$page->image)}}" title="{{$page->title}}" alt="{{$page->image}}" width="80"> 
                                @endif
                                <input accept= "image/*" type="file" class="form-control-file featured_image mt-4" id="featured_image" name="featured_image">
                                @error('featured_image')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection