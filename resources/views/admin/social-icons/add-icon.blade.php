@extends('admin.layouts.master')

@section('content')
<div class="content-wrapper">
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Add Icon</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('store-social-icon')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control @error('title') is-invalid @enderror" placeholder="Enter title" value="{{old('title')}}" maxlength="60" name="title" required>
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
                                <input type="url" autofocus class="form-control @error('link') is-invalid @enderror" placeholder="Enter link" value="{{old('link')}}" maxlength="5000" name="link">
                                @error('link')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="featured_image">Image <span class="required-icon">*</span></label>
                                <input accept= "image/*" type="file" class="form-control-file image" id="image" name="image" required>
                                @error('image')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Add</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection