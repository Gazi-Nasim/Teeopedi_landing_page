@extends('frontend.layouts.home_layout')
@section('content')
    <!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>Product</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('index')}}">home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">product</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb end -->
    <!-- section start -->
    <section class="section-b-space ratio_asos">
        <div class="collection-wrapper">
            <div class="container">
                <div class="row">
                    <div class="collection-content col">
                        <div class="page-main-content">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="top-banner-wrapper">
                                        <a href="#"><img src="{{asset('uploads/slider/'.$slider_images->img)}}"
                                                class="img-fluid blur-up lazyload" alt="shop banner"></a>
                                        <div class="top-banner-content small-section">
                                            <h4>BIGGEST DEALS ON TOP BRANDS</h4>
                                            <p>The trick to choosing the best wear for yourself is to keep in mind your
                                                body type, individual style, occasion and also the time of day or
                                                weather.
                                                In addition to eye-catching products from top brands, we also offer an
                                                easy 30-day return and exchange policy, free and fast shipping across
                                                all pin codes, cash or card on delivery option, deals and discounts,
                                                among other perks. So, sign up now and shop for westarn wear to your
                                                heart’s content on {{ config('app.name', '') }}. </p>
                                        </div>
                                    </div>
                                    <div class="collection-product-wrapper">
                                        <div class="product-wrapper-grid">
                                            <div class="row margin-res">
                                                @forelse($productsCollectionWithAttributes as $pro)
                                                <div class="col-lg-3 col-6 col-grid-box">
                                                    <div class="product-box">
                                                        <div class="img-wrapper">
                                                            <div class="front">
                                                                <a href="{{route('product-details',[$pro->slug])}}"><img src="{{asset('uploads/products/images/'.$pro->featured_img)}}"
                                                                        class="img-fluid blur-up lazyload bg-img"
                                                                        alt="{{$pro->title}}" title="{{$pro->title}}"></a>
                                                            </div>
                                                            <div class="back">
                                                                <a href="{{route('product-details',[$pro->slug])}}"><img src="{{asset('uploads/products/images/'.$pro->featured_img)}}"
                                                                        class="img-fluid blur-up lazyload bg-img"
                                                                        alt="{{$pro->title}}" title="{{$pro->title}}"></a>
                                                            </div>
                                                            <div class="cart-info cart-wrap">
                                                                <button data-unique-id="{{$pro->unique_id}}" data-prod-id="{{$pro->id}}" class="add-to-cart2 add-cart-item-{{$pro->id}}" title="Add to cart">
                                                                    <i class="ti-shopping-cart"></i>
                                                                </button>
                                                                <!--<a href="javascript:void(0)" data-prod-id="{{$pro->id}}" title="Buy Now">-->
                                                                <!--    <i class="ti-money buy-now" aria-hidden="true" data-prod-id="{{$pro->id}}"></i>-->
                                                                <!--</a>-->
                                                                <a href="#" data-bs-toggle="modal" data-bs-target="#quick-view" class="quick_view" data-prod-id="{{$pro->id}}"  title="Quick View">
                                                                    <i class="ti-search" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            <div>
                                                                {{-- <div class="rating"><i class="fa fa-star"></i> <i
                                                                        class="fa fa-star"></i> <i
                                                                        class="fa fa-star"></i> <i
                                                                        class="fa fa-star"></i> <i
                                                                        class="fa fa-star"></i></div> --}}
                                                                <a href="{{route('product-details',[$pro->slug])}}">
                                                                    <h6>{{$pro->title}}</h6>
                                                                </a>
                                                                {{-- <p>Lorem Ipsum is simply dummy text of the printing and
                                                                    typesetting industry. Lorem Ipsum has been the
                                                                    industry's standard dummy text ever since the 1500s,
                                                                    when an unknown printer took a galley
                                                                    of type and scrambled it to make a type specimen
                                                                    book</p> --}}
                                                                <h4> ৳ {{$pro->sale_price}}</h4>
                                                                {{-- <ul class="color-variant">
                                                                    <li class="bg-light0"></li>
                                                                    <li class="bg-light1"></li>
                                                                    <li class="bg-light2"></li>
                                                                </ul> --}}
                                                            </div>
                                                            <div class="parent-attr">
                                                                @if(!empty($pro->size_attributes))
                                                                <div class="size-box-home mt-2 size-exist-{{$pro->unique_id}}">
                                                                    <ul class="">
                                                                        <input type="hidden" class="getSize2 getSize2-{{$pro->unique_id}}" value="">
                                                                        <select data-unique-id="{{$pro->unique_id}}" data-prod-id="{{$pro->id}}" class="form-slect setSize2 checkAttr2" name="" id="">
                                                                            <option value="">Select Size</option>
                                                                            @foreach($pro->size_attributes as $size)
                                                                                <option value="{{$size}}"> {{$size}} </option>
                                                                            @endforeach
                                                                        </select>
                                                                    </ul>
                                                                </div>
                                                                @endif
                                                                @if(!empty($pro->color_attributes))
                                                                <div class="color-box-home color-exist-{{$pro->unique_id}}">
                                                                    <ul class="">
                                                                        <input type="hidden" class="getColor2 getColor2-{{$pro->unique_id}}" value="">
                                                                        {{-- @dd($pro->color_attributes) --}}
                                                                        @foreach($pro->color_attributes as $color)
                                                                            <li  data-unique-id="{{$pro->unique_id}}" data-prod-id="{{$pro->id}}" data-color="{{$color}}" class="setColor2 checkAttr2" style="background-color:{{$color}};"></li>
                                                                        @endforeach
                                                                    </ul>
                                                                </div>
                                                                @endif
                                                                <small class="error text-danger fw-bold error_{{$pro->unique_id}}"></small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                @empty
                                                    <div class="col-12">
                                                        <p>No Product Found</p>
                                                    </div>
                                                @endforelse
                                            </div>
                                        </div>
                                        <div class="row mt-5">
                                            <div class="col-xl-12 d-flex justify-content-center">
                                                <div class="cat-pagination mt-20 mb-20">
                                                    <nav>
                                                        {{$products->links()}}
                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- section End -->
@endsection