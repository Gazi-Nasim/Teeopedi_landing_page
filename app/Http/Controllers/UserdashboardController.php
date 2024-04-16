<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Country;
use App\Models\District;
use App\Models\Division;
use App\Models\Thana;
use Illuminate\Support\Facades\Validator;
use App\Models\WishList;
use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserdashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth']);
    }
    public function dashboard(){
        $title='User Dashboard';
        $meta_description='';
        $meta_img ='';
        $user = Auth::user();
        $pending_orders_count=Order::where('user_id',auth()->user()->id)->where('status',0)->count();
        $total_orders_count=Order::where('user_id',auth()->user()->id)->count();
        return view('frontend.user.dashboard', compact('title','meta_description', 'meta_img', 'pending_orders_count', 'total_orders_count'));
    }
    public function userOrderDetails($id){
        $title='User Order Details';
        $meta_img = '';
        $description = '';
        $order = Order::where('user_id',auth()->user()->id)->where('id',$id)->first();
        if($order->billing_id != 0) {
            $orders = DB::table('orders')
            ->select('orders.*','orders.id as oid', 'billing_addresses.*')
            ->join('billing_addresses', 'billing_addresses.id', '=', 'orders.billing_id')
            ->where('orders.id',$id)
            ->first();
        }else{
            $orders= null;
        }
        $country = Country::all();
        $district =District::all();
        $division =Division::all();
        $thana= Thana::all();
        return view('frontend.user.order-details')->with(
            [
                'order'=>$order,
                'orders'=>$orders,
                'district'=>$district,
                'division'=>$division,
                'country'=>$country,
                'thana'=>$thana,
                'title'=>$title,
                'meta_img'=>$meta_img,
                'description' => $description
            ]
        );
    }
    public function userChangePassword(){
        $title='User Change Password';
        $meta_img = '';
        $description = '';
        return view('frontend.user.change-password')->with(
            [
                'title'=>$title,
                'meta_img'=>$meta_img,
                'description' => $description
            ]
        );
    }
    public function storeNewPassword(Request $request){
        $request->validate([
            'current_password' => ['required', new MatchOldPassword],
            'new_password' => ['required'],
            'new_confirm_password' => ['same:new_password'],
        ]);
        User::find(auth()->user()->id)->update(['password'=> Hash::make($request->new_password)]);
        return back()->with('success','Password Changed Successfully.');
    }
    public function userProfile(){
        $title='User Profile';
        $meta_img = '';
        $description = '';
        $user = User::where('id',auth()->user()->id)->first();
        return view('frontend.user.profile')->with(
            [
                'user'=>$user,
                'title'=>$title,
                'meta_img'=>$meta_img,
                'description' => $description
            ]
        );
    }
    public function updateProfile(Request $request){
        $request->validate([
            'name' => 'required|string|max:100|unique:users,name,' . auth()->user()->id . ',id',
            'email' => 'required|string|email|max:100|unique:users,email,' . auth()->user()->id . ',id',
            'phone' => 'required|digits:11|unique:users,phone,' . auth()->user()->id . ',id',
            'address' => 'nullable|string|max:500',
        ]);

        $title='Update Profile';
        $meta_img = '';
        $description = '';
        $user=User::findOrFail(auth()->user()->id);
        $old_image = $user->avatar;
        $user->name=$request->name;
        $user->email=$request->email;
        $user->phone=$request->phone;
        $user->address=$request->address;

        $image = $request->file('avatar');
        if($image != '')
        {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/users', $imagename);
            $user->avatar = $imagename;
        }else{
            $user->avatar = $old_image;
        }
        $user->update();
        return back()->with('success','Profile Updated Successfully');
    }
    public function wishlist_store($id) {
        $product = Product::findOrFail($id);
        $user = Auth::user();
        $wishlist=WishList::where('user_id',$user->id)
        ->where('product_id',$product->id)
        ->first();
        if(isset($wishlist->user_id) and isset($wishlist->product_id))
        {
            return  redirect()->route('user.wishlist')->with('success', 'This item is already in your wishlist!');
        }
        else
        {
            $wishlist = new WishList;
            $wishlist->user_id = $user->id;
            $wishlist->product_id = $product->id;
            $wishlist->save();
            return redirect()->route('user.wishlist')->with('success','Item added to your wishlist.');
        }
    }
    public function wishlist_delete($id) {
        $wishlist = WishList::findOrFail($id);
        $wishlist->delete();
        return redirect()->back()->with('success','Item removed from your wishlist');
    }
    public function userOrder(){
        $title='User Orders';
        $meta_img = '';
        $description = '';
        $order_details=Order::where('user_id',auth()->user()->id)->paginate(5);
        return view('frontend.user.order', compact('title','meta_img', 'description','order_details'));
    }
    public function userWishlist(){
        $title='User Wishlist';
        $meta_img = '';
        $description = '';
        $wishlist = DB::table('products')
        ->select('wish_lists.id','products.title','products.slug','products.currency','products.regular_price','products.hover_img','products.featured_img','users.id as UserId')
        ->join('wish_lists', 'wish_lists.product_id', '=', 'products.id')
        ->join('users', 'users.id', '=', 'wish_lists.user_id')
        ->where('wish_lists.user_id','=',auth()->user()->id)  
        ->where('products.status', 1) 
        ->orderBy('products.id','desc')
        ->paginate(5);
        return view('frontend.user.wishlist', compact('title','meta_img', 'description','wishlist'));
    }
    public function customLogout(){
        Auth::logout();
        return redirect('/');
    }
}
