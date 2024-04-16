<?php

namespace App\Http\Controllers;
use App\Models\ProductReviews;
use DB;
use App\Models\User;
use Illuminate\Http\Request;

class ProductReviewController extends Controller
{
    public function ratingStoreUpdate(Request $request){
        // return $request->all();
        $product_id = intval($request->product_id);
        $user_id = intval($request->user_id);
        $user_rating = intval($request->rating_data);
        $user =User::where('id',$user_id)->first();
        if(!empty($user->avatar)){
            if($user->account_type != 1){
                $user_avatar = $user->avatar;
            }else{
                $user_avatar = '/uploads/users'.$user->avatar;
            }
        }else{
            $user_avatar = 'default.jpg';
        }
        $product_rating = ProductReviews::updateOrCreate(
            ['product_id' => $product_id, 'user_id' => $user_id],
            ['user_rating' => $user_rating]
        );
        if(!empty($product_rating->updated_at)){
            $review_date=readableDate($product_rating->updated_at);
        }else{
            $review_date=readableDate($product_rating->created_at);
        }
        $sum_rating = DB::table('product_reviews')->where('user_rating','!=',0)->where('product_id',$product_id)->sum('user_rating');
        $rate_count =  DB::table('product_reviews')->where('product_id',$product_id)->where('user_rating','!=',0)->count('user_rating');
        if($rate_count==0){
            $avg_rating = number_format($sum_rating/1,2);
        }else{
            $avg_rating = number_format($sum_rating/$rate_count,2);
            $real_avg   = floatval($avg_rating);
            $whole   = intval($avg_rating);
            $fraction =  $real_avg - $whole;
        }
        $review_count =  DB::table('product_reviews')->where('product_id',$product_id)->where('user_review','!=',null)->count('user_review');
        return response()->json([
            'success'=>'Rating Saved Successfully',
            'rating'=>$product_rating->user_rating,
            'product_id'=>$product_id,
            'user_id'=>$user_id,
            'user_review'=>$product_rating->user_review,
            'rate_count'=>$rate_count,
            'review_count'=>$review_count,
            'avg_rating'=>$avg_rating,
            'user_name'=>$user->name,
            'user_avatar'=>$user_avatar,
            'review_date'=>$review_date,
            'whole'=>$whole,
            'fraction'=>$fraction,
        ]);
    }
    public function reviewStoreUpdate(Request $request){
        // return $request->all();
        $product_id = intval($request->product_id);
        $user_id = intval($request->user_id);
        $user_review = strip_tags($request->review_data);
        $user =User::where('id',$user_id)->first();
        if(!empty($user->avatar)){
            $user_avatar = $user->avatar;
        }else{
            $user_avatar = '/uploads/users/default.jpg';
        }
        $sum_rating = DB::table('product_reviews')->where('user_rating','!=',0)->where('product_id',$product_id)->sum('user_rating');
        $rate_count =  DB::table('product_reviews')->where('product_id',$product_id)->where('user_rating','!=',0)->count('user_rating');
        $product_review = ProductReviews::updateOrCreate(
            ['product_id' => $product_id, 'user_id' => $user_id],
            ['user_review' => $user_review]
        );
        $review_count =  DB::table('product_reviews')->where('product_id',$product_id)->where('user_review','!=',null)->count('user_review');
        if(!empty($product_review->updated_at)){
            $review_date=readableDate($product_review->updated_at);
        }else{
            $review_date=readableDate($product_review->created_at);
        }
        return response()->json([
            'success'=>'Review Saved Successfully',
            'product_id'=>$product_id,
            'user_id'=>$user_id,
            'user_review'=>$product_review->user_review,
            'rating'=>$product_review->user_rating,
            'rate_count'=>$rate_count,
            'user_name'=>$user->name,
            'user_avatar'=>$user_avatar,
            'review_count'=>$review_count,
            'review_date'=>$review_date,
        ]);
    }
}
