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
                    <h2>General Settings List</h2>
                </div>
                <div class="card-body">
                    <table id="example" class="table">
                        <thead>
                            <tr>
                                <th>SL.</th>
                                <th>Site Title</th>
                                <th>Logo</th>
                                <th>Favicon</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($settings as $set)
                            <tr class="even">
                                <td>{{$no++}}</td>
                                <td>{{$set->site_title}}</td>
                                <td>
                                    @if(!empty($set->logo))
                                    <img src="{{asset('uploads/settings/logo/'.$set->logo)}}" width="70">
                                    @endif
                                </td>
                                <td>
                                    @if(!empty($set->favicon))
                                    <img src="{{asset('uploads/settings/favicon/'.$set->favicon)}}" width="70">
                                    @endif
                                </td>
                                <td class="table-action">
                                    <a href="{{route('general-settings.edit',[$set->id])}}">
                                        <span class="mdi mdi-pencil-box text-success h6 f-20"></span>
                                    </a>
                                    <a href="{{route('general-settings.delete',[$set->id])}}">
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
