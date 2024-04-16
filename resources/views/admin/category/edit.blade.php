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
                    <h2>Update Category</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('category.update',[$category->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control" name="title" id="title" placeholder="Enter category title" value="{{$category->title}}" maxlength="100" required>
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="short_desc">Short Description</label>
                                <textarea class="form-control" name="short_desc" id="short_desc" placeholder="Enter short description" maxlength="1000">{{$category->short_desc}}</textarea>
                                @error('short_desc')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            @if ($category->parent_id != 0)
                            <div class="col-md-12 mb-3">
                                <label for="parent_id">Parent Category</label>
                                <select type="text" class="form-control" id="parent_id" name="parent_id">
                                    <option value="">Select Parent category</option>
                                    @foreach($parent_cat as $par_cat)
                                    <option value="{{$par_cat->id}}" {{ $par_cat->id == $category->parent_id ? 'selected' : '' }}>{{$par_cat->title}}</option>
                                    @endforeach
                                </select>
                                @error('parent_id')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            @else
                            @endif
                            <div class="col-md-12 mb-3">
                                <label for="status">Status <span class="required-icon">*</span></label>
                                <select required="" class="form-control @error('status') is-invalid @enderror" id="status" name="status">
                                    <option value="">Select</option>
                                    <option value="1" {{ $category->status == 1 ? 'selected' : '' }} >Enable</option>
                                    <option value="2" {{ $category->status == 2 ? 'selected' : '' }} >Disable</option>
                                </select>
                                @error('status')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="image">Image @if($category->img)<img src="{{asset('uploads/category/'.$category->img)}}" alt="{{$category->title}}" width="80"> @endif</label>
                                <input type="file" class="form-control-file" id="image" name="img">
                                <input type="hidden" name="hidden_image" value="{{$category->img}}">
                                @error('img')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Update</button>
                        {{-- <a href="/admin/category" class="mb-1 btn btn-sm btn-secondary ml-2"> Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
