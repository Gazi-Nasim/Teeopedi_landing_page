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
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card card-default">
            <div class="card-header card-header-border-bottom">
                <div class="float-left">
                    <h2 class="mt-2">All Icons</h2>
                </div>
                <div class="float-right">
                    <a class="btn cus-btn  pl-2 pr-2 p-1" href="{{route('add-social-icon')}}"><i class="fas fa-plus"></i> Add Icon </a>
                </div>
            </div>
            <div class="card-body">
              <div class="">
                <table id="example"  class="table responsive">
                    <thead>
                        <tr>
                          <th>SL</th>
                          <th>Image</th>
                          <th>Title</th>
                          <th>Status</th>
                          <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                      @foreach($icons as $icon)
                        <tr class="even">
                            <td>{{$loop->iteration}}</td>
                            <td>
                              @if(!empty($icon->image))
                              <img src="{{asset('uploads/icons/'.$icon->image)}}" alt="{{$icon->title}}" width="50" height="50">
                              @else
                                <i class="fas fa-file"></i>
                              @endif
                            </td>
                            <td>{{$icon->title}}</td>
                            @if($icon->status == 1)
                              <td><span class="badge badge-success">Active</span></td>
                            @else
                              <td><span class="badge badge-danger">Inactive</span></td>
                            @endif
                            <td class="table-action">
                                <a href="{{route('edit-social-icon',[$icon->id])}}">
                                    <span class="mdi mdi-pencil-box text-success h6 f-20"></span>
                                </a>
                                <a href="{{route('delete-social-icon', $icon->id)}}">
                                    <span class="mdi mdi-delete text-danger h6 f-20" onClick="return confirm('Are you sure you want to delete the icon permanently?')"></span>
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
</div>
@endsection