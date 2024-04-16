<!doctype html>
<html lang=en>
<head>
    <title>Order Details</title>
</head>
<body style="font-size: 1rem;font-family: 'roboto', sans-serif;color: #212529;background: #FFF;">
    <main style="width: 800px;margin: 0 auto;">
        <div class="invoice-page-wrap mt-3 mb-5">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 offset-md-2">
                        <div class="invoice-content">
                            <div class="invoice-header" style="border:1px solid #d8993b;padding-top:.3rem;padding-bottom:.3rem;text-align:center;font-size:15px;">
                                <div class="header-btn">
                                    <h5 style="text-transform:uppercase;margin:0;color:#d8993b;font-weight:bold;padding: 12px 0; text-align: center; font-size: 15px;">order details</h5>
                                </div>
                            </div>
                            <div class="inv-logo-area" style="margin-top:15px;">
                                <div class="container">
                                    <div class="row">
                                        <div class="justify-content-center">
                                            <div class="inv-logo" style="width:100px;margin: 0 auto;display:flex;justify-content:center;">
                                                <a href=""><img class="img-fluid" src="" alt="Teeopedia Logo" title="Teeopedia Logo" style="width: 100%;"></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="inv-text mt-4" style="padding:0 50px">
                                <div style="display: flex;">
                                    <div style="width: 50%;padding-right:20px;">
                                        <div class="address-form">
                                            <h5 style="text-transform:uppercase;font-weight:600;color:#d8993b;border-bottom:1px solid #d8993b;font-size: 16px;margin-bottom: 10px;">Form</h5>
                                            <address style="font-style: normal;">
                                                <p style="margin-bottom:0;margin-top:5px;color:#000;">Teeopedia</p>
                                                <p style="margin-bottom:0;margin-top:5px;color:#000;">Baly Complex, 5th Floor<br>
                                                    Sector-3, Plot:33, Uttra, Dhaka<br>
                                                    Mobile: +8801904-446104
                                                </p>
                                            </address>
                                        </div>
                                        <div class="address-to">
                                            <h5 style="text-transform:uppercase;font-weight:600;color:#d8993b;border-bottom:1px solid #d8993b;margin-bottom: 10px;font-size: 16px;">TO</h5>
                                            <address style="font-style: normal;">
                                                <p style="margin-bottom:0;margin-top:5px;color:#000;">{{$billing_address->name}}</p>
                                                <p style="margin-bottom:0;margin-top:5px;color:#000;">{{$billing_address->email}}</p>
                                                <p style="margin-bottom:0;margin-top:5px;color:#000;">{{$billing_address->phone}}</p>
                                                <p style="margin-bottom:0;margin-top:5px;color:#000;line-height: 24px;">{{$billing_address->address}} {{$billing_address->zip_code}}<br>
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
                                                    @endforeach<br>
                                                </p>
                                            </address>
                                        </div>
                                    </div>
                                    <div style="width: 50%;padding-left:20px;">
                                        <div class="inv-date-details">
                                            <h5 style="text-align:end;text-transform:uppercase;color:#d8993b;margin-bottom: 5px;">invoice</h5>
                                        </div>
                                        <div>
                                            <table  style="border:1px solid #d8993b;border-bottom:none;width: 100%;border-spacing: 0;">
                                                <thead>
                                                    <tr style="background:transparent;border-style:none">
                                                        <th style="border-style:none;font-size:16px;padding:5px;color:#d8993b;text-align:center;border-bottom:1px solid #d8993b;border-right:1px solid #d8993b;width:50%;">Invoice No.</th>
                                                        <th style="border-style:none;font-size:16px;padding:5px;color:#d8993b;text-align:center;border-bottom:1px solid #d8993b;">Date</th>
                                                    </tr>
                                                </thead>
                                                <tbody style="text-align:center;color:#d8993b;">
                                                    <tr style="border-style:none;">
                                                        <th style="border-style:none;border-right:1px solid #d8993b;border-bottom-width:0;border-top-width:0;padding: 8px 0;color:#000;">{{$order->invoice_id}}</th>
                                                        <td style="border-style:none;border-bottom-width:0;border-top-width:0;padding: 8px 0;color:#000;">@php $order_date = strtotime($order->created_at); echo date(' jS F, Y, l', $order_date);@endphp</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div>
                                            <table  style="border:1px solid #d8993b;width: 100%;border-spacing: 0;">
                                                <thead style="border-style:none">
                                                    <tr style="">
                                                        <th style="border-style:none;font-size:16px;padding:5px;color:#d8993b;text-align:center;text-transform:uppercase;border-bottom:1px solid #d8993b;">payment method</th>
                                                    </tr>
                                                </thead>
                                                <tbody style="text-align:center;color:#d8993b;border-style:none">
                                                    <tr>
                                                        <td style="color:#000;border-style:none;font-size:14px;text-transform:uppercase;font-weight:600;padding:8px 0;">
                                                            @if($order->payment_method == 'cash')
                                                                CASH ON DELIVERY
                                                            @else
                                                                SSL COMMERZ
                                                            @endif
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <table style="border-spacing: 0;width: 100%;margin-top: 30px;">
                                        <thead style="border:1px solid #d8993b;background:#DDDDDD;color:#d8993b;text-transform:uppercase;text-align:center;">
                                            <tr>
                                                <th scope="col" style="font-size:13px;border-left:1px solid #d8993b;border-bottom:1px solid #d8993b;border-top:1px solid #d8993b;padding: 10px 0;"> product description</th>
                                                <th scope="col" style="font-size:13px;border-left:1px solid #d8993b;border-bottom:1px solid #d8993b;border-top:1px solid #d8993b;"> size</th>
                                                <th scope="col" style="font-size:13px;border-left:1px solid #d8993b;border-bottom:1px solid #d8993b;border-top:1px solid #d8993b;"> color</th>
                                                <th scope="col" style="font-size:13px;border-left:1px solid #d8993b;border-bottom:1px solid #d8993b;border-top:1px solid #d8993b;"> qty</th>
                                                <th scope="col" style="font-size:13px;border-left:1px solid #d8993b;border-bottom:1px solid #d8993b;border-top:1px solid #d8993b;"> unit price</th>
                                                <th scope="col" style="font-size:13px;border-right:1px solid #d8993b;border-left:1px solid #d8993b;border-bottom:1px solid #d8993b;border-top:1px solid #d8993b;"> total price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($order->orderdetails as $orderInfo)
                                            @php $products = App\Models\Product::where('status',1)->where('id',$orderInfo->product_id)->get(); @endphp
                                            <tr>
                                                <td style="border-left:1px solid #d8993b;height:33px;border-bottom:1px solid #d8993b;margin-left:3px;" scope="row">
                                                    @foreach($products as $product)
                                                        {{$product->title}}
                                                    @endforeach
                                                </td>
                                                <td style="border-left:1px solid #d8993b;height:33px;border-bottom:1px solid #d8993b;text-align: center;">
                                                    {{$orderInfo->size_attr}}
                                                </td>
                                                 <td style="border-left:1px solid #d8993b;height:33px;border-bottom:1px solid #d8993b;text-align: center;">
                                                    {{$orderInfo->color_attr}}
                                                </td>
                                                <td style="border-left:1px solid #d8993b;height:33px;border-bottom:1px solid #d8993b;text-align: center;">
                                                    {{$orderInfo->qty}}
                                                </td>
                                                <td style="border-left:1px solid #d8993b;height:33px;border-bottom:1px solid #d8993b;text-align: center;">
                                                    ৳ {{$orderInfo->price}}
                                                </td>
                                                <td style="border-right:1px solid #d8993b;border-left:1px solid #d8993b;height:33px;border-bottom:1px solid #d8993b;text-align: center;">
                                                    ৳ {{$orderInfo->total}}
                                                </td>
                                            </tr>
                                        @endforeach
                                            <tr>
                                                <td style="border-left: 1px solid #d8993b;vertical-align:middle;color:#000;width:168px;" scope="row" rowspan="3">Thank you for being with Teeopedia</td>
                                                <td style="border-left: 1px solid #d8993b;height:33px;color:#000;color:#000;" colspan="4">Subtotal</td>
                                                <td style="height:33px;border-left: 1px solid #d8993b;border-right: 1px solid #d8993b;text-align: center;">
                                                    ৳ {{$order->sub_total}}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="border-left: 1px solid #d8993b;border-top: 1px solid #d8993b;height:33px;color:#d8993b;color:#000;" colspan="4">Discount</td>
                                                <td style="border-left: 1px solid #d8993b;border-right: 1px solid #d8993b;border-top: 1px solid #d8993b;height:33px;text-align: center;">
                                                    0
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="border-left: 1px solid #d8993b;border-top: 1px solid #d8993b;height:33px;color:#d8993b;color:#000;" colspan="4">Shipping Charge</td>
                                                <td style="border-left: 1px solid #d8993b;border-right: 1px solid #d8993b;border-top: 1px solid #d8993b;height:33px;text-align: center;">
                                                    ৳ {{$order->shipping_rate}}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="border-bottom: 1px solid #d8993b;border-top: 1px solid #d8993b;border-left: 1px solid #d8993b;" scope="row"></td>
                                                <td style="border-top: 1px solid #d8993b;height:33px;color:#000;border-left: 1px solid #d8993b;border-bottom: 1px solid #d8993b;" colspan="4">Total</td>
                                                <td style="border:1px solid #d8993b;height:33px;text-align: center;">
                                                    ৳ {{$order->total}}
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class=invoice-bottom-area>
                                    <div class=row>
                                        <div class=col-xl-12>
                                            <div class=bottom-text>
                                                <p style="color:#000">If you have any query about his invoice, please contact <br>
                                                    <span style="color:#d8993b;">Teeopedia</span>,
                                                    <a style="text-decoration:none;color:#000;" href="tel:+8801XXXXXXXXX">Mobile: +8801XXXXXXXXX</a>,
                                                    <a style="text-decoration:none;color:#000;" href="mailto:teeopedia@mail.com">Email: teeopedia@mail.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="invoice-bottom-area" style="background:#d8993b;">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div style="text-align: center;background:#DDDDDD;">
                                                <ul>
                                                    <li style="list-style:none;display:inline-block;margin-top:5px;"><a href=#><img src="" alt=""></a> </li>
                                                    <li style="list-style:none;display:inline-block;margin-top:5px;"><a href=#><img src="" alt=""></a> </li>
                                                </ul>
                                                <p style="color:#000;padding-bottom:10px;font-size:12px;"> <a style="text-decoration:none;color:#000;text-align: center;" href=#><span style="color:#d8993b;">Teeopedia</a> &copy {{date('Y')}} | All Rights Reserved</p>
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
    </main>
</body>
</html>