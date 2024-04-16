@extends('frontend.layouts.master')
@section('content')
    <div class="about-us-page">
        <div class="container">
            <section>
                <div class="about-story-secton">
                    <div class="row">
                        <div class="col-xl-6 m-auto d-flex align-items-center">
                            <div class="about-story-area">
                                <h1>Our Story</h1>
                                <p>
                                    StepFootWear established itself as a trusted source of unique ladies footwear as
                                    we
                                    proudly announce our products as “Made in BD”. We are based in Dhaka,
                                    Bangladesh.
                                    StepFootWear is renowned for its fashion authority, unique design &
                                    craftsmanship
                                    with
                                    best quality. StepFootWear dedicates itself to quality, unique design, and an
                                    exceptional value for the price. Come join the spirit of ultimate fashion
                                    footwear
                                    to
                                    indulge yourself with uniqueness & sophistication which is constructed with high
                                    quality
                                    craftsmanship. We welcome you to the world of StepFootWear. </p>
                                <p class="mt-3 text-center"> Call us for product information at <a href="tel:+0881904446104">01904446071</a> between 8AM - 9PM
                                    <br>&<br> 
                                    Call us for business information at <a href="tel:+0881904446104">01904446104</a> between 8AM - 9PM 
                                </p>

                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section>
                <div class="about-info-area">
                    <div class="row">
                        <div class="col-xl-6 m-auto">
                            <img class="img-fluid" src="{{ asset('assets/media/imgAll/bg/about-shoes.gif') }}"
                                alt="" title="">
                        </div>
                    </div>
                    <div class="row mt-5">
                        <div class="col-xl-10 m-auto">
                            <div class="row">
                                <div class="col-xl-4 col-lg-4 col-md-4 d-flex justify-content-center">
                                    <div class="feature-info align-self-stretch">
                                        <h5>Ultimate Comfort</h5>
                                        <p> We use special matterials To Make our shoes always Comfortable.</p>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 d-flex justify-content-center">
                                    <div class="feature-info align-self-stretch">
                                        <h5>Trendy Designs</h5>
                                        <p>We always follow the current Trendy designs that are suitable for the
                                            current
                                            trends. </p>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 d-flex justify-content-center">
                                    <div class="feature-info align-self-stretch">
                                        <h5>Happy Customers</h5>
                                        <p>We always want to make sure that all our consumers are happy whether it a
                                            price, quality or comfort.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section>
                <div class="video-section mt-5">
                    <div class="row">
                        <div class="col-xl-6 m-auto">
                            <div class="about-video-area">
                                <div class="ratio ratio-16x9">
                                    <iframe
                                        src="https://www.youtube.com/embed/9Xod0WJ5I-w?html5=1&autoplay=1&controls=0&rel=0&modestbranding=1&playsinline=1&showinfo=0&fs=0&loop=1&el=0&playlist=9Xod0WJ5I-w&enablejsapi=1&origin=https%3A%2F%2FStepFootWear.com&widgetid=1"
                                        title="YouTube video" frameborder="1" allow="autoplay" muted=1
                                        allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
@endsection