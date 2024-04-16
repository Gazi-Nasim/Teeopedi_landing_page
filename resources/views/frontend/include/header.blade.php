    @php $category =App\Models\Category::where('parent_id',0)->where('status',1)->with('children')->get(); @endphp
    <header>
        <div class="mobile-fix-option"></div>
        <div class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header-contact">
                            <ul>
                                <li>Welcome to our store @if(!empty($settings)){{$settings->site_title}}@endif</li>
                                <li><i class="fa fa-phone" aria-hidden="true"></i>Call Us:  @if(!empty($settings)){{$settings->phone}}@endif</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 text-end">
                        <ul class="header-dropdown">
                            {{-- <li class="mobile-wishlist"><a href="#"><i class="fa fa-heart" aria-hidden="true"></i></a> </li> --}}
                            <li class="onhover-dropdown mobile-account">
                                @if(!auth()->check())
                                <i class="fa fa-user" aria-hidden="true"></i> My Account
                                <ul class="onhover-show-div">
                                    <li><a href="{{route('user-login')}}">Login</a></li>
                                    <li><a href="{{route('user-register')}}">register</a></li>
                                </ul>
                                @else
                                <i class="fa fa-user" aria-hidden="true"></i> {{auth()->user()->name}}
                                <ul class="onhover-show-div">
                                    @if(auth()->user()->role==1)
                                        <li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
                                        {{-- <li>
                                            <a href="{{route('logout.custom')}}">Logout</a>
                                            <form id="logout-form" action="{{ route('logout.custom') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                        </li> --}}
                                    @elseif(auth()->user()->role==2)
                                        <li><a href="{{route('user.dashboard')}}">Dashboard</a></li>
                                        <li>
                                            <a href="{{route('logout.custom')}}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
                                            <form id="logout-form" action="{{ route('logout.custom') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                        </li>
                                    @endif
                                </ul>
                                @endif
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="main-menu">
                        <div class="menu-left">
                            <div class="navbar">
                                <a href="javascript:void(0)" onclick="openNav()">
                                    <div class="bar-style"><i class="fa fa-bars sidebar-bar" aria-hidden="true"></i>
                                    </div>
                                </a>
                                <div id="mySidenav" class="sidenav">
                                    <a href="javascript:void(0)" class="sidebar-overlay" onclick="closeNav()"></a>
                                    <nav>
                                        <div onclick="closeNav()">
                                            <div class="sidebar-back text-start"><i class="fa fa-angle-left pe-2"
                                                    aria-hidden="true"></i> Back</div>
                                        </div>
                                        <ul id="sub-menu" class="sm pixelstrap sm-vertical">
                                            {{-- <li>
                                                <a href="#">clothing</a>
                                                <ul class="mega-menu clothing-menu">
                                                    <li>
                                                        <div class="row m-0">
                                                            <div class="col-xl-4">
                                                                <div class="link-section">
                                                                    <h5>women's fashion</h5>
                                                                    <ul>
                                                                        <li><a href="#">dresses</a></li>
                                                                        <li><a href="#">skirts</a></li>
                                                                        <li><a href="#">westarn wear</a></li>
                                                                        <li><a href="#">ethic wear</a></li>
                                                                        <li><a href="#">sport wear</a></li>
                                                                    </ul>
                                                                    <h5>men's fashion</h5>
                                                                    <ul>
                                                                        <li><a href="#">sports wear</a></li>
                                                                        <li><a href="#">western wear</a></li>
                                                                        <li><a href="#">ethic wear</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-4">
                                                                <div class="link-section">
                                                                    <h5>accessories</h5>
                                                                    <ul>
                                                                        <li><a href="#">fashion jewellery</a></li>
                                                                        <li><a href="#">caps and hats</a></li>
                                                                        <li><a href="#">precious jewellery</a></li>
                                                                        <li><a href="#">necklaces</a></li>
                                                                        <li><a href="#">earrings</a></li>
                                                                        <li><a href="#">wrist wear</a></li>
                                                                        <li><a href="#">ties</a></li>
                                                                        <li><a href="#">cufflinks</a></li>
                                                                        <li><a href="#">pockets squares</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="col-xl-4"><a href="#"
                                                                    class="mega-menu-banner"><img
                                                                        src="{{asset('assets/images/mega-menu/fashion.jpg')}}"
                                                                        alt="" class="img-fluid blur-up lazyload"></a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="#">bags</a>
                                                <ul>
                                                    <li><a href="#">shopper bags</a></li>
                                                    <li><a href="#">laptop bags</a></li>
                                                    <li><a href="#">clutches</a></li>
                                                    <li>
                                                        <a href="#">purses</a>
                                                        <ul>
                                                            <li><a href="#">purses</a></li>
                                                            <li><a href="#">wallets</a></li>
                                                            <li><a href="#">leathers</a></li>
                                                            <li><a href="#">satchels</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="#">footwear</a>
                                                <ul>
                                                    <li><a href="#">sport shoes</a></li>
                                                    <li><a href="#">formal shoes</a></li>
                                                    <li><a href="#">casual shoes</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">watches</a></li>
                                            <li>
                                                <a href="#">Accessories</a>
                                                <ul>
                                                    <li><a href="#">fashion jewellery</a></li>
                                                    <li><a href="#">caps and hats</a></li>
                                                    <li><a href="#">precious jewellery</a></li>
                                                    <li>
                                                        <a href="#">more..</a>
                                                        <ul>
                                                            <li><a href="#">necklaces</a></li>
                                                            <li><a href="#">earrings</a></li>
                                                            <li><a href="#">wrist wear</a></li>
                                                            <li>
                                                                <a href="#">accessories</a>
                                                                <ul>
                                                                    <li><a href="#">ties</a></li>
                                                                    <li><a href="#">cufflinks</a></li>
                                                                    <li><a href="#">pockets squares</a></li>
                                                                    <li><a href="#">helmets</a></li>
                                                                    <li><a href="#">scarves</a></li>
                                                                    <li>
                                                                        <a href="#">more...</a>
                                                                        <ul>
                                                                            <li><a href="#">accessory gift sets</a></li>
                                                                            <li><a href="#">travel accessories</a></li>
                                                                            <li><a href="#">phone cases</a></li>
                                                                        </ul>
                                                                    </li>
                                                                </ul>
                                                            </li>
                                                            <li><a href="#">belts & more</a></li>
                                                            <li><a href="#">wearable</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="#">house of design</a></li> --}}
                                            @forelse($category as $cat)
                                            <li>
                                                @php $c = $cat->children->where('status',1); @endphp
                                                <a href="{{route('category',$cat->slug)}}">{{$cat->title}}</a>
                                                @if(!empty($c)  && $c->count() > 0)
                                                <ul>
                                                    @foreach($cat->children->where('status',1) as $child)
                                                    @if(!empty($child) && $child->count() > 0)
                                                    <li><a href="{{route('category',$child->slug)}}">{{$child->title}}</a></li>
                                                    @endif
                                                    @endforeach
                                                    {{-- <li>
                                                        <a href="#">more</a>
                                                        <ul>
                                                            <li><a href="#">fragrances</a></li>
                                                            <li><a href="#">luxury beauty</a></li>
                                                            <li><a href="#">hair care</a></li>
                                                            <li><a href="#">tools & brushes</a></li>
                                                        </ul>
                                                    </li> --}}
                                                </ul>
                                                @endif
                                            </li>
                                            @empty
                                            @endforelse
                                            {{-- <li><a href="#">home & decor</a></li>
                                            <li><a href="#">kitchen</a></li> --}}
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="brand-logo">
                                <a href="{{route('index')}}">
                                    @if(!empty($settings) && !empty($settings->logo))
                                        <img src="{{asset('uploads/settings/logo/'.$settings->logo)}}" class="img-fluid blur-up lazyload" alt="@if(!empty($settings)){{$settings->site_title}}@endif">
                                    @else
                                    <img src="{{asset('assets/images/icon/layout3/logo.png')}}" class="img-fluid blur-up lazyload" alt="@if(!empty($settings)){{$settings->site_title}}@endif">
                                    @endif
                                </a>
                            </div>
                        </div>
                        <div class="menu-right pull-right">
                            <div>
                                <nav id="main-nav">
                                    <div class="toggle-nav"><i class="fa fa-bars sidebar-bar"></i></div>
                                    <ul id="main-menu" class="sm pixelstrap sm-horizontal">
                                        <li>
                                            <div class="mobile-back text-end">Back<i class="fa fa-angle-right ps-2"
                                                    aria-hidden="true"></i></div>
                                        </li>
                                        <li><a href="{{route('index')}}">Home</a></li>
                                        <li class="mega" id="hover-cls">
                                            {{-- <a href="#">feature <div class="lable-nav">new</div></a> --}}
                                            <a href="#">category</a>
                                            <ul class="mega-menu full-mega-menu">
                                                <li>
                                                    <div class="container">
                                                        <div class="row">
                                                            @forelse($category as $cat)
                                                            @php $c = $cat->children->where('status',1); @endphp
                                                                <div class="col mega-box">
                                                                    <div class="link-section">
                                                                        <div class="menu-title">
                                                                            <h5><a href="{{route('category',$cat->slug)}}"><strong>{{$cat->title}}</strong></a></h5>
                                                                        </div>
                                                                        <div class="menu-content">
                                                                            @if(!empty($c)  && $c->count() > 0)
                                                                            <ul>
                                                                                @foreach($cat->children->where('status',1) as $child)
                                                                                    @if(!empty($child) && $child->count() > 0)
                                                                                    <li><a href="{{route('category',$child->slug)}}">{{$child->title}}</a></li>
                                                                                    @endif
                                                                                @endforeach
                                                                            </ul>
                                                                            @endif
                                                                        </div>
                                                                        {{-- <div class="menu-title mt-2">
                                                                            <h5>elements</h5>
                                                                        </div>
                                                                        <div class="menu-content">
                                                                            <ul>
                                                                                <li><a href="elements.html">
                                                                                        elements page<i
                                                                                            class="ms-2 fa fa-bolt icon-trend"
                                                                                            aria-hidden="true"></i>
                                                                                    </a></li>
                                                                            </ul>
                                                                        </div> --}}
                                                                    </div>
                                                                </div>
                                                            @empty
                                                            @endforelse
                                                            {{-- <div class="col mega-box">
                                                                <div class="link-section">
                                                                    <div class="menu-title">
                                                                        <h5>email template</h5>
                                                                    </div>
                                                                    <div class="menu-content">
                                                                        <ul>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/welcome.html">welcome</a></li>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/new-product-announcement.html">announcement</a></li>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/abandonment-email.html">abandonment</a></li>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/offer.html">offer</a></li>
                                                                            <li><a target="_blank"
                                                                                href="../email-template/offer-2.html">offer 2</a></li>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/product-review.html">review</a></li>
                                                                            <li><a target="_blank"
                                                                                href="../email-template/featured-products.html">featured product</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col mega-box">
                                                                <div class="link-section">
                                                                    <div class="menu-title">
                                                                        <h5>email template</h5>
                                                                    </div>
                                                                    <div class="menu-content">
                                                                        <ul>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/black-friday.html">black friday</a></li>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/christmas.html">christmas</a></li>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/cyber-monday.html">cyber-monday</a></li>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/flash-sale.html">flash sale</a></li>
                                                                            <li><a target="_blank"
                                                                                href="../email-template/email-order-success.html">order success</a></li>
                                                                            <li><a target="_blank"
                                                                                    href="../email-template/email-order-success-two.html">order success 2</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col mega-box">
                                                                <div class="link-section">
                                                                    <div class="menu-title">
                                                                        <h5>cookie bar</h5>
                                                                    </div>
                                                                    <div class="menu-content">
                                                                        <ul>
                                                                            <li><a href="{{route('index')}}">bottom<i
                                                                                        class="ms-2 fa fa-bolt icon-trend"
                                                                                        aria-hidden="true"></i></a></li>
                                                                            <li><a href="fashion-4.html">bottom left</a>
                                                                            </li>
                                                                            <li><a href="bicycle.html">bottom right</a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="menu-title mt-2">
                                                                        <h5>search</h5>
                                                                    </div>
                                                                    <div class="menu-content">
                                                                        <ul>
                                                                            <li><a href="marketplace-demo-2.html">ajax
                                                                                    search<i
                                                                                        class="ms-2 fa fa-bolt icon-trend"
                                                                                        aria-hidden="true"></i></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col mega-box">
                                                                <div class="link-section">
                                                                    <div class="menu-title">
                                                                        <h5>model</h5>
                                                                    </div>
                                                                    <div class="menu-content">
                                                                        <ul>
                                                                            <li><a href="{{route('index')}}">Newsletter</a></li>
                                                                            <li><a href="{{route('index')}}">exit<i
                                                                                        class="ms-2 fa fa-bolt icon-trend"
                                                                                        aria-hidden="true"></i></a></li>
                                                                            <li><a href="christmas.html">christmas</a>
                                                                            </li>
                                                                            <li><a href="furniture-3.html">black
                                                                                    friday</a></li>
                                                                            <li><a href="fashion-4.html">cyber
                                                                                    monday</a></li>
                                                                            <li><a href="marketplace-demo-3.html">new
                                                                                    year</a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col mega-box">
                                                                <div class="link-section">
                                                                    <div class="menu-title">
                                                                        <h5>add to cart</h5>
                                                                    </div>
                                                                    <div class="menu-content">
                                                                        <ul>
                                                                            <li><a href="nursery.html">cart modal
                                                                                    popup</a></li>
                                                                            <li><a href="vegetables.html">qty. counter
                                                                                    <i class="fa fa-bolt icon-trend"
                                                                                        aria-hidden="true"></i></a></li>
                                                                            <li><a href="bags.html">cart top</a></li>
                                                                            <li><a href="shoes.html">cart bottom</a>
                                                                            </li>
                                                                            <li><a href="watch.html">cart left</a></li>
                                                                            <li><a href="tools.html">cart right</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div> --}}
                                                        </div>
                                                        {{-- <div class="row">
                                                            <div class="col-12">
                                                                <img src="{{asset('assets/images/menu-banner.jpg')}}"
                                                                    class="img-fluid mega-img">
                                                            </div>
                                                        </div> --}}
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        {{-- <li>
                                            <a href="#">shop</a>
                                            <ul>
                                                <li><a href="category-page(vegetables).html">tab style<span
                                                    class="new-tag">new</span></a></li>
                                                <li><a href="category-page(top-filter).html">top filter</a></li>
                                                <li><a href="category-page(modern).html">modern</a></li>
                                                <li><a href="category-page.html">left sidebar</a></li>
                                                <li><a href="category-page(right).html">right sidebar</a></li>
                                                <li><a href="category-page(no-sidebar).html">no sidebar</a></li>
                                                <li><a href="category-page(sidebar-popup).html">sidebar popup</a></li>
                                                <li><a href="category-page(metro).html">metro</a></li>
                                                <li><a href="category-page(full-width).html">full width</a></li>
                                                <li><a href="category-page(infinite-scroll).html">infinite scroll</a>
                                                </li>
                                                <li><a href=category-page(3-grid).html>three grid</a></li>
                                                <li><a href="category-page(6-grid).html">six grid</a></li>
                                                <li><a href="category-page(list-view).html">list view</a></li>
                                            </ul>
                                        </li> --}}
                                        <li>
                                            {{-- <a href="{{route('products')}}">product</a> --}}
                                            {{-- <ul></ul>
                                                <li><a href="product-page(360-view).html">360 view <span
                                                            class="new-tag">new</span></a></li>
                                                <li><a href="product-page(video-thumbnail).html">video thumbnail<span
                                                            class="new-tag">new</span></a></li>
                                                <li>
                                                    <a href="#">sidebar</a>
                                                    <ul>
                                                        <li><a href="product-page.html">left sidebar</a></li>
                                                        <li><a href="product-page(right-sidebar).html">right sidebar</a>
                                                        </li>
                                                        <li><a href="product-page(no-sidebar).html">no sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#">thumbnail image</a>
                                                    <ul>
                                                        <li><a href="product-page(left-image).html">left image</a></li>
                                                        <li><a href="product-page(right-image).html">right image</a>
                                                        </li>
                                                        <li><a href="product-page(image-outside).html">image outside</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#">three column</a>
                                                    <ul>
                                                        <li><a href="product-page(3-col-left).html">thumbnail left</a>
                                                        </li>
                                                        <li><a href="product-page(3-col-right).html">thumbnail right</a>
                                                        </li>
                                                        <li><a href="product-page(3-column).html">thubnail bottom</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="product-page(4-image).html">four image</a></li>
                                                <li><a href="product-page(sticky).html">sticky</a></li>
                                                <li><a href="product-page(accordian).html">accordian</a></li>
                                                <li><a href="product-page(bundle).html">bundle</a></li>
                                                <li><a href="product-page(image-swatch).html">image swatch </a></li>
                                                <li><a href="product-page(vertical-tab).html">vertical tab</a></li>
                                            </ul> --}}
                                        </li>
                                        <li>
                                            <a href="{{route('blogs')}}">blog</a>
                                            {{-- <ul>
                                                <li><a href="blog-page.html">left sidebar</a></li>
                                                <li><a href="blog(right-sidebar).html">right sidebar</a></li>
                                                <li><a href="blog(no-sidebar).html">no sidebar</a></li>
                                                <li><a href="blog-details.html">blog details</a></li>
                                            </ul> --}}
                                        </li>
                                        <li>
                                            <a href="{{route('pages','about')}}">About Us</a>
                                        </li>
                                        <li>
                                            <a href="{{route('contact-us')}}">Contact</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            <div>
                                <div class="icon-nav">
                                    <ul>
                                        <li class="onhover-div mobile-search">
                                            <div><img src="{{asset('assets/images/icon/search.png')}}" onclick="openSearch()"
                                                    class="img-fluid blur-up lazyload" alt=""> <i class="ti-search"
                                                    onclick="openSearch()"></i></div>
                                            <div id="search-overlay" class="search-overlay">
                                                <div>
                                                    <span class="closebtn" onclick="closeSearch()"
                                                        title="Close Overlay">×</span>
                                                    <div class="overlay-content">
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-xl-12">
                                                                    <form action="{{route('search')}}" method="GET">
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control" name="q" id="exampleInputPassword1" placeholder="Search a Product">
                                                                        </div>
                                                                        <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> Search</button>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        {{-- <li class="onhover-div mobile-setting">
                                            <div><img src="{{asset('assets/images/icon/setting.png')}}"
                                                    class="img-fluid blur-up lazyload" alt=""> <i
                                                    class="ti-settings"></i></div>
                                            <div class="show-div setting">
                                                <h6>language</h6>
                                                <ul>
                                                    <li><a href="#">english</a></li>
                                                    <li><a href="#">french</a></li>
                                                </ul>
                                                <h6>currency</h6>
                                                <ul class="list-inline">
                                                    <li><a href="#">euro</a></li>
                                                    <li><a href="#">rupees</a></li>
                                                    <li><a href="#">pound</a></li>
                                                    <li><a href="#">doller</a></li>
                                                </ul>
                                            </div>
                                        </li> --}}
                                        <li class="onhover-div mobile-cart">
                                            <a href="{{route('cart')}}"><img src="{{asset('assets/images/icon/cart.png')}}"
                                                class="img-fluid blur-up lazyload" alt=""> <i
                                                class="ti-shopping-cart"></i>
                                                <span class="count-item badge bg-warning">{{Cart::count()}}</span>
                                            </a>
                                            {{-- <ul class="show-div shopping-cart">
                                                <li>
                                                    <div class="media">
                                                        <a href="#"><img class="me-3"
                                                                src="{{asset('assets/images/fashion/product/1.jpg')}}"
                                                                alt="Generic placeholder image"></a>
                                                        <div class="media-body">
                                                            <a href="#">
                                                                <h4>item name</h4>
                                                            </a>
                                                            <h4><span>1 x $ 299.00</span></h4>
                                                        </div>
                                                    </div>
                                                    <div class="close-circle"><a href="#"><i class="fa fa-times"
                                                                aria-hidden="true"></i></a></div>
                                                </li>
                                                <li>
                                                    <div class="media">
                                                        <a href="#"><img class="me-3"
                                                                src="{{asset('assets/images/fashion/product/2.jpg')}}"
                                                                alt="Generic placeholder image"></a>
                                                        <div class="media-body">
                                                            <a href="#">
                                                                <h4>item name</h4>
                                                            </a>
                                                            <h4><span>1 x $ 299.00</span></h4>
                                                        </div>
                                                    </div>
                                                    <div class="close-circle"><a href="#"><i class="fa fa-times"
                                                                aria-hidden="true"></i></a></div>
                                                </li>
                                                <li>
                                                    <div class="total">
                                                        <h5>subtotal : <span>$299.00</span></h5>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="buttons"><a href="cart.html" class="view-cart">view
                                                            cart</a> <a href="#" class="checkout">checkout</a></div>
                                                </li>
                                            </ul> --}}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>