@extends('frontend.layouts.home_layout')
@section('content')
<!-- Home slider -->
    <section class="p-0">
        <div class="slide-1 home-slider desktop-slider-area">
            @foreach($desktop_slider_images as $slider)
            <div>
                <div class="home">
                    <img src="{{asset('uploads/slider/'.$slider->img)}}" alt="" class="bg-img blur-up lazyload">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="slider-contain">
                                    {{--<div>
                                        <h4>welcome to {{ config('app.name', '') }}</h4>
                                        <h1>kids products</h1><a href="{{route('products')}}" class="btn btn-solid">shop now</a>
                                    </div>--}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            {{-- <div>
                <div class="home">
                    <img src="{{asset('assets/images/home-banner/35.jpg')}}" alt="" class="bg-img blur-up lazyload">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="slider-contain">
                                    <div>
                                        <h4>save 30% off</h4>
                                        <h1>beauty products</h1><a href="#" class="btn btn-solid">shop now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --}}
        </div>
        <div class="mobile-slider-area d-none">
            <div class="container-fluid p-0 overflow-hidden">
                <div class="row">
                        <div id="carouselExampleControls2" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <?php
                                $i = 0;
                            ?>
                            @foreach($mobile_slider_images as $images)
                                <div class="carousel-item @if($i == 0) active @endif <?php $i++; ?>">
                                    <img src="{{asset('uploads/slider/'.$images->img)}}" alt="" title="">
                                </div>
                            @endforeach
                        </div>
                        <div class="d-flex align-items-center">
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls2" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls2" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Home slider end -->


    <!-- About section start -->
    <section class="section-b-space beauty-about">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 col-md-12 offset-xl-1 text-center">
                    @if(!empty($settings) && !empty($settings->about_us_image))
                    <img src="{{asset('uploads/settings/'.$settings->about_us_image)}}" alt="" class="img-fluid blur-up lazyload">
                    @else
                    <img src="{{asset('assets/images/beauty/about-us.jpg')}}" alt="" class="img-fluid blur-up lazyload">
                    @endif
                </div>
                <div class="col-xl-5 col-lg-6 col-md-12">
                    <div class="about-section">
                        <div>
                            <h2>about us</h2>
                            <div class="about-text" >
                                <p style="text-align:justify">@if(!empty($settings)){{$settings->about_us_text}}@endif</p>
                            </div>
                            <div class="service small-section pb-0">
                                <div class="row">
                                    <div class="col-sm-4 service-block1">
                                        @if(!empty($settings) && $settings->about_icon_1)
                                        <img src="{{asset('uploads/settings/'.$settings->about_icon_1)}}" alt="{{$settings->site_title}}" width="50">
                                        @endif
                                         @if(!empty($settings) && $settings->about_icon_title_1)
                                        <h5>{{$settings->about_icon_title_1}}</h5>
                                        @endif
                                    </div>
                                    <div class="col-sm-4 service-block1">
                                        @if(!empty($settings) && $settings->about_icon_2)
                                        <img src="{{asset('uploads/settings/'.$settings->about_icon_2)}}" alt="{{$settings->site_title}}" width="50">
                                        @endif
                                        @if(!empty($settings) && $settings->about_icon_title_2)
                                        <h5>{{$settings->about_icon_title_2}}</h5>
                                        @endif
                                    </div>
                                    <div class="col-sm-4 service-block1">
                                        @if(!empty($settings) && $settings->about_icon_3)
                                        <img src="{{asset('uploads/settings/'.$settings->about_icon_3)}}" alt="{{$settings->site_title}}" width="50">
                                        @endif
                                        @if(!empty($settings) && $settings->about_icon_title_3)
                                        <h5>{{$settings->about_icon_title_3}}</h5>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About section  end -->


    <!-- Product slider -->
    <div class="title1">
        {{-- <h4>special offer</h4> --}}
        <h2 class="title-inner1">new products</h2>
    </div>
    <section class="pt-0 ratio_asos">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="product-5 product-m no-arrow">
                        @foreach($newProductsCollectionWithAttributes as $newProd)
                        <div class="product-box">
                            <div class="img-wrapper">
                                <div class="front">
                                    <a href="{{route('product-details',$newProd->slug)}}"><img src="{{asset('uploads/products/images/'.$newProd->featured_img)}}"
                                            class="img-fluid blur-up lazyload bg-img" alt="{{$newProd->title}}" title="{{$newProd->title}}"></a>
                                </div>
                                <div class="back">
                                    <a href="{{route('product-details',$newProd->slug)}}"><img src="{{asset('uploads/products/images/'.$newProd->featured_img)}}"
                                            class="img-fluid blur-up lazyload bg-img" alt="{{$newProd->title}}" title="{{$newProd->title}}"></a>
                                </div>
                                <div class="cart-info cart-wrap">
                                    <button data-unique-id="{{$newProd->unique_id}}" data-prod-id="{{$newProd->id}}" class="add-to-cart2 add-cart-item-{{$newProd->id}}" title="Add to cart">
                                        <input type="hidden" class="form-control input-number quantity-input product-qty" min="1" value="1" step="1" max="100" name="quantity">
                                        <i class="ti-shopping-cart"></i>
                                    </button>
                                    {{-- <a href="javascript:void(0)" data-prod-id="{{$newProd->id}}" title="Buy Now">
                                        <i class="ti-money buy-now" aria-hidden="true" data-prod-id="{{$newProd->id}}"></i>
                                    </a> --}}
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#quick-view" class="quick_view" data-prod-id="{{$newProd->id}}"  title="Quick View">
                                        <i class="ti-search" aria-hidden="true"></i>
                                    </a>
                                    {{-- <a href="compare.html" title="Compare">
                                        <i class="ti-reload" aria-hidden="true"></i>
                                    </a> --}}
                                </div>
                            </div>
                            <div class="product-detail">
                                {{-- <div class="rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div> --}}
                                <a href="{{route('product-details',$newProd->slug)}}">
                                    <h6>{{$newProd->title}}</h6>
                                </a>
                                <h4>৳{{$newProd->regular_price}} <del>{{$newProd->sale_price}}</del></h4>
                                <div class="parent-attr">
                                    @if(!empty($newProd->size_attributes))
                                    <div class="size-box-home mt-2 size-exist-{{$newProd->unique_id}}">
                                        <ul class="">
                                            <input type="hidden" class="getSize2 getSize2-{{$newProd->unique_id}}" value="">
                                            <select data-unique-id="{{$newProd->unique_id}}" data-prod-id="{{$newProd->id}}" class="form-slect setSize2 checkAttr2" name="" id="">
                                                <option value="">Select Size</option>
                                                @foreach($newProd->size_attributes as $size)
                                                    <option value="{{$size}}"> {{$size}} </option>
                                                @endforeach
                                            </select>
                                        </ul>
                                    </div>
                                    @endif
                                    @if(!empty($newProd->color_attributes))
                                    <div class="color-box-home color-exist-{{$newProd->unique_id}}">
                                        <ul class="">
                                            <input type="hidden" class="getColor2 getColor2-{{$newProd->unique_id}}" value="">
                                            {{-- @dd($newProd->color_attributes) --}}
                                            @foreach($newProd->color_attributes as $color)
                                                <li data-unique-id="{{$newProd->unique_id}}" data-prod-id="{{$newProd->id}}" data-color="{{$color}}" class="setColor2 checkAttr2" style="background-color:{{$color}};"></li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    @endif
                                    <small class="error text-danger fw-bold error_{{$newProd->unique_id}}"></small>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product slider end -->


    <!-- Video section start -->
    @if(!empty($settings))
        @if(!empty($settings->home_promo_video_title) || !empty($settings->home_promo_video))
        <section class="video-section section-b-space">
            <div class="title1">
                {{-- <h4>special offer</h4> --}}
                @if(!empty($settings) && !empty($settings->home_promo_video_title))
                <h2 class="title-inner1">{{$settings->home_promo_video_title}}</h2>
                @endif
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <a href="" data-bs-toggle="modal" data-bs-target="#video">
                            <div class="video-img"><img src="{{asset('assets/images/beauty/video-thumb.jpg')}}" alt=""
                                    class="img-fluid blur-up lazyload">
                                <div class="play-btn"><span><i class="fa fa-play" aria-hidden="true"></i></span></div>
                            </div>
                        </a>
                        <div class="modal fade video-modal" id="video" role="dialog" aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        @if(!empty($settings) && !empty($settings->home_promo_video))
                                        <iframe src="https://www.youtube.com/embed/{{$settings->home_promo_video}}" allowfullscreen></iframe>
                                        @else
                                        <iframe src="https://www.youtube.com/embed/bf2tFixliMA" allowfullscreen></iframe>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        @endif
    @endif
    <!-- video section end -->


    <!-- Product slider -->
    <div class="title1">
        {{-- <h4>special offer</h4> --}}
        <h2 class="title-inner1">top collection</h2>
    </div>
    <section class="pt-0 ratio_asos">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="product-5 product-m no-arrow">
                        @foreach($topCollectionWithAttributes as $topProd)
                        <div class="product-box">
                            <div class="img-wrapper">
                                <div class="front">
                                    <a href="{{route('product-details',$topProd->slug)}}"><img src="{{asset('uploads/products/images/'.$topProd->featured_img)}}"
                                            class="img-fluid blur-up lazyload bg-img" alt="{{$topProd->title}}" title="{{$topProd->title}}"></a>
                                </div>
                                <div class="back">
                                    <a href="{{route('product-details',$topProd->slug)}}"><img src="{{asset('uploads/products/images/'.$topProd->featured_img)}}"
                                            class="img-fluid blur-up lazyload bg-img" alt="{{$topProd->title}}" title="{{$topProd->title}}"></a>
                                </div>
                                <div class="cart-info cart-wrap">
                                    <button data-unique-id="{{$topProd->unique_id}}"  data-prod-id="{{$topProd->id}}" class="add-to-cart2 add-cart-item-{{$topProd->id}}" title="Add to cart">
                                        <i class="ti-shopping-cart"></i>
                                    </button>
                                    {{-- <a href="javascript:void(0)" data-prod-id="{{$topProd->id}}" title="Buy Now">
                                        <i class="ti-money buy-now" aria-hidden="true" data-prod-id="{{$topProd->id}}"></i>
                                    </a> --}}
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#quick-view" class="quick_view" data-prod-id="{{$topProd->id}}"  title="Quick View">
                                        <i class="ti-search" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-detail">
                                {{-- <div class="rating"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                        class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                                </div> --}}
                                <a href="{{route('product-details',$topProd->slug)}}">
                                    <h6>{{$topProd->title}}</h6>
                                </a>
                                <h4>৳{{$topProd->regular_price}} <del>{{$topProd->sale_price}}</del></h4>
                                <div class="parent-attr">
                                    @if(!empty($topProd->size_attributes))
                                    <div class="size-box-home mt-2 size-exist-{{$topProd->unique_id}}">
                                        <ul class="">
                                            <input type="hidden" class="getSize2 getSize2-{{$topProd->unique_id}}" value="">
                                            <select data-unique-id="{{$topProd->unique_id}}" data-prod-id="{{$topProd->id}}" class="form-slect setSize2 checkAttr2" name="" id="">
                                                <option value="">Select Size</option>
                                                @foreach($topProd->size_attributes as $size)
                                                    <option value="{{$size}}"> {{$size}} </option>
                                                @endforeach
                                            </select>
                                        </ul>
                                    </div>
                                    @endif
                                    @if(!empty($topProd->color_attributes))
                                    <div class="color-box-home color-exist-{{$topProd->unique_id}}">
                                        <ul class="">
                                            <input type="hidden" class="getColor2 getColor2-{{$topProd->unique_id}}" value="">
                                            {{-- @dd($topProd->color_attributes) --}}
                                            @foreach($topProd->color_attributes as $color)
                                                <li data-unique-id="{{$topProd->unique_id}}" data-prod-id="{{$topProd->id}}" data-color="{{$color}}" class="setColor2 checkAttr2" style="background-color:{{$color}};"></li>
                                            @endforeach
                                        </ul>
                                    </div>
                                    @endif
                                    <small class="error text-danger fw-bold error_{{$topProd->unique_id}}"></small>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product slider end -->


    <!-- blog section -->
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="title1 section-t-space">
                    <h4>Recent Story</h4>
                    <h2 class="title-inner1">from the blog</h2>
                </div>
            </div>
        </div>
    </div>
    <section class="blog pt-0 ratio3_2 slick-default-margin">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="slide-3 no-arrow">
                        @foreach($blogs as $blog)
                        <div class="col-md-12">
                            <a href="{{route('blog-details',$blog->slug)}}">
                                <div class="classic-effect">
                                    <div>
                                        <img src="{{asset('uploads/blogs/images/'.$blog->image)}}"
                                            class="img-fluid blur-up lazyload bg-img" alt="{{$blog->title}}" title="{{$blog->title}}">
                                        <span></span>
                                    </div>
                                </div>
                            </a>
                            <div class="blog-details">
                                @php $created_at = \Carbon\Carbon::parse( $blog->created_at)->format('d M Y'); @endphp
                                <h4>{{$created_at}}</h4>
                                <a href="{{route('blog-details',$blog->slug)}}">
                                    <p>{{$blog->title}}</p>
                                </a>
                                <h6 class="pt-2">by: {{$blog->author}} </h6>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- blog section end -->


    <!-- instagram section -->
    <section class="instagram section-b-space ratio_square">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="title-borderless"></h2>
                    {{--<div class="slide-7 no-arrow slick-instagram">
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/1-ins.jpg')}}" alt="Avatar" class="bg-img"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/2-ins.jpg')}}" class="bg-img" alt="Avatar"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/3-ins.jpg')}}" class="bg-img" alt="Avatar"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/4-ins.jpg')}}" class="bg-img" alt="Avatar"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/5-ins.jpg')}}" class="bg-img" alt="Avatar"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/6-ins.jpg')}}" class="bg-img" alt="Avatar"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/7-ins.jpg')}}" class="bg-img" alt="Avatar"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/8-ins.jpg')}}" class="bg-img" alt="Avatar"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div>
                            <a href="#">
                                <div class="instagram-box">
                                    <img src="{{asset('assets/images/slider/beauty/9-ins.jpg')}}" class="bg-img" alt="Avatar"
                                        style="width:100%">
                                    <div class="overlay">
                                        <i class="fa fa-instagram"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>--}}
                </div>
            </div>
        </div>
    </section>
    <!-- instagram section end -->
@endsection