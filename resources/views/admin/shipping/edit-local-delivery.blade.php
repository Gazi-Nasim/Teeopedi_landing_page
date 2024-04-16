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
                    <form action="{{route('update.local-delivery', $local->id)}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="zone_name">Zone Name <span class="required-icon">*</span></label>
                                <input autofocus required="" type="text" value="{{ $local->zone_name ?? old('zone_name') }}" class="form-control @error('zone_name') is-invalid @enderror" name="zone_name" id="zone_name"
                                    placeholder="Zone Name">
                                @error('zone_name')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="fee_type">Fee Type<span class="required-icon">*</span></label>
                                <select required="" class="form-control @error('fee_type') is-invalid @enderror" id="fee_type" name="fee_type">
                                    <option value="" >Select Fee Type</option>
                                    <option value="1" {{ $local->fee_type == 1 ? 'selected' : '' }}>Cart total fixed amount</option>
                                    <option value="2" {{ $local->fee_type == 2 ? 'selected' : '' }}>Cart total percentage(%)</option>
                                    <option value="3" {{ $local->fee_type == 3 ? 'selected' : '' }}>Per product fixed amount</option>
                                    <option value="4" {{ $local->fee_type == 4 ? 'selected' : '' }}>Per product percentage(%)</option>
                                </select>
                                @error('fee_type')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-12 mb-3">
                                <label for="fee_amount">Fee Amount<span class="required-icon">*</span></label>
                                <input autofocus required="" type="text" value="{{ $local->fee_amount ?? old('fee_amount') }}" class="form-control @error('fee_amount') is-invalid @enderror" name="fee_amount" id="fee_amount"
                                    placeholder="Fee amount">
                                @error('fee_amount')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            {{-- <div class="col-md-12 mb-3">
                                <label for="location">location <span class="required-icon">*</span></label>
                                <select required="" class="form-control @error('location') is-invalid @enderror js-example-basic-multiple" id="location" name="location[]"  multiple="multiple">
                                    @foreach($locations as $loc)
                                        <option value="{{$loc->id}}" @if($select_local_area != '') @foreach($select_local_area as
                                        $disid){{ $disid->districts_id == $loc->id ? 'selected': ''}} @endforeach @endif
                                        @if($select_all_local_area) @foreach($select_all_local_area as
                                        $ls){{ $ls->districts_id == $loc->id ? 'disabled': ''}} @endforeach @endif
                                        > {{ $loc->name }}</option>
                                    @endforeach
                                </select>
                                @error('location')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div> --}}
                            <div class="col-md-12 mb-3">
                                <label for="status">Status <span class="required-icon">*</span></label>
                                <select required="" class="form-control @error('status') is-invalid @enderror" id="status" name="status">
                                <option value="">Select</option>
                                <option value="1" {{ $local->status == 1 ? 'selected' : '' }} >Enable</option>
                                <option value="0" {{ $local->status == 0 ? 'selected' : '' }} >Disable</option>
                                </select>
                                @error('status')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="btn cus-btn" type="submit">Save</button>
                        {{-- <a href="{{route('admin.dashboard')}}" class="btn btn-sm btn-secondary ml-2">Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection