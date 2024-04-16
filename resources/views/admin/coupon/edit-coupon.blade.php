@extends('admin.layouts.master')

@section('content')
<div class="content-wrapper">
    <div class="row">
        <div class="col-lg-12 col-md-12">
            <div class="card card-default">
                <div class="card-header card-header-border-bottom">
                    <h2>Edit Coupon</h2>
                </div>
                <div class="card-body">
                    <form action="{{route('coupon.update',[$coupons->id])}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PATCH')
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="coupon_code"> Coupon Code <span class="required-icon">*</span></label>
                                <input type="text" autofocus class="form-control  @error('coupon_code') is-invalid @enderror" placeholder="Enter Coupon Code" value="{{$coupons->coupon_code ?? old('coupon_code')}}" required name="coupon_code" onkeyup="nospaces(this)">
                                @error('coupon_code')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="category">Coupon Categories</label>
                                <select class="form-control category" name="category[]" id="category" multiple="multiple">
                                    <option value="">Select Product Category</option>

                                    @foreach($categories as $cat)
                                        <option value="{{$cat->id}}" @if(in_array($cat->id, $catData)) selected @endif>{{$cat->title}}</option>
                                        @foreach ($cat->children as $child)
                                            <option value="{{$child->id}}" @if(in_array($child->id, $catData)) selected @endif>  - {{$child->title}}</option>
                                        @endforeach 
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
                                        <option value="{{$product->id}}" @foreach($p as $po)  @if($product->id==$po->product_id) selected @endif @endforeach > {{$product->title}}</option>
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
                                    <option value="{{$user->id}}"  @foreach($u as $us) @if($user->id==$us->user_id) selected @endif @endforeach>{{$user->email}}</option>
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
                                <select class="form-control coupon_type" name="coupon_type" id="coupon_type">
                                    <option value="">Select Coupon Type</option>
                                    <option value="single" {{ $coupons->coupon_type =='single' ? 'selected' : '' }}>Single Type</option>
                                    <option value="multiple" {{ $coupons->coupon_type =='multiple' ? 'selected' : '' }}>Multiple Type</option>
                                    <option value="unlimited" {{ $coupons->coupon_type =='unlimited' ? 'selected' : '' }}>Unlimited</option>
                                </select>
                                @error('coupon_type')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="amount_type">Coupon Amount Type</label>
                                <select class="form-control amount_type" name="amount_type" id="amount_type">
                                    <option value="">Select Amount Type</option>
                                    <option value="percentage" {{ $coupons->amount_type =='percentage' ? 'selected' : '' }}>Percentage</option>
                                    <option value="fixed" {{ $coupons->amount_type =='fixed' ? 'selected' : '' }}>Fixed Amount</option>
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
                                <label for="title">Coupon Amount <span class="required-icon">*</span></label>
                                <input type="text" class="form-control  @error('amount') is-invalid @enderror" name="amount" placeholder="Enter Amount" value="{{$coupons->amount ?? old('amount')}}">
                                @error('amount')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                            <label for="multi_value">Multiple Value <span class="required-icon">*</span></label>
                            <input type="number" class="form-control @error('multi_value') is-invalid @enderror" value="{{$coupons->multi_value}}" name="multi_value" id="multi_value" placeholder="Enter Value">                
                                @error('multi_value')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="title">Coupon Expire Date <span class="required-icon">*</span></label>
                                <input type="date" class="form-control" name="expire_date" placeholder="Enter Coupon Expire Date" value="{{$coupons->expire_date ?? old('expire_date')}}">
                                @error('expire_date')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="status">Coupon Status <span class="required-icon">*</span></label>
                                <select class="form-control status" name="status" id="status">
                                    <option value="">Select Status</option>
                                    <option value="1" {{$coupons->status == 1 ? 'selected' : ''}}>Active </option>
                                    <option value="0" {{$coupons->status == 0  ? 'selected' : ''}}>Inactive</option>
                                </select>                               
                                @error('status')
                                <span class="text-danger" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                                @enderror
                            </div>
                        </div>
                        <button class="mb-1 btn cus-btn" type="submit">Update</button>
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