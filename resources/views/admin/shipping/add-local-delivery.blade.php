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
                    <h2>Local Delivery</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('save.local-delivery')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="zone_name">Zone Name <span class="required-icon">*</span></label>
                                <input autofocus required="" type="text" value="{{old('zone_name')}}" class="form-control @error('zone_name') is-invalid @enderror" name="zone_name" id="zone_name"
                                placeholder="Zone Name">
                                @error('zone_name')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="fee_type">Fee Type <span class="required-icon">*</span></label>
                                <select required="" class="form-control @error('fee_type') is-invalid @enderror" id="fee_type" name="fee_type">
                                <option value=""  >Select Fee Type</option>
                                    <option value="1" >Cart total fixed amount</option>
                                    <option value="2" >Cart total percentage(%)</option>
                                    <option value="3" >Per product fixed amount</option>
                                    <option value="4" >Per product percentage(%)</option>
                                </select>
                                @error('fee_type')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="fee_amount">Fee Amount <span class="required-icon">*</span></label>
                                 <input autofocus required="" type="text" value="{{old('fee_amount')}}" class="form-control @error('fee_amount') is-invalid @enderror" name="fee_amount" id="fee_amount"
                                    placeholder="Fee amount">
                                @error('fee_amount')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="status">Status <span class="required-icon">*</span></label>
                                <select required="" class="form-control @error('status') is-invalid @enderror" id="status" name="status">
                                <option value="">Select</option>
                                <option value="1">Enable</option>
                                <option value="0">Disable</option>
                                </select>
                                @error('status')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="btn cus-btn" type="submit">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection