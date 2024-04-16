@extends('frontend.layouts.master')
@section('content')
    <!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>cart</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('index')}}">Home</a></li>
                            <li class="breadcrumb-item active">cart</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="cart_error text-center">
                    @if(session()->has('cart_error'))
                        <p class="text-danger">{{session()->get('cart_error')}}</p>
                        <a href="{{route('cart-remove-all')}}" class="btn btn-danger">Remove All Item </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <!--section start-->
    <section class="wait-loading text-center d-none">
        <img width="50" height="50" src="{{asset('assets/images/cart/loading.gif')}}" alt="Cart Loading">
        Cart is updating....
    </section>
    <section class="cart-section section-b-space">
        <div class="container">
            <div class="row">
                {{-- <div class="col-sm-12">
                    <div class="cart_counter">
                        <div class="countdownholder">
                            Your cart will be expired in<span id="timer"></span> minutes!
                        </div>
                        <a href="checkout.html" class="cart_checkout btn btn-solid btn-xs">check out</a>
                    </div>
                </div> --}}
                @if($content->count() > 0)
                <div class="col-sm-12 table-responsive-xs">
                    <table class="table cart-table">
                        <thead>
                            <tr class="table-head">
                                <th scope="col">image</th>
                                <th scope="col">product name</th>
                                <th scope="col">product attribute</th>
                                <th scope="col">price</th>
                                <th scope="col">quantity</th>
                                {{-- <th scope="col">action</th> --}}
                                <th scope="col">total</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($content as $item )
                            <tr>
                                <td>
                                    <a href="{{route('product-details',[$item->options['slug']])}}"><img src="{{asset('uploads/products/images/'.$item->options['image'])}}" alt="{{$item->name}}"></a>
                                </td>
                                <td><a href="{{route('product-details',[$item->options['slug']])}}">{{$item->name}}</a>
                                    <div class="mobile-cart-content row">
                                        <div class="col">
                                            <div class="qty-box">
                                                <div class="input-group">
                                                    <input type="text" name="quantity" class="form-control input-number" value="{{$item->qty}}">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col">
                                            <h2> ৳{{$item->price}}</h2>
                                        </div>
                                        <div class="col">
                                            <h2 class="td-color"><a href="" class="icon"><i class="ti-close"></i></a> </h2>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    @if($item->options->size!=null) <span class="me-2">Size: {{$item->options->size}}</span>@endif @if($item->options->color!=null)<span>Color: {{$item->options->color}}</span>@endif
                                </td>
                                <td>
                                    <h2>৳{{$item->price}}</h2>
                                </td>
                                <td>
                                    <div class="qty-box">
                                        <div class="input-group quan-coun">
                                            <span class="input-group-prepend">
                                                <button type="button" data-prod-price="{{$item->price}}" data-row-id="{{$item->rowId}}" data-id="{{$item->options['id']}}" data-prod-size="{{$item->options->size}}" data-prod-color="{{$item->options->color}}" class="quantity-left-minus quantity-btn qty-count" data-quantity-minus="">
                                                    <i class="ti-minus"></i>
                                                </button>
                                            </span>
                                            <input type="text" class="form-control quantity_input_{{$item->rowId}} product-qty qty-update" data-prod-price="{{$item->price}}" data-id="{{$item->options['id']}}" data-row-id="{{$item->rowId}}" data-prod-size="{{$item->options->size}}" data-prod-color="{{$item->options->color}}" min="1" value="{{$item->qty}}" step="1" max="100" name="quantity">
                                            <span class="input-group-prepend">
                                                <button type="button" data-row-id="{{$item->rowId}}" data-id="{{$item->options['id']}}" data-prod-price="{{$item->price}}" data-prod-size="{{$item->options->size}}" data-prod-color="{{$item->options->color}}" class="quantity-right-plus quantity-btn qty-count" data-quantity-plus="">
                                                    <i class="ti-plus"></i>
                                                </button>
                                            </span>
                                        </div>
                                    </div>
                                </td>
                                {{-- <td><a href="{{route('cart-remove-each',$item->rowId)}}" class="icon"><i class="ti-close"></i></a></td> --}}
                                <td>
                                    <h2 class="td-color">৳<span class="item_qty_{{$item->rowId}}">{{$item->price * $item->qty}}</span> <a class="ms-3" href="{{route('cart-remove-each',$item->rowId)}}" class="icon"><i class="ti-close"></i></a></h2>
                                </td>
                                <td class="d-none if_error_{{$item->rowId}}">
                                    <div class="error_{{$item->rowId}}"></div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="table-responsive-md">
                        <table class="table cart-table ">
                            <tfoot>
                                <tr>
                                    <td>total price :</td>
                                    <td>
                                        <h2> ৳<span class="subtotal">{{$sub_total}}</span></h2>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                 @else
                    <div class="col-xl-10 col-md-12 col-sm-12  offset-xl-1">
                        <p class="text-center h5 font=-weight-bold">No item in the cart.</p>
                    </div>
                @endif
            </div>
            @if($content->count() > 0)
            <div class="row cart-buttons">
                <div class="col-6"><a href="" class="btn btn-solid">continue shopping</a></div>
                <div class="col-6"><a href="{{route('checkout')}}" class="btn btn-solid">check out</a></div>
            </div>
            @endif
        </div>
    </section>
    <!--section end-->
@endsection