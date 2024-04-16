<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\LocalShipping;
use App\Models\BillingAddress;
use App\Models\Coupon_Products;
use App\Models\Coupon;
use App\Models\Country;
use App\Models\Division;
use App\Models\District;
use App\Models\Thana;
use App\Models\Coupon_Cat;
use App\Models\Coupon_Users;
use App\Models\Order;
use App\Models\OrderDetails;
use Session;
use DB;
use Auth;
use Cart;

class CheckoutController extends Controller
{
    public function checkout(){

        $title='Checkout';
        $meta_description='';
        $meta_img ='';
        $districts = District::where('status',1)->get();
        $shipping_option = LocalShipping::where('status',1)->get();
        $content = Cart::content();
        if($content->count() > 0){
            return view('frontend.pages.checkout', compact('title','meta_description', 'meta_img','content','districts','shipping_option'));
        }else{
            return redirect('/');
        }
    }
    public function getThana($districtID){
        $thana_id = Thana::where('district_id', $districtID)->get();
        return json_encode($thana_id);
    }
    public function getShipping($shipID){
        $coupon_amount = 0;
        if(Session::get('amount') == null){
            $coupon_amount = 0;
        }else{
            $coupon_amount = Session::get('amount');
        }
        $ship = LocalShipping::where('id', $shipID)->first();
        $subtotal=Cart::subtotal();
		$sub_t =str_replace( ',', '', $subtotal);
        $sub_f = (float)$sub_t;
        $local_fee_type= $ship->fee_type;
		$local_fee_amount = $ship->fee_amount;

        if($local_fee_type == 1){
            $shipping_cost = $local_fee_amount;
        }
        if($local_fee_type == 2){
            $shipping_cost = ($local_fee_amount * $sub_f)/100;
        }
        if($local_fee_type == 3){
            $qty  = Cart::count();
            $shipping_cost = $local_fee_amount * $qty;
        }
        if($local_fee_type == 4){
            $total_shipping_cost = 0;
            $content = Cart::content();
            foreach($content as $row){
                $price = (($row->price) * $local_fee_amount)/100;
                $total_shipping_cost = $total_shipping_cost + $price;
            }
            $shipping_cost=$total_shipping_cost;
        }
        return response()->json([
            'ship' => $ship,
            'shipping_cost' =>  $shipping_cost,
            'subtotal'  => $sub_f,
            'coupon_amount' => $coupon_amount,
        ]);
    }
}
