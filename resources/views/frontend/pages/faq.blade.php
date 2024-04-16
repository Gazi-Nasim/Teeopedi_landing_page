
@extends('frontend.layouts.master')
@section('content')
<div class="store-location-page">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section-heading text-center">
                    <h1>Frequently Ask Question</h1>
                </div>
            </div>
        </div>
        <div class="FaQ-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="faq-heading text-center">
                            <h1>Ordering</h1>
                        </div>
                    </div>
                </div>
                <div class="faq-content">
                    <div class="row">
                        <div class="col-xl-6 col-lg-8 col-md-10 m-auto">
                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
                                            aria-expanded="false" aria-controls="flush-collapseOne">
                                            How to order from online? / What is the online ordering process?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingOne"
                                        data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <p>To order, you need to give us the following details - recipient's
                                                name, recipient's contacts: delivery address, email address. For
                                                further assistance, call us at 01904-446104.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
                                            aria-expanded="false" aria-controls="flush-collapseTwo">
                                            What to do upon receiving the order? (Inside Dhaka City Corporation)
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingTwo"
                                        data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <p>The product will be delivered within 2-3 working days. Some
                                                important issues- <br> <strong>1.</strong> We don’t have
                                                refund/return/ trial option in delivery. You must receive the
                                                order and pay the delivery man first. <br> <strong>2.</strong>
                                                You can exchange "intact products" as per need within 24 HOURS
                                                of purchase either with home delivery or directly from stores.
                                                Only applicable for shoes. <br> <strong>3.</strong> Our delivery
                                                team will be calling you from a Banglalink, please
                                                make sure to receive call from unknown Banglalink.
                                                <br> <strong>4.</strong> NO EXCHANGE/RETURN ON BAGS 5. NO
                                                EXCHANGE/RETURN ON SALE PRODUCTS
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
                                            aria-expanded="false" aria-controls="flush-collapseThree">
                                            What to do upon receiving the order? (From Other Areas)
                                        </button>
                                    </h2>
                                    <div id="flush-collapseThree" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThree"
                                        data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <div class="Faq__Answer Rte">
                                                <p>Confirm the payment though Bkash. Once the payment is
                                                    confirmed, it will be delivered within 2-3 working days via
                                                    eCourier service.<br> bkash details- bkash number-
                                                    01980-222999 (merchant number ) BKASH MENU ---&gt; PAYMENT
                                                    (option 3) ---&gt; MERCHANT NO. 01980-222999 ---&gt; ENTER
                                                    AMOUNT(Total amount) ----&gt; ENTER REFERENCE (Your
                                                    name/number) ----&gt; COUNTER NO. : 1 ---&gt; ENTER MENU PIN
                                                    TO CONFIRM<br> For assistance with payment please call at
                                                    -&nbsp;01904-446104&nbsp;</p>
                                                <p></p>
                                                <p><strong>Please note:</strong><br> <strong>1.</strong> No
                                                    exchange for bags or sale items.<br> <strong>2.</strong> Our
                                                    products go through a 3-step intensive quality checking
                                                    program before being delivered, so you can be ensured that
                                                    we will send you an intact and perfect product. <br>
                                                    <strong>3.</strong> We will not be held liable for any
                                                    damages occurring from mishandling during delivery or misuse
                                                    of the product.<br> <strong>4.</strong> Please inform us the
                                                    number from which you have sent the payment and TRX ID.<br>
                                                    <strong>5.</strong> Please confirm payment within 24 hours
                                                    or your order will be cancelled.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseFour"
                                            aria-expanded="false" aria-controls="flush-collapseFour">
                                            What is the delivery charge for Dhaka City Corporation?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFour" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThree"
                                        data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <p><strong> 1.</strong> Delivery charge for normal delivery (within
                                                48-72 hours) = BDT 60 per product <br> <strong>2.</strong>
                                                Delivery charge for urgent delivery (within next 24-48 hours) =
                                                BDT 100 per product <br> <strong>3.</strong> Delivery charge for
                                                VIP delivery (within 12-18 hours) = BDT 150 per product. <br>
                                                Please note that all charges are set by the courier service, not
                                                by step footwear.</p>
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseFive"
                                            aria-expanded="false" aria-controls="flush-collapseFour">
                                            How to place international orders?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFive" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThree"
                                        data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <p>International orders are processed manually for now as our
                                                international website is under maintenance. Payment received by-
                                                Paypal, bkash, bank transfer, Western Union. Shipping cost
                                                varies according to locations &amp; weight of the parcel.
                                                Expected time of delivery within 7 working days after placing
                                                order. <br> Please place your order by providing following
                                                details- product name, shoe size/bata shoe size, recipient's
                                                name, recipient's contacts, delivery address. After completing
                                                payment, we will process your shipment with Aramex. Soon You
                                                will be given a tracking number.</p>
                                        </div>
                                    </div>
                                </div> --}}
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
                                            aria-expanded="false" aria-controls="flush-collapseFour">
                                            What to do for custom made shoes?
                                        </button>
                                    </h2>
                                    <div id="flush-collapseSix" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThree"
                                        data-bs-parent="#accordionFlushExample">
                                        <div class="accordion-body">
                                            <p>You have to set appointment for any custom made orders with us.
                                                To set appointment contact us at <a
                                                    href="mailto:info@stepbd.com">info@stepbd.com</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="FaQ-wrapper mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="faq-heading text-center">
                            <h1>Exchange</h1>
                        </div>
                    </div>
                </div>
                <div class="faq-content">
                    <div class="row">
                        <div class="col-xl-6 m-auto">
                            <div class="accordion accordion-flush" id="accordionFlushExample2">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-heading7">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapse7"
                                            aria-expanded="false" aria-controls="flush-collapse7">
                                            What is the exchange procedure in Dhaka City Corporation
                                        </button>
                                    </h2>
                                    <div id="flush-collapse7" class="accordion-collapse collapse"
                                        aria-labelledby="flush-heading7"
                                        data-bs-parent="#accordionFlushExample2">
                                        <div class="accordion-body">
                                            <div class="Faq__Answer Rte">
                                                <p>We only offer exchange for SHOE SIZE. WE WILL ONLY ENTERTAIN
                                                    EXCHANGES WITHIN 24 HOURS OF RECEIVING DELIVERY.<br>
                                                    <strong>1.</strong> In case the size does not fit, you will
                                                    have to receive the delivery, PAY THE DUES, KEEP THE PRODUCT
                                                    WITH YOU and inform us on our page, or at 01904-446104 within
                                                    24 hours of receiving delivery. <br> <strong>2.</strong> If
                                                    you call us, please mention your name and the product name
                                                    and size. <br> <strong>3.</strong> We will send the exchange
                                                    size.<br> <strong>4.</strong> When the delivery man brings
                                                    the exchange size, you will have to give him the wrong size
                                                    (intact and in same packaging as we sent it) and take the
                                                    right size from him. <br> Exchange has a delivery charge of
                                                    BDT 60 per product in Dhaka City Corporation.Please note that used products will not be
                                                    exchanged under any circumstances. We do not entertain
                                                    claims of refunds.<br> No exchange for bags. No design
                                                    exchange. No color exchange.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-heading8">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapse8"
                                            aria-expanded="false" aria-controls="flush-collapse8">
                                            Exchange procedures for OTHER CITIES
                                        </button>
                                    </h2>
                                    <div id="flush-collapse8" class="accordion-collapse collapse"
                                        aria-labelledby="flush-heading8"
                                        data-bs-parent="#accordionFlushExample2">
                                        <div class="accordion-body">
                                            <div class="Faq__Answer Rte">
                                                <p>We only offer exchange for SHOE SIZE. WE WILL ONLY ENTERTAIN
                                                    EXCHANGES WITHIN 24 HOURS OF RECEIVING DELIVERY.<br> No
                                                    exchange for bags. No design exchange. No color
                                                    exchange.<br> <strong>1.</strong> In case the size does not
                                                    fit, please keep the package from Sundorbon with You. <br>
                                                    <strong>2.</strong> To place an order for exchange you can
                                                    call us at 01904-446104 (11am-8pm) or can also inform us by
                                                    our official Facebook page. please mention your name and the
                                                    product name and size during communication. <br>
                                                    <strong>3.</strong> Once you exchange order, please courier
                                                    wrong size back with Sundorban courier. Once we receive your
                                                    pair we will send you exchange size by Sundorbon courier.
                                                    <br> <strong>4.</strong> Returning courier charge will be
                                                    carried by you &amp; sending courier charge for exchange
                                                    pair will be carried by La mode.
                                                </p>
                                                <p><br> ** As we deliver through courier services and not our
                                                    personal deliveryman, if there are any size issues kindly
                                                    keep the pair with you pay the bill and let us know in 24
                                                    hours. DO NOT RETURN THE PRODUCT. Once you let us know, we
                                                    will send another pair for delivery, while delivering
                                                    -previous pair will be collected from you &amp; right pair
                                                    will be handed over.</p>
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
        <div class="FaQ-wrapper mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="faq-heading text-center">
                            <h1>Others</h1>
                        </div>
                    </div>
                </div>
                <div class="faq-content">
                    <div class="row">
                        <div class="col-xl-6 m-auto">
                            <div class="accordion accordion-flush" id="accordionFlushExample3">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapse9"
                                            aria-expanded="false" aria-controls="flush-collapseOne">
                                            How can I measure my size?
                                        </button>
                                    </h2>
                                    <div id="flush-collapse9" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingOne"
                                        data-bs-parent="#accordionFlushExample3">
                                        <div class="accordion-body">
                                            <div class="Faq__Answer Rte">
                                                <p>Kindly have a look at our <a href="/pages/size-chart"
                                                        title="Size Chart">size chart</a> &amp; let us know your
                                                    usual size. In case of any confusion we are here to help
                                                    you.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapse10"
                                            aria-expanded="false" aria-controls="flush-collapseTwo">
                                            Where are our showrooms?
                                        </button>
                                    </h2>
                                    <div id="flush-collapse10" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingTwo"
                                        data-bs-parent="#accordionFlushExample3">
                                        <div class="accordion-body">
                                            <div class="Faq__Answer Rte">
                                                <p>We have 59 showrooms across Bangladesh. </p>
                                                <p>Kindly visit us here to see&nbsp;<a
                                                        href="/pages/store-location-2"
                                                        title="Store Location 2">Store Locations with Google
                                                        Maps</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapse11"
                                            aria-expanded="false" aria-controls="flush-collapseThree">
                                            Do we sell shoe accessories separately?
                                        </button>
                                    </h2>
                                    <div id="flush-collapse11" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThree"
                                        data-bs-parent="#accordionFlushExample3">
                                        <div class="accordion-body">
                                            <div class="Faq__Answer Rte">
                                                <div class="Faq__Answer Rte">
                                                    <p>No, we don’t sell accessories without our own shoes.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapse12"
                                            aria-expanded="false" aria-controls="flush-collapseFour">
                                            Hotline Number
                                        </button>
                                    </h2>
                                    <div id="flush-collapse12" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThree"
                                        data-bs-parent="#accordionFlushExample3">
                                        <div class="accordion-body">
                                            <div class="Faq__Answer Rte">
                                                <p>Reach us directly at 01904-446104 calling hours 8am - 9pm</p>
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
</div>
@endsection