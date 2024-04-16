<?php $date=date('Y-m-d h:i:s');?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>{{ config('app.name', '') }} :: {{$title}}</title>
    <link type="image/x-icon" rel="icon" href="{{asset('assets/images/common/logo.png')}}">
    <meta http-equiv="refresh" content="">
    <meta name="author" content="{{ config('app.name', 'Legacyn') }}">
    <meta name="Developer" content="">
    <meta name="resource-type" content="document">
    <meta name="contact" content="">
    <meta name="copyright" content="Copyright (c) <?php echo date(" Y"); ?>. All Rights &reg; Reserved by {{ config('app.name', 'Legacyn') }}">

    <meta name="robots" content="index, follow">
    <meta name="googlebot" content="index, follow">
    <meta name="googlebot-news" content="index, follow">
    <meta name="msnbot" content="index, follow">

    <meta property="fb:app_id" content="">
    <meta property="og:site_name" content="{{ config('app.name', 'Legacyn') }}">
    <meta property="og:image" content="">
    <meta property="og:title" content="">
    <meta property="og:description" content="">
    <meta property="og:url" content="">
    <meta property="og:type" content="">
    <meta property="og:locale" content="en_US">
    <meta name="twitter:card" content="" />
    <meta name="twitter:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:site" content="{{ config('app.name', 'Legacyn') }}" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:creator" content="{{ config('app.name', 'Legacyn') }}" />
    <link rel="image_src" href="">
    <link rel="canonical" href="">
    <link rel="shortcut icon" href="">
    <!--Google font-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Yellowtail&display=swap" rel="stylesheet">

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/font-awesome.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css">
    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/slick.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/slick-theme.css')}}">

    <!-- Animate icon -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/animate.css')}}">

    <!-- Themify icon -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/themify-icons.css')}}">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/bootstrap.css')}}">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/custom.css')}}">
    @stack('css')
</head>

<body class="theme-color-3">

    <!-- loader start -->
    {{-- <div class="loader_skeleton">
        <header>
            <div class="top-header d-none d-sm-block">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="header-contact">
                                <ul>
                                    <li>Welcome to Our store {{ config('app.name', 'Legacyn') }}</li>
                                    <li><i class="fa fa-phone" aria-hidden="true"></i>Call Us: 123 - 456 - 7890</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 text-end">
                            <ul class="header-dropdown">
                                @auth
                                 <li class="onhover-dropdown mobile-account">
                                    <i class="fa fa-user" aria-hidden="true"></i> {{auth()->user()->name}}
                                </li>
                                @else
                                <li class="onhover-dropdown mobile-account">
                                    <i class="fa fa-user" aria-hidden="true"></i> My Account
                                </li>
                                @endauth
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container layout3-menu">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="main-menu">
                            <div class="menu-left around-border">
                                <div class="navbar"> <a href="#" onclick="openNav()"><i class="fa fa-bars sidebar-bar"
                                            aria-hidden="true"></i></a>
                                </div>
                                <div class="main-menu-right">
                                    <nav>
                                        <div class="toggle-nav"><i class="fa fa-bars sidebar-bar"></i></div>
                                        <ul class="sm pixelstrap sm-horizontal light-font-menu">
                                            <li>
                                                <div class="mobile-back text-end">Back<i class="fa fa-angle-right ps-2"
                                                        aria-hidden="true"></i></div>
                                            </li>
                                            <li>
                                                <a href="index.html">Home</a>
                                            </li>
                                            <li>
                                                <a href="#">category</a>
                                            </li>
                                            <li>
                                                <a href="{{route('products')}}">product</a>
                                            </li>
                                            <li><a href="{{route('blogs')}}">blog</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="absolute-logo">
                                <div class="brand-logo">
                                    <a href="#"><img alt="" src="{{asset('assets/images/icon/layout3/logo.png')}}"></a>
                                </div>
                            </div>
                            <div class="">
                                <div class="menu-right pull-right">
                                    <div>
                                        <div class="icon-nav d-none d-sm-block">
                                            <ul>
                                                <li class="onhover-div mobile-search">
                                                    <div><img alt="" src="{{asset('assets/images/icon/layout4/search.png')}}"
                                                            onclick="openSearch()" class="img-fluid blur-up lazyload">
                                                        <i class="ti-search" onclick="openSearch()"></i>
                                                    </div>
                                                </li>
                                                <li class="onhover-div mobile-cart">
                                                    <div href="javascript:void(0)" onclick="openCart()"><img alt=""
                                                        src="{{asset('assets/images/icon/layout4/cart.png')}}"
                                                        class="img-fluid blur-up lazyload"> <i
                                                        class="ti-shopping-cart"></i>
                                                        <span class="count-item badge bg-warning">0</span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="home-slider">
            <div class="home"></div>
        </div>
        <section class="beauty-about">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-6 col-md-12 offset-xl-1 text-center">
                        <div class="ldr-img"></div>
                    </div>
                    <div class="col-xl-5 col-lg-6 col-md-12">
                        <div class="about-section">
                            <div>
                                <div class="product-para">
                                    <p class="first"></p>
                                    <p class="second"></p>
                                </div>
                                <div class="service small-section pb-0">
                                    <div class="row">
                                        <div class="col-sm-4 service-block1">
                                            <svg></svg>
                                            <h5></h5>
                                        </div>
                                        <div class="col-sm-4 service-block1">
                                            <svg></svg>
                                            <h5></h5>
                                        </div>
                                        <div class="col-sm-4 service-block1">
                                            <svg></svg>
                                            <h5></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="container section-b-space">
            <div class="row section-t-space">
                <div class="col-lg-6 offset-lg-3">
                    <div class="product-para">
                        <p class="first"></p>
                        <p class="second"></p>
                    </div>
                </div>
                <div class="col-12">
                    <div class="no-slider row">
                        <div class="product-box">
                            <div class="img-wrapper"></div>
                            <div class="product-detail">
                                <h4></h4>
                                <h5></h5>
                                <h5 class="second"></h5>
                                <h6></h6>
                            </div>
                        </div>
                        <div class="product-box">
                            <div class="img-wrapper"></div>
                            <div class="product-detail">
                                <h4></h4>
                                <h5></h5>
                                <h5 class="second"></h5>
                                <h6></h6>
                            </div>
                        </div>
                        <div class="product-box">
                            <div class="img-wrapper"></div>
                            <div class="product-detail">
                                <h4></h4>
                                <h5></h5>
                                <h5 class="second"></h5>
                                <h6></h6>
                            </div>
                        </div>
                        <div class="product-box">
                            <div class="img-wrapper"></div>
                            <div class="product-detail">
                                <h4></h4>
                                <h5></h5>
                                <h5 class="second"></h5>
                                <h6></h6>
                            </div>
                        </div>
                        <div class="product-box">
                            <div class="img-wrapper"></div>
                            <div class="product-detail">
                                <h4></h4>
                                <h5></h5>
                                <h5 class="second"></h5>
                                <h6></h6>
                            </div>
                        </div>
                        <div class="product-box">
                            <div class="img-wrapper"></div>
                            <div class="product-detail">
                                <h4></h4>
                                <h5></h5>
                                <h5 class="second"></h5>
                                <h6></h6>
                            </div>
                        </div>
                        <div class="product-box">
                            <div class="img-wrapper"></div>
                            <div class="product-detail">
                                <h4></h4>
                                <h5></h5>
                                <h5 class="second"></h5>
                                <h6></h6>
                            </div>
                        </div>
                        <div class="product-box">
                            <div class="img-wrapper"></div>
                            <div class="product-detail">
                                <h4></h4>
                                <h5></h5>
                                <h5 class="second"></h5>
                                <h6></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <!-- loader end -->


    <!-- header start -->
    @include('frontend.include.header')
    <!-- header end -->
    @yield('content')
    <!--footer section -->
    @include('frontend.include.footer')
    <!--footer section end -->


    <!--modal popup start-->
    {{-- <div class="modal fade bd-example-modal-lg theme-modal" id="exampleModal" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body modal3">
                    <div class="container-fluid p-0">
                        <div class="row">
                            <div class="col-12">
                                <div class="modal-bg">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <div class="offer-content"><img src="{{asset('assets/images/Offer-banner.png')}}"
                                            class="img-fluid blur-up lazyload" alt="">
                                        <h2>newsletter</h2>
                                        <form
                                            action="https://pixelstrap.us19.list-manage.com/subscribe/post?u=5a128856334b598b395f1fc9b&amp;id=082f74cbda"
                                            class="auth-form needs-validation" method="post"
                                            id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form"
                                            target="_blank">
                                            <div class="form-group mx-sm-3">
                                                <input type="text" class="form-control" name="EMAIL" id="mce-EMAIL"
                                                    placeholder="Enter your email" required="required">
                                                <button type="submit" class="btn btn-solid"
                                                    id="mc-submit">subscribe</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}
    <!--modal popup end-->


    <!-- Quick-view modal popup start-->
    <div class="modal fade bd-example-modal-lg theme-modal" id="quick-view" tabindex="-1" role="dialog"
        aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content quick-view-modal">
                <div class="modal-body">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <div class="row" id="qk_view">
                        <!-- <div class="col-lg-6 col-xs-12">
                            <div class="quick-view-img"><img src="{{asset('assets/images/pro3/1.jpg')}}" alt=""
                                    class="img-fluid blur-up lazyload"></div>
                            </div>
                            <div class="col-lg-6 rtl-text">
                            <div class="product-right">
                                <h2>Women Pink Shirt</h2>
                                <h3>$32.96</h3>
                                <ul class="color-variant">
                                    <li class="bg-light0"></li>
                                    <li class="bg-light1"></li>
                                    <li class="bg-light2"></li>
                                </ul>
                                <div class="border-product">
                                    <h6 class="product-title">product details</h6>
                                    <p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium
                                        doloremque laudantium</p>
                                </div>
                                <div class="product-description border-product">
                                    <div class="size-box">
                                        <ul>
                                            <li class="active"><a href="javascript:void(0)">s</a></li>
                                            <li><a href="javascript:void(0)">m</a></li>
                                            <li><a href="javascript:void(0)">l</a></li>
                                            <li><a href="javascript:void(0)">xl</a></li>
                                        </ul>
                                    </div>
                                    <h6 class="product-title">quantity</h6>
                                    <div class="qty-box">
                                        <div class="input-group"><span class="input-group-prepend"><button type="button"
                                                    class="btn quantity-left-minus" data-type="minus" data-field=""><i
                                                        class="ti-angle-left"></i></button> </span>
                                            <input type="text" name="quantity" class="form-control input-number"
                                                value="1"> <span class="input-group-prepend"><button type="button"
                                                    class="btn quantity-right-plus" data-type="plus" data-field=""><i
                                                        class="ti-angle-right"></i></button></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-buttons"><a href="#" class="btn btn-solid">add to cart</a> <a
                                        href="#" class="btn btn-solid">view detail</a></div>
                            </div>
                            </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- tap to top -->
    <div class="tap-top">
        <div><i class="fa fa-angle-double-up"></i></div>
    </div>
    <!-- tap to top End -->


    <!-- latest jquery-->
    <script src="{{asset('assets/js/jquery-3.3.1.min.js')}}"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>

    <!-- menu js-->
    <script src="{{asset('assets/js/menu.js')}}"></script>

    <!-- lazyload js-->
    <script src="{{asset('assets/js/lazysizes.min.js')}}"></script>

    <!-- slick js-->
    <script src="{{asset('assets/js/slick.js')}}"></script>

    <script src="{{asset('assets/js/jquery.elevatezoom.js')}}"></script>

    <!-- Bootstrap js-->
    <script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>

    <!-- Bootstrap Notification js-->
    <script src="{{asset('assets/js/bootstrap-notify.min.js')}}"></script>

    <!-- Theme js-->
    <script src="{{asset('assets/js/script.js')}}"></script>

    <script>
        function openSearch() {
            document.getElementById("search-overlay").style.display = "block";
        }

        function closeSearch() {
            document.getElementById("search-overlay").style.display = "none";
        }
        $(document).on('click', '.checkAttr', function () {
            var productID = $(this).data('prod-id');
            var prodSize = '';
            var prodColor = '';
            prodSize = $(this).data('size');
            if (prodSize == null) {
                prodSize = $('.getSize').val();
            }
            prodColor = $(this).data('color');
            if (prodColor == null) {
                prodColor = $('.getColor').val();
            }
            var cartData = {
                "productID": productID,
                "prodSize": prodSize,
                "prodColor": prodColor,
                "_token": "{{csrf_token()}}",
            }
            // console.log(productID +' '+prodSize+' '+prodColor+' ');
            $.ajax({
                url: '/get/product/attribute/',
                method: "POST",
                dataType: "json",
                data: cartData,
                success: function (data) {
                    $('.prod-regular-price').text(data.getAttr.attr_price)
                    if (data.getAttr.status == 2) {
                        $('.add-to-cart').addClass('d-none')
                        $('.stock-out').text('Out of stock')
                    } else {
                        $('.add-to-cart').removeClass('d-none')
                        $('.stock-out').text('')
                    }
                    // console.log(data.getAttr);
                }
            });
        });

        // $('.parent-attr').on('change click', '.setSize2, .setColor2', function () {
        //     var error = '';
        //     var prodSize = '';
        //     var prodColor = '';
        //     var productID = $(this).data('prod-id');
        //     var sizeExist = '.size-exist-' + productID;
        //     var colorExist = '.color-exist-' + productID;
        //     var prodSize = $('.getSize2-' + productID).val();
        //     var prodColor = $(this).data('color');

        //     if (prodSize === '' && prodColor === '') {
        //         console.log('Size and Color are not selected');
        //     } else if (prodSize === '') {
        //         console.log('Size is not selected');
        //         if ($('.parent-attr').find(sizeExist).length > 0 && $('.parent-attr').find(colorExist).length > 0 && prodColor === '') {
        //             console.log('Color is required');
        //         }
        //     } else if (prodColor === '') {
        //         console.log('Color is not selected');
        //         if ($('.parent-attr').find(sizeExist).length > 0 && $('.parent-attr').find(colorExist).length > 0 && prodSize === '') {
        //             console.log('Size is required');
        //         }
        //     } else {
        //         console.log(prodSize + ' ' + prodColor);
        //     }
        //     var cartData = {
        //         "productID": productID,
        //         "prodSize": prodSize,
        //         "prodColor": prodColor,
        //         "_token": "{{csrf_token()}}",
        //     }
        //     // console.log(productID + ' ' + prodSize + ' ' + prodColor + ' ');
        //     $.ajax({
        //         url: '/get/product/attribute/',
        //         method: "POST",
        //         dataType: "json",
        //         data: cartData,
        //         success: function (data) {
        //             $('.prod-regular-price').text(data.getAttr.attr_price)
        //             if (data.getAttr.status == 2) {
        //                 $('.add-to-cart').addClass('d-none')
        //                 $('.stock-out').text('Out of stock')
        //             } else {
        //                 $('.add-to-cart').removeClass('d-none')
        //                 $('.stock-out').text('')
        //             }
        //             // console.log(data.getAttr);
        //         }
        //     });
        // });
        $(document).on('click', '.add-to-cart', function (e) {
            e.preventDefault();
            $('.quantity_error').text('');
            var prodSize = '';
            var prodColor = '';
            var prodID = $(this).data('prod-id');
            var quantity = $('#product_qty').val();
            var prodSize = $('.getSize').val();
            var prodColor = $('.getColor').val();
            if (prodSize == undefined) {
                prodSize = '';
            }
            if (prodColor == undefined) {
                prodColor = '';
            }
            if (quantity == undefined) {
                quantity = 1;
            }
            var cartData = {
                "prodSize": prodSize,
                "prodColor": prodColor,
                "quantity": quantity,
                "_token": "{{csrf_token()}}",
            }
            // console.log(cartData)
            $.ajax({
                url: '/cart/' + prodID,
                type: "POST",
                dataType: "json",
                data: cartData,
                success: function (response) {
                    // console.log(response)
                    if (response.status == 'success') {
                        $('#success').html('<div class="success"><i class="fa fa-check-circle"></i> ' + response.success + '</div>').fadeIn().delay(4000).fadeOut('fast')
                        $('.count-item').html(response.cart_count)
                    } else {
                        if (response.errors) {
                            $('.quantity_error').text(response.errors);
                            if (response.errors.quantity) {
                                $('.quantity_error').text(response.errors.quantity[0]);
                            }
                        }
                    }
                }
            });
        });
        $(document).on('click', '.add-to-cart2', function (e) {
            e.preventDefault();
            $('.error').text('')
            $('.quantity_error').text('');
            var error = 0;
            var prodSize = '';
            var prodColor = '';
            var uniqueId =$(this).data('unique-id');
            var prodID = $(this).data('prod-id');
            var sizeExist = '.size-exist-' + uniqueId;
            var colorExist = '.color-exist-' + uniqueId;
            var quantity = $('#product_qty').val();
            console.log(sizeExist + ' '+ colorExist + ' '+ uniqueId);
            if ($('.parent-attr').find(sizeExist).length > 0 && $('.parent-attr').find(colorExist).length > 0) {
                var prodSize = $('.getSize2-' + uniqueId).val();
                var prodColor = $('.getColor2-' + uniqueId).val();
                if (prodSize == undefined || !prodSize) {
                    error = 1;
                    $('.error_' + uniqueId).text('Select Size')
                }
                if (prodColor == undefined || !prodColor) {
                    error = 1;
                    $('.error_' + uniqueId).text('Select Color')
                }
            }
            if (quantity == undefined) {
                quantity = 1;
            }
            var cartData = {
                "prodSize": prodSize,
                "prodColor": prodColor,
                "quantity": quantity,
                "_token": "{{csrf_token()}}",
            }
            if(error==0){
                $.ajax({
                    url: '/cart/' + prodID,
                    type: "POST",
                    dataType: "json",
                    data: cartData,
                    success: function (response) {
                        console.log(response)
                        if (response.status == 'success') {
                             $.notify({
                                icon: 'fa fa-check',
                                title: 'Success!',
                                message: 'Item Successfully added to your cart'
                            }, {
                                element: 'body',
                                position: null,
                                type: "success",
                                allow_dismiss: true,
                                newest_on_top: false,
                                showProgressbar: true,
                                placement: {
                                    from: "top",
                                    align: "right"
                                },
                                offset: 20,
                                spacing: 10,
                                z_index: 1031,
                                delay: 5000,
                                animate: {
                                    enter: 'animated fadeInDown',
                                    exit: 'animated fadeOutUp'
                                },
                                icon_type: 'class',
                                template: '<div data-notify="container" class="col-xs-11 col-sm-3 alert alert-{0}" role="alert">' +
                                    '<button type="button" aria-hidden="true" class="btn-close" data-notify="dismiss"></button>' +
                                    '<span data-notify="icon"></span> ' +
                                    '<span data-notify="title">{1}</span> ' +
                                    '<span data-notify="message">{2}</span>' +
                                    '<div class="progress" data-notify="progressbar">' +
                                    '<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
                                    '</div>' +
                                    '<a href="{3}" target="{4}" data-notify="url"></a>' +
                                    '</div>'
                            });
                            // $('#success').html('<div class="success"><i class="fa fa-check-circle"></i> ' + response.success + '</div>').fadeIn().delay(4000).fadeOut('fast')
                            $('.count-item').html(response.cart_count)
                        } else {
                            if (response.errors) {
                                $('.quantity_error').text(response.errors);
                                if (response.errors.quantity) {
                                    $('.quantity_error').text(response.errors.quantity[0]);
                                }
                                $('.error_' + uniqueId).text('Out of stock')
                            }
                        }
                    }
                });
            }
        });
        // set and get size value
        $(document).on('click', '.setSize', function () {
            var size = $(this).data('size')
            $('.getSize').val(size)
            $('.setSize').removeClass('active')
            $(this).addClass('active')
        });
        // set and get color value
        $(document).on('click', '.setColor', function () {
            var color = $(this).data('color')
            $('.getColor').val(color)
            $('.setColor').removeClass('active')
            $(this).addClass('active')
        });
        // set and get size value multi product
        $(document).on('change', '.setSize2', function () {
            var prodID = $(this).data('prod-id');
            var uniqueId = $(this).data('unique-id');
            var size = $(this).val()
            $('.getSize2' + uniqueId).val('')
            $('.getSize2-' + uniqueId).val(size)
            $('.setSize2').removeClass('active')
            $('.error').text('')
            $(this).addClass('active')
        });
        // set and get color value multi product
        $(document).on('click', '.setColor2', function () {
            var prodID = $(this).data('prod-id');
            var uniqueId = $(this).data('unique-id');
            var color = $(this).data('color')
            $('.getColor2' + uniqueId).val('')
            $('.getColor2-' + uniqueId).val(color)
            $('.setColor2').removeClass('active')
            $('.error').text('')
            $(this).addClass('active')
        });
        $(document).on('click', '.quick_view', function (e) {
            e.preventDefault();
            var prodID = $(this).data('prod-id');
            $.ajax({
                url: '/quick_view/' + prodID,
                type: "GET",
                success: function (response) {
                    $('#qk_view').html(response)
                }
            });
        });
        //product page increase quantity
        $(document).on('click', '.quan-coun .qty-count--add', function (e) {
            var qty = parseInt($(".quantity-input").val());
            var qt_max = 100
            if (qty < qt_max || !qt_max) {
                qty += 1;
                $(".quantity-input").val(qty);
            }
        });
        //product page decrease quantity
        $(document).on('click', '.quan-coun .qty-count--minus', function (e) {
            var qty = parseInt($(".quantity-input").val());
            if (qty > 1) {
                qty -= 1;
                $(".quantity-input").val(qty);
            }
        });
        $(document).on('click', '.buy-now', function (e) {
            e.preventDefault();
            $('.quantity_error').text('');
            var prodSize = '';
            var prodColor = '';
            var prodID = $(this).data('prod-id');
            var quantity = $('.product-qty').val();
            var prodSize = $('.getSize').val();
            var prodColor = $('.getColor').val();
            if (prodSize == undefined) {
                prodSize = '';
            }
            if (prodColor == undefined) {
                prodColor = '';
            }
            if (quantity == undefined) {
                quantity = 1;
            }
            var cartData = {
                "prodSize": prodSize,
                "prodColor": prodColor,
                "quantity": quantity,
                "_token": "{{csrf_token()}}",
            }
            $.ajax({
                url: '/cart/buy/' + prodID,
                type: "POST",
                dataType: "json",
                data: cartData,
                success: function (response) {
                    $(window).scrollTop({ top: 0, behavior: 'smooth' });
                    var countitem = 0;
                    $('.quantity_error').text('');
                    if (response.status == 'success') {
                        $('#success').html('<div class="success"><i class="fa fa-check-circle"></i> ' + response.success + '</div>').fadeIn().delay(4000).fadeOut('fast')
                        $('.count-item').html(response.cart_count)
                        window.location.assign("{{route('checkout')}}")
                    } else {
                        if (response.errors) {
                            $('.quantity_error').text(response.errors);
                            if (response.errors.quantity) {
                                $('.quantity_error').text(response.errors.quantity[0]);
                            }
                        }
                    }
                }
            });
        });
    </script>
</body>

</html>