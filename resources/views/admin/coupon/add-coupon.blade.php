@extends('admin.layouts.master')

@section('content')
<div class="content-wrapper">
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Add Coupon</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('coupon.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="coupon_code"> Coupon Code <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control @error('coupon_code') is-invalid @enderror" placeholder="Enter Coupon Code" value="{{old('coupon_code')}}" required name="coupon_code" onkeyup="nospaces(this)">
                                @error('coupon_code')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="category">Coupon Category </label>
                                <select class="form-control @error('category') is-invalid @enderror category" name="category[]" id="category" multiple="multiple">
                                    @foreach($categories as $cat)
                                        <option value="{{$cat->id}}"><span class="boldCat">{{$cat->title}}</span></option>
                                        @if($cat->children)
                                            @foreach ($cat->children as $child)
                                            <option value="{{$child->id}}">  - {{$child->title}}</option>
                                            @endforeach
                                        @endif
                                    @endforeach
                                </select>
                                @error('category')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="coupon_product">Coupon Products</label>
                                <select class="form-control coupon_product" multiple="multiple" name="coupon_product[]" id="coupon_product">
                                    <option value="">Select Products</option>
                                    @foreach($products as $product)
                                        <option value="{{$product->id}}">{{$product->title}}</option>
                                    @endforeach
                                </select>                                
                                @error('coupon_product')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="users">Coupon Users</label>
                                <select class="form-control users" name="users[]" id="users" multiple="multiple">
                                    <option value="">Select Users</option>
                                    @foreach($users as $user) 
                                        <option value="{{$user->id}}">{{$user->email}}</option>
                                    @endforeach
                                </select>                                
                                @error('users')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="coupon_type">Coupon Type  <span class="required-icon">*</span></label>
                                <select class="form-control coupon_type" autofocus name="coupon_type" id="coupon_type">
                                    <option value="">Select Coupon Type</option>
                                    <option value="single">Single Type</option>
                                    <option value="multiple">Multiple Type</option>
                                    <option value="unlimited">Unlimited</option>
                                </select>
                                @error('coupon_type')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="amount_type">Coupon Amount Type  <span class="required-icon">*</span></label>
                                <select class="form-control amount_type" autofocus name="amount_type" id="amount_type">
                                    <option value="">Select Amount Type</option>
                                    <option value="percentage">Percentage </option>
                                    <option value="fixed">Fixed Amount</option>
                                </select>
                                @error('amount_type')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="amount">Coupon Amount<span class="required-icon">*</span></label>
                                <input type="text" class="form-control" autofocus value="{{old('amount')}}" name="amount" placeholder="Enter Amount">
                                @error('amount')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="multi_value">Multiple Value <span class="required-icon">*</span></label>
                                <input type="number" min="1" autofocus value="{{old('multi_value')}}" class="form-control @error('multi_value') is-invalid @enderror multi_value" name="multi_value" id="multi_value" placeholder="Enter Value">       
                                @error('multi_value')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="expire_date">Coupon Expire Date <span class="required-icon">*</span></label>
                                <input type="date" autofocus class="form-control @error('expire_date') is-invalid @enderror" name="expire_date" placeholder="Enter Coupon Expire Date">                                
                                @error('expire_date')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="status">Coupon Status <span class="required-icon">*</span></label>
                                <select class="form-control status" autofocus name="status" id="status">
                                    <option value="">Select Status</option>
                                    <option value="1">Active </option>
                                    <option value="0">Inactive</option>
                                </select>                               
                                @error('status')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Create</button>
                        {{-- <a href="{{route('admin.dashboard')}}" class="mb-1 btn btn-sm btn-secondary ml-2"> Cancel</a> --}}
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
function nospaces(t){
    if(t.value.match(/\s/g)){
        t.value=t.value.replace(/\s/g,'');
    }
}
</script>
@endsection