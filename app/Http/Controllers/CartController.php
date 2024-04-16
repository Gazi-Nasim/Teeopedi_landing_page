<?php

namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Cart;
use Auth;
use DB;
use Session;
use App\Models\ProductAttribute;
use App\Models\ProductAttributeStock;
class CartController extends Controller
{
    public function cart(){
        $title='Cart';
        $meta_description='';
        $meta_img ='';
        $content = Cart::content();
        $subtotal = Cart::subtotal();
        $sub_t =str_replace( ',', '', $subtotal);
        $sub_total = (float)$sub_t;
        return view('frontend.pages.cart', compact('title','meta_description', 'meta_img','content','sub_total'));
    }
    public function addToCart(Request $request , $product_id){
        $validator = Validator::make($request->all(),[
            'quantity' => 'required|integer|min:1|max:100',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => 'errors', 'errors' => $validator->errors(),], 200);
        }
        $quantity = intval($request->quantity);
        $product = Product::where('id', $product_id)->where('status',1)->first();
        if(!empty($product)){
            if(empty($request->prodSize) && empty($request->prodColor)){
                $data['id'] = $product->id;
                $data['name'] = $product->title;
                $data['price'] = $product->regular_price;
                $data['qty'] = $request->quantity;
                $data['weight'] = 0;
                $data['options']['id'] = $product->id;
                $data['options']['regular_price'] = $product->regular_price;
                $data['options']['image'] = $product->featured_img;
                $data['options']['size'] = '';
                $data['options']['color'] = '';
                $data['options']['slug'] = $product->slug;
                Cart::add($data);
            }else{
                $checkAttr = ProductAttribute::where('product_id', $product_id)->where('attr_size', intval($request->prodSize))->where('attr_color_val', '=', $request->prodColor)->first();
                if (!empty($checkAttr)) {
                    $stock = $checkAttr->status;
                    if ($stock == 2) {
                        return response()->json(['status' => 'errors', 'errors' => 'Product is out of stock'], 200);
                    }else {
                        $data['id'] = $product->id. $request->prodSize . $request->prodColor;
                        $data['name'] = $product->title;
                        $data['price'] = $product->regular_price;
                        $data['qty'] = $request->quantity;
                        $data['weight'] = 0;
                        $data['options']['id'] = $product->id;
                        $data['options']['regular_price'] = $product->regular_price;
                        $data['options']['image'] = $product->featured_img;
                        $data['options']['size'] = $request->prodSize ;
                        $data['options']['color'] = $checkAttr->attr_color;
                        $data['options']['slug'] = $product->slug;
                        Cart::add($data);
                    }
                }
            }
            return response()->json(['status' => 'success', 'success' => 'Item added to cart successfully', 'cart_count'=>Cart::count()], 200);
        }
        return response()->json(['error' => 'Product Not Found']);

    }
    public function removeItem($rowId)
    {
        Cart::remove($rowId);
        if(Cart::count() > 0){
            return back()->with('success','Item Removed Successfully');
        }
        else{
            Session::pull('amount');
            Session::pull('coupon_code');
            return to_route('cart')->with('success','Item Removed Successfully');
        }
    }
     public function removeAll(){
        Cart::destroy();
        Session::pull('amount');
        Session::pull('coupon_code');
        return redirect('/')->with('success','Cart Has Been Cleared');
    }
    public function updateQty(Request $request){
        $quantity = intval($request->qty);
        $rowId = $request->rowId;
        $product_id= $request->product_id;
        $product  = Product::where('id',$product_id)->where('status',1)->first();
        if(!empty($product)){
            if(!empty($quantity)){
                if(!empty($request->prodSize && !empty($request->prodColor))){
                    $checkAttr = ProductAttribute::where('product_id', $product_id)->where('attr_size', intval($request->prodSize))->where('attr_color', '=', $request->prodColor)->first();
                    if(!empty($checkAttr)){
                        $stock = $checkAttr->status;
                        if($stock == 2){
                            Cart::remove($rowId);
                            return response()->json(['error'=>'Product is out of stock', 'stock_status'=> $stock]);
                        }else{
                            return $this->UpdateCart($quantity, $rowId);
                        }
                    }
                }else if(empty($request->prodSize && !empty($request->prodColor))){
                    return $this->UpdateCart($quantity, $rowId);
                }
            }else{
                return response()->json(['error' => 'Quantity can\'t be empty']);
            }
        }else{
            return response()->json(['404' => 'Product Not Found']);
        }
    }
    function UpdateCart($quantity, $rowId){
        if ($quantity <= 100) {
            Cart::update($rowId, $quantity);
            $subtotal = Cart::subtotal();
            $sub_t = str_replace(',', '', $subtotal);
            $sub_total = (float)$sub_t;
            return response()->json(['success' => 'Cart Updated Successfully', 'subtotal' => $sub_total, 'cart_count' => Cart::count()]);
        } else {
            return response()->json(['error' => 'You can\'t add more than 100 item for the product']);
        }
    }
    public function buy(Request $request , $product_id){
        $validator = Validator::make($request->all(),[
            'quantity' => 'required|integer|min:1|max:100',
        ]);
        if ($validator->fails()) {
            return response()->json(['status' => 'errors', 'errors' => $validator->errors(),], 200);
        }
        $quantity = intval($request->quantity);
        $product = Product::where('id', $product_id)->where('status',1)->first();
        if(!empty($product)){
            if(empty($request->prodSize) && empty($request->prodColor)){
                $data['id'] = $product->id;
                $data['name'] = $product->title;
                $data['price'] = $product->regular_price;
                $data['qty'] = $request->quantity;
                $data['weight'] = 0;
                $data['options']['id'] = $product->id;
                $data['options']['regular_price'] = $product->regular_price;
                $data['options']['image'] = $product->featured_img;
                $data['options']['size'] = '';
                $data['options']['color'] = '';
                $data['options']['slug'] = $product->slug;
                Cart::add($data);
            }else{
                $checkAttr = ProductAttribute::where('product_id', $product_id)->where('attr_size', intval($request->prodSize))->where('attr_color_val', '=', $request->prodColor)->first();
                if (!empty($checkAttr)) {
                    $stock = $checkAttr->status;
                    if ($stock == 2) {
                        return response()->json(['status' => 'errors', 'errors' => 'Product is out of stock'], 200);
                    }else {
                        $data['id'] = $product->id. $request->prodSize . $request->prodColor;
                        $data['name'] = $product->title;
                        $data['price'] = $product->regular_price;
                        $data['qty'] = $request->quantity;
                        $data['weight'] = 0;
                        $data['options']['id'] = $product->id;
                        $data['options']['regular_price'] = $product->regular_price;
                        $data['options']['image'] = $product->featured_img;
                        $data['options']['size'] = $request->prodSize ;
                        $data['options']['color'] = $checkAttr->attr_color;
                        $data['options']['slug'] = $product->slug;
                        Cart::add($data);
                    }
                }
            }
            return response()->json(['status' => 'success', 'success' => 'Item added to cart successfully', 'cart_count'=>Cart::count()], 200);
        }
        return response()->json(['error' => 'Product Not Found']);

    }
}
