@extends('admin.layouts.master')
@push('css')
<style>
/*order complete page design*/
.invoice-header {
	/* background: #bdccc5; */
	border: 1px solid #d18617;
}
.header-btn h5{
	text-transform:uppercase;
	margin:0;
	color:#d18617;
	font-weight:bold;	
}
.inv-text {
	padding:0 50px;
}
.address-form h5 {
	text-transform: uppercase;
	font-weight: 600;
	color: #d18617;
	border-bottom: 1px solid #d18617;
	margin-bottom: 5px;
	padding-bottom: 5px;
}
.address-form p{
	margin-bottom:0;color:#222;
}
.address-to h5{
 text-transform:uppercase;font-weight:600;color:#d18617;border-bottom:1px solid #d18617;margin-bottom: 5px;
 padding-bottom: 5px;
}
.address-to p{
  margin-bottom:0;color:#222;font-weight:bold;
}
.inv-date-details h5{
	text-align:end;font-size:18px;text-transform:uppercase;font-weight:bold;color:#d18617;margin-bottom: 5px;
}

.invoice-d-table table{
	border:1px solid #d18617;
}
.invoice-d-table table>thead tr {
	/* background:#bdccc5; */
	border-style:none;
	border: 1px solid #d18617;
}
.invoice-d-table thead tr>th{
	border-style:none;font-size:16px;padding:5px;color:#d18617;text-align:center;border-right:1px solid #d18617;width:50%;
}
.invoice-d-table tbody{
	text-align:center;color:#222;
}
.invoice-d-table tbody tr{
	border-style:none;
}
.invoice-d-table tbody tr>th{
	color: #d18617;border-style:none;border-right:1px solid #d18617;border-bottom:1px solid #d18617;border-top-width:0; vertical-align: middle;
}
.invoice-d-table tbody tr>td{
	border-style:none;border-bottom-width:0;border-top-width:0; border-bottom: 1px solid #d18617;color: #d18617;
    font-weight: 500;
}
.payment-method thead tr{
	text-transform: uppercase; font-weight: 700;
}
.payment-method tbody tr>td{
	font-size: 16px; text-transform: uppercase;color: #d18617;
}
.product-table-detail table>thead{
	background:#ddd;color:#d18617;text-transform:uppercase;text-align:center;border-top: 1px solid #d18617;
}
.product-table-detail table>thead th{
	font-size:13px;border-right:1px solid #d18617;border-left:1px solid #d18617;border-bottom:0;
}
.product-table-detail table tbody tr>td{
  border-right:1px solid #d18617;border-left:1px solid #d18617;height:33px;border-bottom:1px solid #d18617; text-align: start;
}
.product-table-detail table tbody tr>td{
	border:1px solid #d18617; color:#222;
}
.invoice-bottom-area {
	margin-bottom: 20px;
}
.invoice-bottom-area .bottom-text p{
	color:#222;
}
.invoice-bottom-area .bottom-text p>span{
color:#d18617;font-weight:bold;
}
.invoice-bottom-area .bottom-text p>span{
	color:#d18617;font-weight:bold;
}
.invoice-bottom-area .bottom-text p>a{
	text-decoration:none;color:#222;
}
.invoice-footer-area{
	background:#ddd;padding:10px 0;
}
.invoice-footer-area ul li{
	list-style:none;display:inline-block;margin:5px;
}
.invoice-footer-area ul li a>i{
	font-size:20px;color:#d18617;border:1px solid #d18617;width:30px;height:30px;line-height:30px;border-radius:5px;
}
.invoice-footer-area .bottom-text p{
	color:#222;
	margin:0
}
.invoice-footer-area .bottom-text p>a{
	text-decoration:none;color:#d18617;
}
.download-invoice-btn{
	padding:5px 49px;border-radius:5px;background:#d18617;margin-top:20px;
}
.address-form p {
  margin-bottom: 10px;
  color: #222;
}
.table>:not(:last-child)>:last-child>* {
    border-bottom-color: currentColor;
    border-bottom: 1px solid #d18617!important;
    border-top: 1px solid #d18617;
}
select.form-control.order-status {
    color: #d18617;
    font-weight: 600;
}
</style>
@endpush
@section('content')
<div class="invoice-page-wrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <div id="success-msg" class="text-white"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-10 col-lg-10 col-md-10 m-auto">
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
                                                    <img class="img-fluid" src="{{asset('uploads/settings/logo/'.$settings->logo)}}" alt="logo">
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
                                            <p>	@if(!empty($settings)){{$settings->site_title}}@endif</p>
                                            <p>
                                                @if(!empty($settings)){{$settings->address}}@endif
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
                                                Mobile:{{$order->billing_adderss->phone}}
                                                @endif
                                            </p>
                                            <p>
                                                @if(!empty($order->billing_adderss->address))
                                                    {{$order->billing_adderss->address}}
                                                @endif
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
                                                        <!-- 0=Pending,1=On The Way,2=Processing,3=Completed,4=Canceled,5=Failed -->
                                                        <select data-order-id="{{$order->invoice_id}}" class="form-control order-status">
                                                            <option value="0" {{$order->status==0?'selected':''}}>Pending</option>
                                                            <option value="1" {{$order->status==1?'selected':''}}>On The Way</option>
                                                            <option value="2" {{$order->status==2?'selected':''}}>Processing</option>
                                                            <option value="3" {{$order->status==3?'selected':''}}>Completed</option>
                                                            <option value="4" {{$order->status==4?'selected':''}}>Canceled</option>
                                                            <option value="5" {{$order->status==5?'selected':''}}>Failed</option>
                                                        </select>
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
                                                    
                                                    <tr>
                                                        <td scope="row">
                                                            {{$orderInfo->product->title}}
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
                                                contact <br> <span>	@if(!empty($settings)){{$settings->site_title}}@endif</span>,
                                                <a href="tel:@if(!empty($settings)){{$settings->phone}}@endif">Mobile: @if(!empty($settings)){{$settings->phone}}@endif</a>,
                                                <a href="mailto:@if(!empty($settings)){{$settings->email}}@endif">Email: @if(!empty($settings)){{$settings->email}}@endif</a>
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
                                            <p> <a href=#>@if(!empty($settings)){{$settings->site_title}}@endif</a> &copy @php echo date('Y')@endphp | All Rights Reserved</p>
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
                                    <button id="buttonID" class="btn download-invoice-btn text-white" style="padding:5px 49px;border-radius:5px;background:#d18617;margin-top:20px;">Download Invoice</button>
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