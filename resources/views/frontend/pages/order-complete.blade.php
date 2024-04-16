@extends('frontend.layouts.master')

@section('content')
<div class="invoice-page-wrap">
    <div class="container mt-5">
        <div class="row">
            <div class="col-xl-8 col-lg-10 col-md-10 m-auto">
                <div class="invoice-content">
                    <div class="invoice-header text-center pt-3 pb-3">
                        <div class="header-btn">
                            <h5 >order details</h5>
                        </div>
                    </div>
                    <div id="printableArea">
                        <div class="row">
                            <div class="col-xl-12 mx-auto">
                                <div class="inv-logo-area mt-3">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-xl-8 offset-md-2 d-flex justify-content-center">
                                                <div class="inv-logo" style="width:100px;">
                                                    @if(!empty($settings) && !empty($settings->logo))
                                                        <img src="{{asset('uploads/settings/logo/'.$settings->logo)}}" alt="logo">
                                                    @else
                                                        <img src="{{asset('assets/images/icon/layout3/logo.png')}}" alt="logo">
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inv-text mt-4">
                            <div class="row gx-5">
                                <div class="col-xl-6">
                                    <div class="address-form">
                                        <h5 > Form</h5>
                                        <address>
                                            <p>@if(!empty($settings)){{$settings->site_title}}@endif</p>
                                            <p>{{$settings->address}}<br>
                                                Mobile: {{$settings->phone}}
                                            </p>
                                        </address>
                                    </div>
                                    <div class="address-form">
                                        <h5 > TO</h5>
                                        <address>
                                            <p>
                                                @if(!empty($order->billing_adderss->name))
                                                    {{$order->billing_adderss->name}}
                                                @endif
                                            </p>
                                            <p>
                                                @if(!empty($order->billing_adderss->email))
                                                    {{$order->billing_adderss->email}}
                                                @endif
                                            </p>
                                            <p>
                                                @if(!empty($order->billing_adderss->phone))
                                                Mobile: {{$order->billing_adderss->phone}}
                                                @endif <br>
                                                @if(!empty($order->billing_adderss->address))
                                                    {{$order->billing_adderss->address}}
                                                @endif <br>
                                                @if(!empty($order->billing_adderss->country_id) || !empty($order->billing_adderss->division_id) || !empty($order->billing_adderss->district_id) || !empty($order->billing_adderss->thana_id))
                                                    @foreach($thana as $tha)
                                                        @if($order->billing_adderss->thana_id==$tha->id)
                                                            {{$tha->name}},
                                                        @endif
                                                    @endforeach
                                                    @foreach($district as $dis)
                                                        @if($order->billing_adderss->district_id==$dis->id)
                                                            {{$dis->name}}.
                                                        @endif
                                                    @endforeach
                                                    @foreach($division as $d)
                                                        @if($order->billing_adderss->division_id==$d->id)
                                                            {{$d->name}}
                                                        @endif
                                                    @endforeach
                                                    @foreach($country as $cou)
                                                        @if($order->billing_adderss->country_id==$cou->id)
                                                            {{$cou->name}}.
                                                        @endif
                                                    @endforeach
                                                @endif
                                            </p>
                                        </address>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="inv-date-details">
                                        <h5>invoice</h5>
                                    </div>
                                    <div class="invoice-d-table">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Invoice No.</th>
                                                    <th>Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th id="invoiceID">{{$order->invoice_id}}</th>
                                                    <td>
                                                        @php $date = strtotime($order->created_at);
                                                            echo date(' jS F, Y, l', $date);
                                                        @endphp
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="invoice-d-table">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Payment Method</th>
                                                    <th>Order Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th>
                                                        @if($order->payment_method == 'cash')
                                                            Cash On Delivery
                                                        @endif
                                                        @if($order->payment_method == 'ssl')
                                                            SSL COMMERZ
                                                        @endif
                                                    </th>
                                                    <td>
                                                        @if($order->status==0)
                                                            Pending
                                                        @elseif($order->status==1)
                                                            On The Way
                                                        @elseif($order->status==2)
                                                            Processing
                                                        @elseif($order->status==3)
                                                            Completed
                                                        @elseif($order->status==4)
                                                            Canceled
                                                        @elseif($order->status==5)
                                                            Failed
                                                        @else
                                                        @endif
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="product-table-detail table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">product description</th>
                                                    <th scope="col">size</th>
                                                    <th scope="col">color</th>
                                                    <th scope="col">qty</th>
                                                    <th scope="col">unit price</th>
                                                    <th scope="col">total price</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($order->orderdetails as $orderInfo)
                                                    @php $products = App\Models\Product::where('status',1)->where('id',$orderInfo->product_id)->get(); @endphp
                                                    <tr>
                                                        <td scope="row">
                                                            @foreach($products as $product)
                                                                {{$product->title}}
                                                            @endforeach
                                                        </td>
                                                        <td>{{$orderInfo->size_attr}}</td>
                                                        <td>{{$orderInfo->color_attr}}</td>
                                                        <td>{{$orderInfo->qty}}</td>
                                                        <td>৳ {{$orderInfo->price}}</td>
                                                        <td>৳ {{$orderInfo->total}}</td>
                                                    </tr>
                                                @endforeach
                                                <tr>
                                                    <td scope="row" rowspan="3">Thank you for being with @if(!empty($settings)){{$settings->site_title}}@endif</td>
                                                    <td colspan="4">Subtotal</td>
                                                    <td>৳ {{$order->sub_total}}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4">Shipping Charge</td>
                                                    <td>৳ {{$order->shipping_rate}}</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="4">Discount</td>
                                                    <td>৳ {{$order->coupon_amount}}</td>
                                                </tr>
                                                <tr>
                                                    <td scope="row"></td>
                                                    <td colspan="4">Total</td>
                                                    <td>৳ {{$order->total}}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="invoice-bottom-area">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="bottom-text">
                                            <p >If you have any query about his invoice, please
                                                contact <br> <span>@if(!empty($settings)){{$settings->site_title}}@endif</span>,
                                                <a href="tel:+234 8062468281">Mobile: {{$settings->phone}}</a>,
                                                <a href="mailto:info@teeopedia.com">Email: {{$settings->email}}</a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="invoice-footer-area">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="bottom-text text-center">
                                            <ul>
                                                <li><a href=#><i class="fab fa-facebook-f" ></i></a>
                                                </li>
                                                <li><a href=#><i class="fab fa-instagram" ></i></a>
                                                </li>
                                            </ul>
                                            <p> <a href=#>Teeopedia </a> &copy {{date('Y')}} | All Rights Reserved</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container mb-2">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="bottom-btn text-center">
                                    <button id="buttonID" class="btn download-invoice-btn text-white">Download Invoice</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
<script type="text/javascript">
     window.onload = function () {
        document.getElementById('buttonID').addEventListener("click", () => {
            const invoiceID = document.getElementById('invoiceID').innerHTML;
            console.log(invoiceID);
            const invoice = this.document.getElementById('printableArea');
            html2pdf().from(invoice).save('invoice-'+invoiceID);
        })
    }
</script>
@endsection