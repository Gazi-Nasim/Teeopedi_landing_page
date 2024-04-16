<?php

namespace App\Http\Controllers;

use App\Models\Advantage;
use App\Models\Policy;
use App\Models\Product;
use App\Models\SingleData;
use App\Models\Why_mustrad;
use App\Models\WhySafefood;
use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public static $bn = ["১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০"];
    public static $en = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];

    public static function bn2en($number)
    {
        return str_replace(self::$bn, self::$en, $number);
    }

    public static function en2bn($number)
    {
        return str_replace(self::$en, self::$bn, $number);
    }
    /**
     * Display a listing of the resource.
     */
    public function index($slug)
    {
        $product = Product::where('slug', $slug)
            ->where('status', 1)
            ->first();
        if ($product->landing_page == 'no') {
            return redirect()->route('index');
        }
        // dd($product);
        $regular_price = $this->en2bn($product->regular_price);
        $sale_price = $this->en2bn($product->sale_price);
        $discount = $this->en2bn($product->regular_price - $product->sale_price);
        $single = SingleData::where('product_id', $product->id)->first();
        $advantage = Advantage::where('product_id', $product->id)->get();
        $policy = Policy::where('product_id', $product->id)->get();
        $mustard = Why_mustrad::where('product_id', $product->id)->get();
        $safe = WhySafefood::where('product_id', $product->id)->get();

        return view('frontend.landing', compact('single', 'advantage', 'policy', 'mustard', 'safe', 'product', 'sale_price', 'regular_price', 'discount'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
