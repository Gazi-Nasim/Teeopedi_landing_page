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
                    <h2>Update Special Category</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('special-category.update',[$spec_category->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input autofocus type="text" class="form-control" name="title" id="title" placeholder="Enter category title" value="{{$spec_category->title}}" maxlength="100" required>
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="short_desc">Short Description</label>
                                <textarea class="form-control" name="short_desc" id="short_desc" placeholder="Enter short description" maxlength="1000">{{$spec_category->short_desc}}</textarea>
                                @error('short_desc')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                          

                            <div class="col-md-12 mb-3">
                                <label for="image">Image @if($spec_category->img)<img src="{{asset('uploads/special-category/'.$spec_category->img)}}" alt="{{$spec_category->title}}" width="80"> @endif</label>
                                <input accept= "image/*" type="file" class="form-control-file" id="image" name="img">
                                <input type="hidden" name="hidden_image" value="{{$spec_category->img}}">
                                @error('img')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Update</button>
                        {{-- <a href="/admin/special-category" class="mb-1 btn btn-sm btn-secondary ml-2"> Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
