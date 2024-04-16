@extends('frontend.layouts.master')
@push('css')
<style>
#name-error,
#email-error,
#district_id-error,
#thana_id-error ,
#shipping-error ,
#agree-error {
    color: red!important;
}
</style>
@endpush
@section('content')
<!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>Check-out</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('index')}}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Check-out</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->


    <!-- section start -->
    <section class="section-b-space">
        <div class="container">
            <div class="checkout-page">
                <div class="checkout-form">
                    <form class="" id="place-order" action="{{route('place-order')}}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-lg-6 col-sm-12 col-xs-12">
                                <div class="checkout-title">
                                    <h3>Billing Details</h3>
                                </div>
                                <div class="row check-out">
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label class="field-label" for="inputEmail4">Name <span class="text-danger">*</span></label>
                                        <input type="text" name="name" value="{{auth()->user()->name ?? old('name')}}" maxlength="100"
                                            class="form-control @error('name') is-invalid @enderror" required="" id="name">
                                        @error('name')
                                        <small class="text-danger">{{$message}}</small>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                       <label  class="field-label" for="inputPassword4">Phone</label>
                                        <div class="input-group" >
                                            <input type="text" maxlength="11" value="{{Auth::user()->phone ?? old('phone')}}" pattern="\d{11}" name="phone" class="form-control @error('phone') is-invalid @enderror" placeholder="" aria-label="phone" aria-describedby="basic-addon1">
                                        </div>
                                        @error('phone')
                                            <small class="text-danger">{{$message}}</small>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <label class="field-label" for="email" class="form-label">Email <span class="text-danger">*</span></label>
                                        <input type="email" name="email" value="{{Auth::user()->email ?? old('email')}}" maxlength="100"
                                            class="form-control @error('email') is-invalid @enderror" required="" id="email">
                                        @error('email')
                                        <small class="text-danger">{{$message}}</small>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label class="field-label" for="inputAddress">Delivery Address</label>
                                        <input type="text" maxlength="200" value="{{Auth::user()->address ?? old('address')}}" class="form-control @error('address') is-invalid @enderror" name="address" id="address" placeholder="">
                                        @error('address')
                                        <small class="text-danger">{{$message}}</small>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label class="field-label" for="inputAddress2">District <span class="text-danger">*</span></label>
                                        <select name="district_id" class="form-select shipping-option district_id @error('district_id') is-invalid @enderror" required="">
                                            <option value=""> -- Select District -- </option>
                                            @foreach ($districts as $district)
                                            <option value="{{ $district->id }}">{{ $district->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('district_id')
                                        <small class="error text-danger">{{ $message }}</small>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-12 col-sm-12 col-xs-12">
                                        <label class="field-label" for="inputCity">City/Thana <span class="text-danger">*</span></label>
                                        <select name="thana_id" required="" class="form-select shipping-option thana_id @error('thana_id') is-invalid @enderror"></select>
                                        @error('thana_id')
                                        <small class="text-danger">{{$message}}</small>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-12 col-sm-6 col-xs-12">
                                        <label class="field-label" for="inputZip">Zip/Postal</label>
                                        <input type="text" required="" value="{{Auth::user()->zip ?? old('zip')}}" name="zip" maxlength="10" class="form-control @error('zip') is-invalid @enderror" id="zip" placeholder="Zip Code">
                                        @error('zip')
                                        <small class="text-danger">{{$message}}</small>
                                        @enderror
                                    </div>
                                    <div class="form-group col-md-12 col-sm-6 col-xs-12">
                                        <label class="field-label">Shipping Option <span class="text-danger">*</span></label>
                                        <select id="shipping" required="" name="shipping" class="form-select shipping">
                                            <option value="" selected>Select Your Prefered Option</option>
                                            @foreach($shipping_option as $shipping)
                                            <option value="{{$shipping->id}}">{{$shipping->zone_name}}</option>
                                            @endforeach
                                        </select>
                                        @error('shipping')
                                        <small class="text-danger">{{$message}}</small>
                                        @enderror
                                    </div>
                                    <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        {{-- <input type="checkbox" name="shipping-option" id="account-option"> &ensp; --}}
                                        @if(empty(auth()->user()))
                                        <label for="account-option">Already a customer ? <a class="text-dark" href="{{route('user-login')}}">Login</a></label>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-12 col-xs-12">
                                <div class="checkout-details">
                                    <div class="order-box">
                                        <div class="title-box">
                                            <div>Product <span>Total</span></div>
                                        </div>
                                        <ul class="qty">
                                            @foreach($content as $item)
                                            <li><a class="text-dark" href="{{route('product-details',[$item->options['slug']])}}">{{$item->name}}</a> × {{$item->qty}} <span>৳ {{$item->qty * $item->price}}</span></li>
                                            @endforeach
                                        </ul>
                                        <ul class="sub-total">
                                            <li>Subtotal <span class="count">৳ {{\Cart::subtotal()}}</span></li>
                                            <li>Shipping
                                                <span class="shipping-charge count">৳ <span class="charge">0.00</span></span>
                                                <input type="hidden" name="shipping_cost" value="0.00" class="shipping_cost">
                                            </li>
                                        </ul>
                                        <ul class="total">
                                             @php $total =str_replace( ',', '', \Cart::subtotal() ); @endphp
                                            <li>Total <span class="count">৳ <div class="cart_total">{{$total}}</div></span> </li>
                                        </ul>
                                    </div>
                                    <div class="payment-box">
                                        <div class="upper-box">
                                            <div class="payment-options">
                                                <ul>
                                                    <li>
                                                        <div class="radio-option">
                                                            <input type="radio" value="cash" name="payment" id="payment-1"
                                                                checked="checked">
                                                            <label for="payment-1">Cash On Delivery<span
                                                                    class="small-text">Please send a check to Store
                                                                    Name, Store Street, Store Town, Store State /
                                                                    County, Store Postcode.</span></label>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="tacbox">
                                                            <input id="checkbox" name="agree" required="" type="checkbox">
                                                            <label for="checkbox" class="fw-bold ms-2"> I agree to these <a class="text-warning" href="{{route('privacy-policy')}}">Privacy and Policy</a> and <a class="text-warning" href="{{route('terms-condition')}}">Terms and Conditions</a></label>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="text-end"><button type="submit" class="btn-solid btn">Place Order</button></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- section end -->
@endsection
