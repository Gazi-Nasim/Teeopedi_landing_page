@extends('frontend.layouts.master')
@push('css')
@endpush
@section('content')
<main class="cart-body">
<?php
$total_exchanged =0;
$selected_currency_new  = $selected_currency->id;
if(Auth::user()){
    if(Auth::user()->user_currency){
        $selected_currency_new = Auth::user()->user_currency;
    }else if(Session::get('currency_value')){
        $selected_currency_new = Session::get('currency_value');
    }
}else if(Session::get('currency_value')){
    $selected_currency_new = Session::get('currency_value');
}
$s_currency = App\Models\Currency::select('currency_symbol')->where('status',1)->where('id',$selected_currency_new)->first();
?>
<div class="order-page-wrapper mt-5 mb-5  cart-body"> <br>
    <div class="container">
        <div class="row">
            <div class="col-xl-10 col-lg-12 col-md-12">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-12">
                        @include('user.include.dashboard_menu')
                    </div>
                    <div class="col-xl-9 col-lg-9 col-md-12">
                        <div class="tab-pane" id="v-pills-wish" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                            <div class="dash-heading">
                                <h5>WISHLIST</h5>
                            </div>
                            <div class="dash-table-wrap table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                        <th scope="col">Product</th>
                                        <th scope="col">PRODUCT DETAILS</th>
                                        <th scope="col">PRICE</th>
                                        <!-- <th scope="col">AVAILABILITY</th> -->
                                        <th scope="col">action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @forelse($wishlist as $wish)
                                        <tr>
                                            <td class="wish-produ-thum"><img class="img-fluid" src="{{asset('uploads/products/images/'.$wish->featured_img)}}"></td>
                                            <td class="wish-product-text"><a class="text-cus text-decoration-none" href="{{route('product-details',[$wish->slug])}}">{{$wish->title}}</a></td>
                                            <td>{{$s_currency->currency_symbol}} {{getCurrency($selected_currency_new, $wish->currency, $wish->regular_price)}}</td>
                                            <!-- <td><a class="btn pendiing-btn" href="#">In Stock</a></td> -->
                                            <td class="dashboard-wish"><a class="text-capitalize" href="{{route('wishlist.delete',$wish->id)}}"><i class="fas fa-trash-alt text-danger"> Delete</a></td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="5" class="text-center">No Item Found</td>
                                        </tr>
                                    @endforelse
                                    </tbody>
                                </table>
                                <div class="mt-4 text-center">
                                    {{$wishlist->links()}}
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
@endsection
