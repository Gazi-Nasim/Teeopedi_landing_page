@extends('frontend.layouts.master')
@section('content')
{{-- <div class="container">
    <div class="contactsDiv">
        <div class="row">
            <div class="col-xl-6 col-lg-7 col-md-8 col-sm-8 m-auto">
                <h2 class="text-center">CONTACT US</h2>
                <p class="mb-3">For Further assistance, please call us at <a href="tel:+8801904-446104">01904-446104</a>
                    between 8AM - 9PM</p>
                <form action="{{route('contact-submit')}}" method="POST">
                    @csrf
                    <div class="form-group mb-3">
                        <input type="text" name="name" value="{{old('name')}}" maxlength="100" class="form-control" id="name" placeholder="Your Name" required="">
                        @error('name')
                        <span class="text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group mb-3">
                        <input type="email" name="email" class="form-control" value="{{old('email')}}" maxlength="100" id="email" aria-describedby="emailHelp" placeholder="Your Email" required="">
                         @error('email')
                        <span class="text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group mb-3">
                        <input type="text" name="contact" class="form-control" id="contact" value="{{old('contact')}}" maxlength="15" placeholder="Enter Phone (Optional)">
                        @error('contact')
                        <span class="text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group mb-3">
                        <textarea class="form-control" id="message" rows="3" placeholder="Your Message" name="message" maxlength="4000">{{old('message')}}</textarea>
                        @error('message')
                        <span class="text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="form-group mb-3">
                        {!! NoCaptcha::renderJs() !!}
                        {!! NoCaptcha::display() !!}
                        @if ($errors->has('g-recaptcha-response'))
                            <span class="text-danger">
                                <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                            </span>
                        @endif
                    </div>
                    <button type="submit" class="btn btnRed">Send Message</button>
                </form>
            </div>
        </div>
    </div>
</div> --}}
 <!-- breadcrumb start -->
    <div class="breadcrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="page-title">
                        <h2>contact</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <nav aria-label="breadcrumb" class="theme-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{route('index')}}">Home</a></li>
                            <li class="breadcrumb-item active">contact</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb End -->


    <!--section start-->
    <section class="contact-page section-b-space">
        <div class="container">
            {{-- <div class="row section-b-space">
                <div class="col-lg-7 map">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1605.811957341231!2d25.45976406005396!3d36.3940974010114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1550912388321"
                        allowfullscreen></iframe>
                </div>
                <div class="col-lg-5">
                    <div class="contact-right">
                        <ul>
                            <li>
                                <div class="contact-icon"><img src="../assets/images/icon/phone.png"
                                        alt="Generic placeholder image">
                                    <h6>Contact Us</h6>
                                </div>
                                <div class="media-body">
                                    <p>+91 123 - 456 - 7890</p>
                                    <p>+86 163 - 451 - 7894</p>
                                </div>
                            </li>
                            <li>
                                <div class="contact-icon"><i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <h6>Address</h6>
                                </div>
                                <div class="media-body">
                                    <p>ABC Complex,Near xyz, New York</p>
                                    <p>USA 123456</p>
                                </div>
                            </li>
                            <li>
                                <div class="contact-icon"><img src="../assets/images/icon/email.png"
                                        alt="Generic placeholder image">
                                    <h6>Address</h6>
                                </div>
                                <div class="media-body">
                                    <p>Support@Shopcart.com</p>
                                    <p>info@shopcart.com</p>
                                </div>
                            </li>
                            <li>
                                <div class="contact-icon"><i class="fa fa-fax" aria-hidden="true"></i>
                                    <h6>Fax</h6>
                                </div>
                                <div class="media-body">
                                    <p>Support@Shopcart.com</p>
                                    <p>info@shopcart.com</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div> --}}
            @if(Session::has('success'))
            <div class="row">
                <div class="col-md-8 mx-auto mb-3">
                    <p id="success" class="p-3 text-white bg-success w-100 rounded suc-msg successMessage">
                        <i class="fa fa-check-circle"></i> {{Session::get('success')}}
                    </p>
                </div>
            </div>
            @endif
            <div class="row">
                <div class="col-sm-8 mx-auto">
                    <form class="theme-form" action="{{route('contact-submit')}}" method="POST">
                        @csrf
                        <div class="form-row row">
                            <div class="mb-3">
                                <div class="col-md-12">
                                    <label for="name">Name</label>
                                    <input type="text" name="name" value="{{old('name')}}" maxlength="100" class="form-control" id="name" placeholder="Your Name" required="">
                                    @error('name')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-12 mb-3">
                                <div class="mb-3">
                                    <label for="review">Phone number</label>
                                    <input type="text" name="contact" class="form-control" id="contact" value="{{old('contact')}}" maxlength="15" placeholder="Enter Phone (Optional)">
                                    @error('contact')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <input type="email" name="email" class="form-control" value="{{old('email')}}" maxlength="100" id="email" aria-describedby="emailHelp" placeholder="Your Email" required="">
                                    @error('email')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label for="message">Write Your Message</label>
                                    <textarea class="form-control" id="message" rows="3" placeholder="Your Message" name="message" maxlength="4000">{{old('message')}}</textarea>
                                    @error('message')
                                    <span class="text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-12">
                                <button class="btn btn-solid" type="submit">Send Your Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--Section ends-->
@endsection