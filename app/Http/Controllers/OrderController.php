<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Cart;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\Models\Thana;
use App\Models\District;
use App\Models\Division;
use App\Models\Country;
use App\Models\BillingAddress;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Product;
use App\Models\ProductAttribute;


class OrderController extends Controller
{
    public function allOrder(){
        $title='All Orders';
        $orders =  Order::orderBy('id','desc')->get();
        return view('admin.orders.all-order', compact('orders','title'));
    }
    public function orderDetails($id)
    {
        $title='Order Details';
        $order = Order::findOrFail($id);
        if($order->billing_id != 0) {
            $orders = DB::table('orders')
            ->select('orders.*','orders.id as oid', 'billing_addresses.*')
            ->join('billing_addresses', 'billing_addresses.id', '=', 'orders.billing_id')
            ->where('orders.id',$order->id)
            ->first();
        }else{
            $orders= null;
        }
        $country = Country::all();
        $district =District::all();
        $division =Division::all();
        $thana= Thana::all();
        return view('admin.orders.order-details', compact('order', 'district', 'division','country','thana','title'));
    }
    public function orderDelete($id)
    {
        Order::where('id', $id)->delete();
        return back()->with('success', 'Order Deleted Successfully');
    }
    public function placeOrder(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'phone' => 'required|digits:11',
            'email' => 'required|email|max:255',
            'district_id' => 'required|integer',
            'thana_id'=>'required|integer',
            'zip' => 'required|integer',
            'address' => 'required|string|max:255',
            'shipping'=>'required|integer',
            'special_note'=>'nullable|string',
            'payment' => 'required',
            'agree'=>'required',
        ]);
        if($request->payment == 'cash'){
            $content = Cart::content();
            $user = Auth::user();
            $district = District::where('id',$request->district_id)->first();
            $division_id = $district->division_id;
            $billing = BillingAddress::create(array(
                "name" => $request->name,
                "email" => $request->email,
                "phone" => $request->phone,
                "country_id" => 1,
                "division_id" => $division_id,
                "district_id" => $request->district_id,
                "thana_id" => $request->thana_id,
                "address" => $request->address,
                "zip_code" => $request->zip,
            ));
            $country = Country::all();
            $district =District::all();
            $division =Division::all();
            $thana= Thana::all();
            $invoice = Order::orderBy('invoice_id', 'DESC')->first();
            if ($invoice != null) {
                $invoice_id = $invoice->invoice_id + 1;
            } else {
                $invoice_id = 1;
            }
            if(Auth::user()){
                $user_id = Auth::user()->id;
            }else{
                $user_id = 0;
            }
            if (Session::has('coupon_code')) {
                $coupon_code = Session::get('coupon_code');
            }
            else{
                $coupon_code = null;
            }
            if (Session::has('amount')) {
                $coupon_amount = Session::get('amount');
            } else {
                $coupon_amount = 0;
            }
            $subtotal=Cart::subtotal();
            $sub_t =str_replace( ',', '', $subtotal);
            $sub_f = (float)$sub_t;
            $shipping_cost = getShipping($request->shipping);
            $subtotal = Cart::subtotal();
            $f_subtotal = str_replace(',','',$subtotal);
            $total = $f_subtotal + $shipping_cost - $coupon_amount;
            foreach ($content as $row) {
				$product = Product::where('id',$row->options['id'])->where('status',1)->first();
				if(!empty($row->options['size']) && !empty($row->options['color'])){
                    $checkAttr = ProductAttribute::where('product_id', $row->options['id']) ->where('attr_size','=',$row->options['size']) ->where('attr_color','=',$row->options['color'])->first();
					if($checkAttr->status==2){
						return redirect('/cart')->with('cart_error','Some of the item in the cart out of stock. Remove all the item from cart and try again');
					}
				}
				if(!$product){
					return redirect('/cart')->with('cart_error','Some of the product are not available. Remove all the item from cart and try again');
				}
            }
            $order = Order::create(array(
                'invoice_id' => $invoice_id,
                'payment_method' => $request->payment,
                'sub_total' => $f_subtotal,
                'coupon_code' => $coupon_code,
                'coupon_amount' => $coupon_amount,
                'shipping_rate' => $shipping_cost,
                'total' => $total,
                'user_id'=>$user_id,
                'billing_id' => $billing->id,
                'shipping_option'=> $request->shipping,
                'special_note'=> $request->special_note,
                'status' => 0,
            ));
            // dd($order);
            $details = array();
            foreach ($content as $row) {
                $details['order_id'] = $order->id;
                $details['product_id'] = $row->options['id'];
                $details['qty'] = $row->qty;
                $details['price'] = $row->price;
                $details['total'] = $row->qty * $row->price;
                if($row->options['size']){
                    $details['size_attr'] = $row->options['size'];
                }else{
                    $details['size_attr'] = '';
                }
                if ($row->options['color']) {
                    $details['color_attr'] = $row->options['color'];
                } else {
                    $details['color_attr'] = '';
                }
                OrderDetails::create($details);
            }
            $billing_address  = DB::table('billing_addresses')
            ->select('billing_addresses.*','districts.name as district_name', 'divisions.name as division_name','thanas.name as thana_name', 'countries.name as country_name')
            ->join('districts','districts.id','=','billing_addresses.district_id')
            ->join('divisions','divisions.id','=','billing_addresses.division_id')
            ->join('thanas','thanas.id','=','billing_addresses.thana_id')
            ->join('countries','countries.id','=','billing_addresses.country_id')
            ->where('billing_addresses.status', 1)
            ->where('billing_addresses.id',$order->billing_id)
            ->first();
            // $adminEmail = 'admin@multikart.com';
            // \Mail::send('email/OrderMail', array(
            //     'name' => $request->name,
            //     'order'=>$order,
            //     'sub_total' => $f_subtotal,
            //     'coupon_amount' => $coupon_amount,
            //     'shipping' => $shipping_cost,
            //     'total'=>$total,
            //     'billing_address'=>$billing_address,
            //     'thana'=>$thana,
            //     'district'=>$district,
            //     'division'=>$division,
            //     'country'=>$country,
            // ), function($message) use ($adminEmail){
            //     $message->from('multikart@mail.com','Multikart');
            //     $message->to($adminEmail)->subject('Order Details');
            // });
            // \Mail::send('email/OrderMail', array(
            //     'name' => $request->name,
            //     'order'=>$order,
            //     'sub_total' => $f_subtotal,
            //     'coupon_amount' => $coupon_amount,
            //     'shipping' => $shipping_cost,
            //     'total'=>$total,
            //     'billing_address'=>$billing_address,
            //     'thana'=>$thana,
            //     'district'=>$district,
            //     'division'=>$division,
            //     'country'=>$country,
            // ), function($message) use ($request){
            //     $message->from('multikart@mail.com','Multikart');
            //     $message->to($request->email)->subject('Order Details');
            // });

            Cart::destroy();
            Session::pull('amount');
            Session::pull('total');
            Session::pull('coupon_code');
            $order = Order::latest()->first();

            if(Auth::user() && Auth::user()->role !=1){
                return redirect()->route('user.order-details',$order->id);
            }else{
                return redirect()->route('complete-order')->with(
                    [
                        'order_complete'=>'Thanks! Your order has been placed successfully.',
                        'success'=>'Thanks! Your order has been placed successfully.',
                    ]
                );
            }
        }
    }
    public function orderComplete(){
        if(!Session::has('order_complete')){
            return redirect('/');
        }
        $title = 'Order Complete';
        $meta_img = '';
        $description = '';
        $order = Order::latest()->first();
        if($order->billing_id != 0) {
            $orders = DB::table('orders')
            ->select('orders.*','orders.id as oid', 'billing_addresses.*')
            ->join('billing_addresses', 'billing_addresses.id', '=', 'orders.billing_id')
            ->where('orders.id',$order->id)
            ->first();
        }else{
            $orders= null;
        }
        $country = Country::all();
        $district =District::all();
        $division =Division::all();
        $thana= Thana::all();
        return view('frontend.pages.order-complete')->with(
            [
                'success'=>'Thanks! Your order has been placed successfully.',
                'order'=>$order,
                'orders'=>$orders,
                'district'=>$district,
                'division'=>$division,
                'country'=>$country,
                'thana'=>$thana,
                'title'=>$title,
                'meta_img'=>$meta_img,
                'description'=>$description,
            ]
        );
    }
    public function changeOrderStatus($status, $order_id,)
    {
        $order = Order::findOrFail($order_id);
        Order::where('id', $order->id)->update(['status' => $status]);
        return response()->json(['success' => 'Order Status Changed Successfully']);
    }
}