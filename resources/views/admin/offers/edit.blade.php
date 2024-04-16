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
                    <h2>Update Offer</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('offer.update',[$offer->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control" name="title" id="title" placeholder="Enter offer title" value="{{$offer->title}}" maxlength="100" required>
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="short_desc">Short Description</label>
                                <textarea class="form-control" name="short_desc" id="short_desc" placeholder="Enter short description" maxlength="10000">{{$offer->short_desc}}</textarea>
                                @error('short_desc')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="url">Link/Url</label>
                                <input type="url" class="form-control" autofocus name="url" id="url" placeholder="Enter link/url"
                                    value="{{$offer->url}}" maxlength="5000">
                                @error('url')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="image">Image @if($offer->img)<img src="{{asset('uploads/offers/images/'.$offer->img)}}" alt="{{$offer->title}}" width="80"> @endif</label>
                                <input type="file" class="form-control-file" id="image" name="img">
                                <input type="hidden" name="hidden_image" value="{{$offer->img}}">
                                @error('img')
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
