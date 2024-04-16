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
                    <h2>Update User</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('update-user',$users->id)}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="title">Name <span class="required-icon">*</span></label>
                                <input autofocus type="text" value="{{ $users->name ?? old('name')}}" class="form-control  @error('name') is-invalid @enderror" name="name" id="name" placeholder="Your name">
                                @error('name')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="title">Email <span class="required-icon">*</span></label>
                                <input autofocus type="email" value="{{ $users->email ?? old('email')}}" class="form-control  @error('email') is-invalid @enderror" name="email" id="email" placeholder="Your email">
                                @error('email')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="title">Phone</label>
                                <input type="text" value="{{ $users->phone ?? old('phone')}}" class="form-control  @error('phone') is-invalid @enderror" name="phone" id="phone" placeholder="Your phone">
                                @error('phone')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        @if(!empty($users->avatar))
                            <img class="rounded" src="{{asset('uploads/users/'.$users->avatar)}}" alt="{{$users->name}}" width="50"> 
                        @endif
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="title">Avatar</label>
                                <input type="hidden" name="hidden_image" value="{{$users->avatar}}">
                                <input accept= "image/*" type="file" value="{{old('avatar')}}" class="form-control  @error('avatar') is-invalid @enderror" name="avatar" id="avatar">
                                @error('avatar')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="title">Password</label>
                                <input autofocus type="password" autocomplete="off" value="{{old('password')}}" class="form-control  @error('password') is-invalid @enderror" name="password" id="password">
                                @error('password')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <!-- <div class="col-md-6 mb-3">
                                <label for="title">Role <span class="required-icon">*</span></label>
                                <select class="form-control  @error('role') is-invalid @enderror" id="role" name="role">
                                    <option value="">Select User Type</option>
                                    <option value="{{$users->role}}" {{$users->role == 1 ? 'selected':''}}>Admin</option>
                                    <option value="{{$users->role}}" {{$users->role == 2 ? 'selected':''}}>User</option>
                                </select>
                                @error('role')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div> -->
                        </div>
                        <div class="form-row">
                            <!-- <div class="col-md-6 mb-3">
                                <label for="title">Confirm Password <span class="required-icon">*</span></label>
                                <input type="password" value="{{old('confirm_password')}}" class="form-control  @error('confirm_password') is-invalid @enderror" name="confirm_password" id="confirm_password">
                                @error('confirm_password')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div> -->
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Update</button>
                        {{-- <a href="{{route('admin.dashboard')}}" class="mb-1 btn btn-sm btn-secondary ml-2"> Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection