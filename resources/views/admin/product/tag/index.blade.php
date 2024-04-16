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
        <div class="col-lg-5">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Create Product Tag</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('tag.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Title <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control" name="title" id="title" placeholder="Enter tag name" value="{{old('title')}}" maxlength="100" required>
                                @error('title')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Create</button>
                        {{-- <a href="/admin/product-tag" class="mb-1 btn btn-secondary ml-2"> Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-7">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Product Tag List</h2>
                </div>
                <div class="card-body">
                    <table id="example" class="table">
                        <thead>
                            <tr>
                                <th>SL.</th>
                                <th>Tag Name</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($tag as $tg)
                            <tr class="even">
                                <td>{{$no++}}</td>
                                <td>{{$tg->title}}</td>
                                <td class="table-action">
                                    <a href="{{route('tag.edit',[$tg->id])}}">
                                        <span class="mdi mdi-pencil-box text-success h6 f-20"></span>
                                    </a>
                                    <a href="{{route('tag.delete',[$tg->id])}}">
                                        <span class="mdi mdi-delete text-danger h6 f-20" onClick="return confirm('Are you sure you want to Destroy this data permanently?')"></span>
                                    </a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
