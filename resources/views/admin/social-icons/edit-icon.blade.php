@extends('admin.layouts.master')

@section('content')
<div class="content-wrapper">
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Update Icon</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('update-social-icon',[$icon->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control @error('title') is-invalid @enderror" placeholder="Enter title" value="{{ $icon->title  ?? old('title')}}" required name="title">
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="link">Link</label>
                                <input type="url" autofocus class="form-control @error('link') is-invalid @enderror" placeholder="Enter link" value="{{$icon->link  ?? old('link')}}" maxlength="5000" name="link">
                                @error('link')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="image">Image</label><br>
                                @if($icon->image)
                                    <img src="{{asset('uploads/icons/'.$icon->image)}}" title="{{$icon->title}}" alt="{{$icon->image}}" width="80">
                                @endif
                                <input accept= "image/*" type="file" class="form-control-file image mt-4" id="image" name="image">
                                @error('image')
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