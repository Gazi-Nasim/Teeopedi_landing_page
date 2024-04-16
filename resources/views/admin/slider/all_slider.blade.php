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
                    <h2>Slider List</h2>
                </div>
                <div class="card-body">
                    <table id="example" class="table">
                        <thead>
                            <tr>
                                <th>SL.</th>
                                <th>Slider Title</th>
                                <th>Slider Images</th>
                                <th class="text-center">Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($slider as $slide)
                            <tr class="even">
                                <td>{{$no++}}</td>
                                <td>{{$slide->title}}</td>
                                <td>
                                    @foreach($slider_images as $images)
                                    @if($slide->id == $images->slider_id)
                                        <img src="{{asset('uploads/slider/'.$images->img)}}" width="70">
                                    @endif
                                    @endforeach
                                </td>
                                <td class="text-center">@if($slide->status == 1) <i title="active" class="fas fa-check text-success"></i> @else  <i title="inactive" class="fas fa-exclamation text-danger"></i> @endif</td>
                                <td class="table-action">
                                    <a href="{{route('slider.edit',[$slide->id])}}">
                                        <span class="mdi mdi-pencil-box text-success h6 f-20"></span>
                                    </a>
                                    <a href="{{route('slider.delete',[$slide->id])}}">
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
