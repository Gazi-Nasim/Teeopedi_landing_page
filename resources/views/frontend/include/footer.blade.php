    <footer class="footer-light">
        <div class="light-layout">
            <div class="container">
                <section class="small-section border-section border-top-0">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="subscribe">
                                <div>
                                    <h4>KNOW IT ALL FIRST! </h4>
                                    <p>Never Miss Anything From @if(!empty($settings) && !empty($settings->site_title)){{$settings->site_title}}@else Teeopedia @endif By Signing Up To Our Newsletter.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <form
                                action=""
                                class="form-inline subscribe-form auth-form needs-validation" method="post"
                                id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank">
                                <div class="form-group mx-sm-3">
                                    <input type="text" class="form-control" name="EMAIL" id="mce-EMAIL"
                                        placeholder="Enter your email" required="required">
                                </div>
                                <button type="submit" class="btn btn-solid" id="mc-submit">subscribe</button>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <section class="section-b-space light-layout">
            <div class="container">
                <div class="row footer-theme partition-f">
                    <div class="col-lg-4 col-md-6">
                        <div class="footer-title footer-mobile-title">
                            <h4>about</h4>
                        </div>
                        <div class="footer-contant">
                            <div class="footer-logo">
                                 @if(!empty($settings) && !empty($settings->logo))
                                    <img src="{{asset('uploads/settings/logo/'.$settings->logo)}}" alt="@if(!empty($settings)){{$settings->site_title}}@endif">
                                 @else
                                    <img src="{{asset('assets/images/icon/layout3/logo.png')}}" alt="@if(!empty($settings)){{$settings->site_title}}@endif">
                                @endif
                            </div>
                            <p style="text-align:justify">@if(!empty($settings)){{$settings->site_description}}@endif</p>
                           {{-- <div class="footer-social">
                                <ul>
                                    @foreach ($social_icons as $icon)
                                <li>
                                    <a href="{{$icon->link}}"><img class="img-fluid" width="40" src="{{asset('uploads/icons/'.$icon->image)}}" alt="{{$icon->title}}"></a>
                                </li>
                                @endforeach
                                </ul>
                            </div>--}}
                        </div>
                    </div>
                    <div class="col offset-xl-1">
                        <div class="sub-title">
                            <div class="footer-title">
                                <h4>my account</h4>
                            </div>
                            <div class="footer-contant">
                                <ul>
                                    @auth
                                        @if(auth()->user()->role==2)
                                        <li><a href="{{route('user.dashboard')}}">Dashboard</a></li>
                                        <li><a href="{{route('user.orders')}}">My Orders</a></li>
                                        <li><a href="{{route('user.profile')}}">Profile</a></li>
                                        <li><a href="{{route('user.change-password')}}">Security</a></li>
                                        <li><a href="{{ route('logout.custom') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Log Out</a>
                                            <form id="logout-form" action="{{ route('logout.custom') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                        </li>
                                        @elseif(auth()->user()->role==1)
                                        <li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
                                        {{-- <li><a href="{{route('user.profile')}}">Profile</a></li>
                                        <li><a href="{{route('user.change-password')}}">Security</a></li> --}}
                                        <li><a href="{{ route('admin.logout.custom') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Log Out</a>
                                            <form id="logout-form" action="{{ route('admin.logout.custom') }}" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                        </li>
                                        @endif
                                    @else
                                    <li><a href="{{route('user-login')}}">Login</a></li>
                                    <li><a href="{{route('user-register')}}">Register</a></li>
                                    @endif
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="sub-title">
                            <div class="footer-title">
                                <h4>why we choose</h4>
                            </div>
                            <div class="footer-contant">
                                <ul>
                                    <li><a href="{{route('pages','return-refund')}}">shipping & return</a></li>
                                    <li><a href="{{route('pages','privacy-policy')}}">privacy policy</a></li>
                                    <li><a href="{{route('pages','about')}}">about us</a></li>
                                    <li><a href="{{route('contact-us')}}">contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="sub-title">
                            <div class="footer-title">
                                <h4>registered office</h4>
                            </div>
                            <div class="footer-contant">
                                <ul class="contact-list">
                                    <li><i class="fa fa-map-marker"></i>@if(!empty($settings) && !empty($settings->address)){{$settings->address}}@endif</li>
                                    <li><i class="fa fa-phone"></i>Call Us: @if(!empty($settings) && !empty($settings->phone)){{$settings->phone}}@endif</li>
                                    <li><i class="fa fa-envelope"></i>Email Us: <a href="#">@if(!empty($settings) && !empty($settings->email)){{$settings->email}}@endif</a></li>
                                    <!--<li><i class="fa fa-fax"></i>Fax: 123456</li>-->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-md-6 col-sm-12">
                        <div class="footer-end">
                            @if(!empty($settings) && !empty($settings->copyright_text))
                            <p><i class="fa fa-copyright" aria-hidden="true"></i> {{$settings->copyright_text}}. <strong>Developed By: <a href="https://prantiksoft.com">PRANTIK-SOFT</a></strong></p>
                            @else
                            <p><i class="fa fa-copyright" aria-hidden="true"></i> {{date('Y')}}  powered by Teeopedia. <strong>Developed By: <a href="https://prantiksoft.com">PRANTIK-SOFT</a></strong></p>
                            @endif
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6 col-sm-12">
                        <div class="payment-card-bottom">
                            <ul>
                                @foreach ($social_icons as $icon)
                                <li>
                                    <a href="{{$icon->link}}"><img class="img-fluid" width="40" src="{{asset('uploads/icons/'.$icon->image)}}" alt="{{$icon->title}}"></a>
                                </li>
                                @endforeach
                                {{-- <li>
                                    <a href="#"><img src="{{asset('assets/images/icon/visa.png')}}" alt=""></a>
                                </li>
                                <li>
                                    <a href="#"><img src="{{asset('assets/images/icon/mastercard.png')}}" alt=""></a>
                                </li>
                                <li>
                                    <a href="#"><img src="{{asset('assets/images/icon/paypal.png')}}" alt=""></a>
                                </li>
                                <li>
                                    <a href="#"><img src="{{asset('assets/images/icon/american-express.png')}}" alt=""></a>
                                </li>
                                <li>
                                    <a href="#"><img src="{{asset('assets/images/icon/discover.png')}}" alt=""></a>
                                </li> --}}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>