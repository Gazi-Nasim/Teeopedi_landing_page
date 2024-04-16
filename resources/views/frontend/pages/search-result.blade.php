@extends('frontend.layouts.home_layout')
@section('content')
    <!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>search</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('index')}}">Home</a></li>
                            <li class="breadcrumb-item active">search</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->


    <!--section start-->
    <section class="authentication-page">
        <div class="container">
            <section class="search-block">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <form class="form-header" action="{{route('search')}}" method="GET">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="q" aria-label="Amount (to the nearest dollar)"
                                        placeholder="Search Products......" value="{{request()->q}}">
                                    <div class="input-group-append">
                                        <button class="btn btn-solid"><i class="fa fa-search"></i>Search</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    @if(!empty(request()->q))
                    <h4 class="fw-bold text-center mt-5">{{count($search_result)}} results found for <span class="text-warning">{{request()->q}}</span></h4>
                    @endif
                </div>
            </section>
        </div>
    </section>
    <!-- section end -->


    <!-- product section start -->
    <section class="section-b-space ratio_asos">
        <div class="container">
            <div class="row search-product">
                @forelse($productsCollectionWithAttributes as $pro)
                <div class="col-xl-2 col-md-4 col-6">
                    <div class="product-box">
                        <div class="img-wrapper">
                            <div class="front">
                                <a href="{{route('product-details',[$pro->slug])}}"><img  src="{{asset('uploads/products/images/'.$pro->featured_img)}}"
                                alt="{{$pro->title}}" title="{{$pro->title}}"
                                        class="img-fluid blur-up lazyload bg-img"></a>
                            </div>
                            <div class="back">
                                <a href="{{route('product-details',[$pro->slug])}}"><img  src="{{asset('uploads/products/images/'.$pro->featured_img)}}"
                                alt="{{$pro->title}}" title="{{$pro->title}}"
                                        class="img-fluid blur-up lazyload bg-img"></a>
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
                            {{-- <div class="rating"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                    class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                            </div> --}}
                            <a href="{{route('product-details',[$pro->slug])}}">
                                <h6>{{$pro->title}}</h6>
                            </a>
                            <h4>৳ {{$pro->regular_price}} <del>{{$pro->sale_price}}</del></h4>
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
                                            <li data-unique-id="{{$pro->unique_id}}" data-prod-id="{{$pro->id}}" data-color="{{$color}}" class="setColor2 checkAttr2" style="background-color:{{$color}};"></li>
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
    </section>
    <div class="container">
        <div class="row">
            <div class="col-xl-12 d-flex justify-content-center">
                <div class="cat-pagination mt-20 mb-20">
                    <nav>
                        {!! $search_result->appends(request()->query())->onEachSide(3)->links() !!}
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- product section end -->

@endsection

