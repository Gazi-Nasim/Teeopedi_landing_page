<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Category;
use App\Models\Product;
use App\Models\Order;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{

    // Admin functions
    public function index()
    {
        $title = 'Dashboard';
        $user_count = User::where('role', '!=', 1)->count();
        $categories_count = Category::count();
        $products_count = Product::count();
        $total_revenue = Order::where('status', '=', 3)->sum('total');
        return view('admin.dashboard.index',compact('title', 'user_count', 'categories_count', 'products_count', 'total_revenue'));
    }
    public function customLogout()
    {
        Auth::logout();
        return redirect('/adMinL0gin');
    }

}
