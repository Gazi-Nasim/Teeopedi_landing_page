@extends('frontend.layouts.home_layout')
@section('content')
<style>
    .ps >ul{
        padding-left:24px;
        list-style-type:disc !important;
    }
    .ps>ul>li{
        display:block;
    }
</style>
    <!-- breadcrumb start -->
    <div id="success"></div>
    {{--<div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>product</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">product</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>--}}
    <!-- breadcrumb End -->


    <!-- section start -->
    <section>
        <div class="collection-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1 col-sm-2 col-xs-12">
                        <div class="row">
                            <div class="col-12 p-0">
                                <div class="slider-right-nav">
                                    {{ $product->title }}
                                    @if (!empty($merge_images))
                                        @foreach ($merge_images as $key=> $gal)
                                            <div>
                                                <img src="{{ asset('uploads/products/images/' . $gal) }}"
                                                    alt="{{ $product->title }}" title="{{ $product->title }}"
                                                    class="img-fluid blur-up lazyload image_zoom_cls-{{$key}}">
                                            </div>
                                        @endforeach
                                    @else
                                        <div>
                                            <img src="{{ asset('uploads/products/images/' . $product->featured_img) }}"
                                                alt="{{ $product->title }}" title="{{ $product->title }}"
                                                class="img-fluid blur-up lazyload image_zoom_cls-0">
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-sm-10 col-xs-12 order-up">
                        <div class="product-right-slick">
                            @if (!empty($merge_images))
                                @foreach ($merge_images as $key=> $gal)
                                    <div>
                                        <img src="{{ asset('uploads/products/images/' . $gal) }}" alt="{{ $product->title }}"
                                            title="{{ $product->title }}"
                                            class="img-fluid blur-up lazyload image_zoom_cls-{{$key}}">
                                    </div>
                                @endforeach
                            @else
                                <div>
                                    <img src="{{ asset('uploads/products/images/' . $product->featured_img) }}"
                                        alt="{{ $product->title }}" title="{{ $product->title }}"
                                        class="img-fluid blur-up lazyload image_zoom_cls-0">
                                </div>
                            @endif
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="product-right product-description-box">
                            {{-- <div class="product-count">
                                <ul>
                                    <li>
                                        <img src="../assets/images/fire.gif" class="img-fluid" alt="image">
                                        <span class="p-counter">37</span>
                                        <span class="lang">orders in last 24 hours</span>
                                    </li>
                                    <li>
                                        <img src="../assets/images/person.gif" class="img-fluid user_img" alt="image">
                                        <span class="p-counter">44</span>
                                        <span class="lang">active view this</span>
                                    </li>
                                </ul>
                            </div> --}}
                            <h2>{{ $product->title }}</h2>
                            
                            <h3>৳<span class="prod-regular-price">{{ $product->regular_price }}</span> <del>৳<span class="prod-sale-price">{{ $product->sale_price }}</span></del></h3>
                             @if (!empty($p_color))
                                <ul class="color-variant">
                                    <input type="hidden" class="getColor" value="{{ $p_color[0] }}">
                                    @foreach ($p_color as $color)
                                        <li data-prod-id="{{ $product->id }}" data-color="{{ $color }}"
                                            class="{{ $loop->iteration == 1 ? 'active' : '' }} setColor checkAttr"
                                            style="background-color:{{ $color }};"></li>
                                    @endforeach
                                </ul>
                            @endif
                            
                             @php
                                    $checkAttr = '';
                                    if (!empty($p_size) && !empty($p_color)) {
                                        $checkAttr = App\Models\ProductAttribute::where('product_id', $product->id)
                                            ->where('attr_size', intval($p_size[0]))
                                            ->where('attr_color_val', '=', $p_color[0])
                                            ->first();
                                    }
                                @endphp
                                @if (!empty($p_size))
                                    <div class="size-box">
                                        <ul>
                                            <input type="hidden" class="getSize" value="{{ $p_size[0] }}">
                                            @foreach ($p_size as $size)
                                                <li data-prod-id="{{ $product->id }}"
                                                    class="setSize {{ $loop->iteration == 1 ? 'active' : '' }} checkAttr"
                                                    data-size="{{ $size }}"><a
                                                        href="javascript:void(0)">{{ $size }}</a></li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="qty-box">
                                            <!--<div class="input-group quan-coun" style="justify-content:left;">-->
                                            <div class="input-group quan-coun">
                                                <span class="input-group-prepend">
                                                    <button type="button"
                                                        class="quantity-btn qty-count btn quantity-left-minus qty-count--minus">
                                                        <i class="ti-minus"></i>
                                                    </button>
                                                </span>
                                                <input type="text" class="form-control input-number quantity-input product-qty"
                                                    min="1" value="1" step="1" max="100"
                                                    name="quantity">
                                                <span class="input-group-prepend">
                                                    <button type="button"
                                                        class="quantity-btn qty-count btn quantity-right-plus qty-count--add qty-count--add">
                                                        <i class="ti-plus"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="product-buttons">
                                            @if (!empty($checkAttr) && $checkAttr->count() > 0)
                                                <a href="" id="cartEffect" data-prod-id="{{ $product->id }}"
                                                    class="add-to-cart btn btn-solid hover-solid btn-animation {{ $checkAttr->status == 2 ? 'd-none' : '' }}">add
                                                    to cart</a>
                                                    
                                                    <a href="javascript:void(0)" id="buynow" data-prod-id="{{ $product->id }}"
                                                    class="buy-now btn btn-outline hover-solid btn-animation">buy now</a>
                                                <span
                                                    class="stock-out {{ $checkAttr->status == 2 ? '' : 'd-none' }} text-danger fw-bold">Out
                                                    of stock</span>
                                            @else
                                                <a href="javascript:void(0)" id="buynow" data-prod-id="{{ $product->id }}"
                                                    class="buy-now btn btn-solid hover-solid btn-animation">buy now</a>
                                                <a href="javascript:void(0)" id="cartEffect" data-prod-id="{{ $product->id }}"
                                                    class="add-to-cart btn btn-solid hover-solid btn-animation">add to cart</a>
                                            @endif
                                        </div>
                                    </div>
                                
                                
                                
                            </div>
                            
                            @if (!empty($product->short_desc))
                                <div class="border-product">
                                    <h6 class="product-title">product details</h6>
                                    <p>{{ $product->short_desc }}</p>
                                </div>
                            @endif
                            
                           
                            
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </section>
    <!-- Section ends -->
    <!-- product-tab starts -->
    <section class="tab-product m-0">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <ul class="nav nav-tabs nav-material" id="top-tab" role="tablist">
                        <li class="nav-item"><a class="nav-link active" id="top-home-tab" data-bs-toggle="tab"
                                href="#top-home" role="tab" aria-selected="true"><i
                                    class="icofont icofont-ui-home"></i>Details</a>
                            <div class="material-border"></div>
                        </li>
                        {{-- <li class="nav-item"><a class="nav-link" id="profile-top-tab" data-bs-toggle="tab"
                                href="#top-profile" role="tab" aria-selected="false"><i
                                    class="icofont icofont-man-in-glasses"></i>Specification</a>
                            <div class="material-border"></div>
                        </li> --}}
                        {{--<li class="nav-item"><a class="nav-link" id="contact-top-tab" data-bs-toggle="tab"
                                href="#top-contact" role="tab" aria-selected="false"><i
                                    class="icofont icofont-contacts"></i>Video</a>
                            <div class="material-border"></div>
                        </li>--}}
                        {{-- <li class="nav-item"><a class="nav-link" id="review-top-tab" data-bs-toggle="tab"
                                href="#top-review" role="tab" aria-selected="false"><i
                                    class="icofont icofont-contacts"></i>Write Review</a>
                            <div class="material-border"></div>
                        </li> --}}
                    </ul>
                    <div class="tab-content nav-material" id="top-tabContent">
                        <div class="tab-pane fade show active" id="top-home" role="tabpanel"
                            aria-labelledby="top-home-tab">
                            <div class="product-tab-discription">
                                <div class="part ps">
                                    <!--<div class="col-md-6 ps">-->
                                        {!! $product->description !!}
                                        <!--</div>-->
                                    <!--<div class="col-md-6">-->
                                    <!--</div>-->
                                    
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="top-profile" role="tabpanel" aria-labelledby="profile-top-tab">
                            <p>The Model is wearing a white blouse from our stylist's collection, see the image for a
                                mock-up of what the actual blouse would look like.it has text written on it in a black
                                cursive language which looks great on a white color.</p>
                            <div class="single-product-tables">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>Sleeve Length</td>
                                            <td>Sleevless</td>
                                        </tr>
                                        <tr>
                                            <td>Neck</td>
                                            <td>Round Neck</td>
                                        </tr>
                                        <tr>
                                            <td>Occasion</td>
                                            <td>Sports</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>Fabric</td>
                                            <td>Polyester</td>
                                        </tr>
                                        <tr>
                                            <td>Fit</td>
                                            <td>Regular Fit</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="top-contact" role="tabpanel" aria-labelledby="contact-top-tab">
                            <div class="">
                                <iframe width="560" height="315" src="https://www.youtube.com/embed/BUWzX78Ye_8"
                                    allow="autoplay; encrypted-media" allowfullscreen></iframe>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="top-review" role="tabpanel" aria-labelledby="review-top-tab">
                            <form class="theme-form">
                                <div class="form-row row">
                                    <div class="col-md-12">
                                        <div class="media">
                                            <label>Rating</label>
                                            <div class="media-body ms-3">
                                                <div class="rating three-star"><i class="fa fa-star"></i> <i
                                                        class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                                        class="fa fa-star"></i> <i class="fa fa-star"></i></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control" id="name" placeholder="Enter Your name"
                                            required>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" id="email" placeholder="Email" required>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="review">Review Title</label>
                                        <input type="text" class="form-control" id="review"
                                            placeholder="Enter your Review Subjects" required>
                                    </div>
                                    <div class="col-md-12">
                                        <label for="review">Review Title</label>
                                        <textarea class="form-control" placeholder="Wrire Your Testimonial Here"
                                            id="exampleFormControlTextarea1" rows="6"></textarea>
                                    </div>
                                    <div class="col-md-12">
                                        <button class="btn btn-solid" type="submit">Submit YOur
                                            Review</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- product-tab ends -->
   


    <!-- product section start -->
    @if (count($related_products) > 0)
        <section class="section-b-space ratio_asos">
            <div class="container">
                <div class="row">
                    <div class="col-12 product-related">
                        <h2>related products</h2>
                    </div>
                </div>
                <div class="row search-product">
                    @forelse ($productsCollectionWithAttributes as $rel_prod)
                        <div class="col-xl-2 col-md-4 col-6">
                            <div class="product-box">
                                <div class="img-wrapper">
                                    <div class="front">
                                        <a href="{{ route('product-details', $rel_prod->slug) }}"><img
                                                src="{{ asset('uploads/products/images/' . $rel_prod->featured_img) }}"
                                                class="img-fluid blur-up lazyload bg-img" alt="{{ $rel_prod->title }}"
                                                title="{{ $rel_prod->title }}"></a>
                                    </div>
                                    <div class="back">
                                        <a href="{{ route('product-details', $rel_prod->slug) }}"><img
                                                src="{{ asset('uploads/products/images/' . $rel_prod->featured_img) }}"
                                                class="img-fluid blur-up lazyload bg-img" alt="{{ $rel_prod->title }}"
                                                title="{{ $rel_prod->title }}"></a>
                                    </div>
                                    <div class="cart-info cart-wrap">
                                        <button data-unique-id="{{$rel_prod->unique_id}}" data-prod-id="{{$rel_prod->id}}" class="add-to-cart2 add-cart-item-{{$rel_prod->id}}" title="Add to cart"><i class="ti-shopping-cart"></i></button>
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#quick-view" class="quick_view" data-prod-id="{{$rel_prod->id}}" title="Quick View"><i class="ti-search" aria-hidden="true"></i></a>
                                        {{-- <a href="javascript:void(0)" title="Add to Wishlist"><i class="ti-heart" aria-hidden="true"></i></a>
                                        <a href="compare.html" title="Compare"><i class="ti-reload" aria-hidden="true"></i></a> --}}
                                    </div>
                                </div>
                                <div class="product-detail">
                                    {{-- <div class="rating"><i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
                                    class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
                            </div> --}}
                                    <a href="{{ route('product-details', $rel_prod->slug) }}">
                                        <h6>{{ $rel_prod->title }}</h6>
                                    </a>
                                    <h4>৳{{ $rel_prod->regular_price }} <del>{{$rel_prod->sale_price}}</del></h4>
                                    {{-- <ul class="color-variant">
                                <li class="bg-light0"></li>
                                <li class="bg-light1"></li>
                                <li class="bg-light2"></li>
                            </ul> --}}
                                    <div class="parent-attr">
                                        @if (!empty($rel_prod->size_attributes))
                                            <div class="size-box-home mt-2 size-exist-{{ $rel_prod->unique_id }}">
                                                <ul class="">
                                                    <input type="hidden" class="getSize2 getSize2-{{ $rel_prod->unique_id }}"
                                                        value="">
                                                    <select data-unique-id="{{$rel_prod->unique_id}}" data-prod-id="{{ $rel_prod->id }}" class="form-slect setSize2 checkAttr2" name="" id="">
                                                        <option value="">Select Size</option>
                                                        @foreach ($rel_prod->size_attributes as $size)
                                                            <option value="{{ $size }}"> {{ $size }} </option>
                                                        @endforeach
                                                    </select>
                                                </ul>
                                            </div>
                                        @endif
                                        @if (!empty($rel_prod->color_attributes))
                                            <div class="color-box-home color-exist-{{ $rel_prod->unique_id }}">
                                                <ul class="">
                                                    <input type="hidden" class="getColor2 getColor2-{{ $rel_prod->unique_id }}"
                                                        value="">
                                                    {{-- @dd($rel_prod->color_attributes) --}}
                                                    @foreach ($rel_prod->color_attributes as $color)
                                                        <li data-unique-id="{{$rel_prod->unique_id}}" data-prod-id="{{ $rel_prod->id }}"
                                                            data-color="{{ $color }}" class="setColor2 checkAttr2"
                                                            style="background-color:{{ $color }};"></li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif
                                        <small class="error text-danger fw-bold error_{{ $rel_prod->unique_id }}"></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @empty
                    @endforelse
                </div>
            </div>
        </section>
    @endif
    <!-- product section end -->
@endsection