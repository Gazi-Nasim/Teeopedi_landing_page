@extends('admin.layouts.master')
@section('content')
<div class="content-wrapper">
  @if(Session::has('success'))
    <div class="alert alert-dismissible fade show alert-success p-3" role="alert">
      <div class="alert-icon mr-2">
          <i class="fas fa-check"></i>
      </div>
      <p class="text-white mt-s">{{Session::get('success')}}</p>
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
                    <h2 class="mt-2">All Users</h2>
                </div>
                @if(Auth::user()->role == 3)
                  <div class="float-right">
                      <a class="btn cus-btn  pl-2 pr-2 p-1" href="{{url('/admin/users/add-user')}}"><i class="fas fa-plus"></i> Add user</a>
                  </div>
                @endif
            </div>
            <div class="card-body">
              <div class="">
                <table id="example"  class="table responsive">
                    <thead>
                        <tr>
                          <th>SL</th>
                          <th>Avatar</th>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Phone</th>
                          <th>User Type</th>
                          <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                        $i=1;
                        @endphp
                        @foreach ($users as $user)
                          <tr>
                            <td>{{$i++}}</td>
                            <td class="text-center">
                              @if(!empty($user->avatar))
                               <img width="50" class="img-fluid rounded" src="{{asset('uploads/users/'.$user->avatar)}}" alt="User Avatar" title="{{$user->name}}">
                              @else
                              <i class="fas fa-user"></i>
                              @endif
                            </td>
                            <td>{{$user->name}}</td>
                            <td>{{$user->email}}
                            <td>{{$user->phone}}
                            <td>@if($user->role == 1)Admin @elseif($user->role == 3) Super Admin @else User @endif</td>
                            <td>
                              <a title="Edit" href="{{route('edit-user',[$user->id])}}"><span class="mdi mdi-pencil-box text-success h6 f-20"></span></a>
                                @if(Auth::user()->id != $user->id)
                                    <a href="{{ route('delete-user',$user->id) }}" title="Delete" onClick="return confirm('Are you sure you want to Destroy this data permanently?')">
                                      <span class="mdi mdi-delete text-danger h6 f-20" ></span>
                                    </a>
                                @endif
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