<?php
use App\Models\Category;
use App\Models\Product;

function CheckUser(){
    $user = Auth::user();
    if(!empty($user)){
        return $user->id;
    }else{
        return false;
    }
}
function getReviewData($user_id,$product_id){
    $review = DB::table('product_reviews')->where('user_id',$user_id)->where('product_id',$product_id)->first();
    if(!empty($review)){
        return $review->user_rating;
    }else{
        return false;
    }
}
function getShipping($shipID){
    $ship = App\Models\LocalShipping::where('id',$shipID)->first();
    $shipping_rate = $ship->fee_amount;
    $local_fee_type= $ship->fee_type;
    $local_fee_amount = $ship->fee_amount;
    $exchanged_ship_rate = $local_fee_amount;

    if($local_fee_type == 1){
        return $shipping_cost = $exchanged_ship_rate;
    }
    if($local_fee_type == 2){
        return $shipping_cost = ($exchanged_ship_rate * $sub_f)/100;
    }
    if($local_fee_type == 3){
        $qty  = Cart::count();
        return $shipping_cost = $exchanged_ship_rate * $qty;
    }
    if($local_fee_type == 4){
        $total_shipping_cost = 0;
        $content = Cart::content();
        foreach($content as $row){
            $price = (($row->price) * $local_fee_amount)/100;
            $total_shipping_cost = $total_shipping_cost + $price;
        }
        return $shipping_cost=$total_shipping_cost;
    }
}
function getParent($slug){
    $category = Category::where('slug',$slug)->first();
    return $category->parent_id;
}
function readableDate($date){
    $order_created_date = strtotime($date);
    return date(' jS F , Y', $order_created_date);
}
function getCatTitle($cat_id){
    $cat = Category::where('id',$cat_id)->first();
    if(!empty($cat)){
        return $cat->title;
    }
    else{
        return '';
    }
}
function getSubCatProdCount($slug){
    $sub_cat = Category::where('slug',$slug)->first();
    $current_sub_cat = $sub_cat->id;
    if(!empty($sub_cat)){
        $product = Product::where('status',1);
        $product = $product->whereRaw('FIND_IN_SET(?, category_id) > 0',$current_sub_cat);
        $all_count =  $product->whereRaw('FIND_IN_SET(?, category_id) > 0',$current_sub_cat);
        $all_count = $product->orderBy('id','desc')->count();
        return $all_count;
    }
    else{
        return 0;
    }
}

?>