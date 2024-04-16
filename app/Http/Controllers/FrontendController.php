<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\SliderImage;
use App\Models\Product;
use App\Models\ProductAttribute;
use App\Models\Blog;
use App\Models\Page;
use App\Models\BlogGeneral;
use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\Offer;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
class FrontendController extends Controller
{
    public function index(){
        $title='Home';
        $meta_description='';
        $meta_img ='';
        $offers=Offer::where('status',1)->latest()->take(4)->get();
        $blogs=Blog::where('status',1)->latest()->take(3)->get();
        $desktop_slider_images = SliderImage::where('status', 1)->where('slider_id',1)->get();
        $mobile_slider_images = SliderImage::where('status', 1)->where('slider_id',2)->get();
        $new_products =Product::select('title', 'slug', 'featured_img', 'flash_title', 'sale_price', 'regular_price', 'status','id')->where('status',1)->latest()->take(6)->get();
        $top_collection = DB::table('products')
        ->select('title', 'slug', 'featured_img', 'flash_title', 'sale_price', 'regular_price', 'status', 'id')
        ->whereRaw('FIND_IN_SET(?, special_cat_id) > 0', 1)
        ->where('products.status', 1)
        ->orderBy('products.id', 'desc')
        ->take(6)
        ->get();

        $newProductsCollectionWithAttributes = [];
        foreach ($new_products as $nwProduct) {
            $uniqueElementId = rand(1, 5685455);
            $product_id = $nwProduct->id;

            // Fetch unique size and color attributes for the current product
            $p_size = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_size')->toArray()));
            $p_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_color_val')->toArray()));

            // Add size and color attributes to the product object
            $nwProduct->size_attributes = $p_size;
            $nwProduct->color_attributes = $p_color;
            $nwProduct->unique_id = $uniqueElementId;
            $newProductsCollectionWithAttributes[] = $nwProduct;
        }
        $topCollectionWithAttributes = [];
        foreach ($top_collection as $tpProduct) {
            $product_id = $tpProduct->id;
            $uniqueElementId = rand(1, 5685455);
            // Fetch unique size and color attributes for the current product
            $p_size = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_size','id')->toArray()));
            $p_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_color_val')->toArray()));

            // Add size and color attributes to the product object
            $tpProduct->size_attributes = $p_size;
            $tpProduct->color_attributes = $p_color;
            $tpProduct->unique_id = $uniqueElementId;
            $topCollectionWithAttributes[] = $tpProduct;
        }
        // $productsWithAttributes now contains the products along with their size and color attributes

        return view('frontend.pages.index', compact('title','meta_description', 'desktop_slider_images', 'mobile_slider_images','offers','blogs','new_products', 'topCollectionWithAttributes', 'newProductsCollectionWithAttributes'));
    }
    public function category(Category $category,$subCategory = null){
        if(!empty($category)){
            $title="Category - " . $category->title;
        }else{
            $title=$subCategory;
        }
       //dd($subCategory);
        $meta_description=$category->short_desc;
        $meta_img =$category->img;
        $current_cat = $category->id;
        $current_sub_cat = '';
        $subCatQry = '';
        $all_cat = Category::where('id', $category->id)->with('children')
        ->where('status', 1)
		->first();
        if($subCategory){
            $sub = Category::where('slug', $subCategory)->with('parent')
            ->where('status', 1)
            ->first();
            if(!empty($sub)){
                $current_sub_cat = $sub->id;
                $product = Product::where('status',1);
                $product = $product->whereRaw('FIND_IN_SET(?, category_id) > 0',$current_sub_cat);
                $product = $product->orderBy('id','desc')->take(9);
                $productsCollectionWithAttributes = collect(); // Create an empty collection

                foreach ($product->get() as $pro) {
                    $uniqueElementId = rand(1, 5685455);
                    $product_id = $pro->id;

                    // Fetch unique size and color attributes for the current product
                    $p_size = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_size')->toArray()));
                    $p_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_color_val')->toArray()));

                    // Add size and color attributes to the product object
                    $pro->size_attributes = $p_size;
                    $pro->color_attributes = $p_color;
                    $pro->unique_id = $uniqueElementId;

                    $productsCollectionWithAttributes->push($pro); // Add the modified product object to the collection
                }

                $all_count =  $product->whereRaw('FIND_IN_SET(?, category_id) > 0',$current_sub_cat);
                $all_count = $product->orderBy('id','desc')->count();
            }else{
                abort(404);
            }
        }
        else{
            $product = Product::where('status',1);
            $subCatQry .= "( FIND_IN_SET($current_cat, category_id) > 0";
            for ($i=0; $i < count($all_cat['children']); $i++) {
                $subCat = $all_cat['children'][$i];
                if($i == 0){
                    $subCatQry .= " OR ";
                }
                $subCatQry .= "FIND_IN_SET($subCat->id, category_id) > 0";
                if($i+1 != count($all_cat['children'])){
                    $subCatQry .= " OR ";
                }
            }
            $subCatQry .= " )";
            $product = $product->whereRaw($subCatQry);
            $product = $product->orderBy('id','desc');
            // dd($product);
            $productsCollectionWithAttributes = collect(); // Create an empty collection

            foreach ($product->get() as $pro) {
                $uniqueElementId = rand(1, 5685455);
                $product_id = $pro->id;

                // Fetch unique size and color attributes for the current product
                $p_size = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_size')->toArray()));
                $p_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_color_val')->toArray()));

                // Add size and color attributes to the product object
                $pro->size_attributes = $p_size;
                $pro->color_attributes = $p_color;
                $pro->unique_id = $uniqueElementId;

                $productsCollectionWithAttributes->push($pro); // Add the modified product object to the collection
            }
            $all_count =  $product->whereRaw($subCatQry);
            $all_count = $product->orderBy('id','desc')->count();
        }
        $product = $product->get();
        $user = Auth::user();
        return view('frontend.pages.category', compact('title','meta_description', 'meta_img','product','current_cat','current_sub_cat','all_count','all_cat','subCategory','category', 'productsCollectionWithAttributes'));
    }
    public function search(Request $request){
        $title = 'Search';
        $meta_img = '';
        $meta_description = '';
        $search_result='';
        $search_q =$request->q;
        $search_result = DB::table('products')
        ->select('products.title','products.slug', 'products.regular_price','products.sale_price','products.featured_img','id')
        ->where('products.status',1)
        ->distinct('products.id')
        ->where('products.title', 'LIKE', "%{$search_q}%")
        ->orWhere('products.short_desc', 'LIKE', "%{$search_q}%")
        ->orWhere('products.description', 'LIKE', "%{$search_q}%")
        ->paginate(8);
        $productsCollectionWithAttributes = collect(); // Create an empty collection

        foreach ($search_result as $product) {
            $uniqueElementId = rand(1, 5685455);
            $product_id = $product->id;

            // Fetch unique size and color attributes for the current product
            $p_size = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_size')->toArray()));
            $p_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_color_val')->toArray()));

            // Add size and color attributes to the product object
            $product->size_attributes = $p_size;
            $product->color_attributes = $p_color;
            $product->unique_id = $uniqueElementId;

            $productsCollectionWithAttributes->push($product); // Add the modified product object to the collection
        }
        return view('frontend.pages.search-result', compact('title', 'meta_img','meta_description','search_result','search_q', 'productsCollectionWithAttributes'));
    }
    public function products(){
        $title = 'Shop';
        $meta_description = '';
        $meta_img = '';
        $slider_images = SliderImage::where('status', 1)->where('slider_id',1)->first();
        $products = Product::where('status',1)->latest()->paginate(10);
        $productsCollectionWithAttributes = collect(); // Create an empty collection

        foreach ($products as $product) {
            $uniqueElementId = rand(1, 5685455);
            $product_id = $product->id;

            // Fetch unique size and color attributes for the current product
            $p_size = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_size')->toArray()));
            $p_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_color_val')->toArray()));

            // Add size and color attributes to the product object
            $product->size_attributes = $p_size;
            $product->color_attributes = $p_color;
            $product->unique_id = $uniqueElementId;

            $productsCollectionWithAttributes->push($product); // Add the modified product object to the collection
        }
        // $paginatedProducts = $productsCollectionWithAttributes->simplePaginate(18);
        return view('frontend.pages.products', compact('title', 'meta_img', 'meta_description', 'productsCollectionWithAttributes','slider_images', 'products'));
    }
    public function productDetails($slug){
        $related_products=array();
        $result=array();
        $merge_images = array();
        $gallery_images='';
        $product_reviews='';
        $auth_user_review='';
        $whole='';
        $fraction='';
        $product = Product::where('status',1)->where('slug',$slug)->first();
        if(!empty($product)){
            $product_id=$product->id;
        }else{
            abort(404);
        }

        $p_size = array_values(array_unique(ProductAttribute::where('product_id',$product_id)
        ->pluck('attr_size')->toArray()));
        $p_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)
        ->pluck('attr_color_val')->toArray()));

        $product = Product::where('slug', $slug)
        ->where('status', 1)
		->first();
        if(!empty($product)){
            $title= $product->title;
            $meta_description=strip_tags($product->description);
            $meta_img = $product->featured_img;
        }else{
            abort(404);
        }
        $pro_cat = DB::table('products')
        ->select('categories.id', 'categories.title', 'categories.slug')
        ->join('categories', 'categories.id', '=', 'products.category_id')
        ->where('categories.parent_id',0)
        ->where('products.status',1)
        ->first();
        $pro_sub_cat = DB::table('products')
        ->select('categories.id', 'categories.title', 'categories.slug')
        ->join('categories', 'categories.id', '=', 'products.category_id')
        ->where('categories.parent_id','!=',0)
        ->where('products.status', 1)
        ->first();
        $all_category = Category::where('status', 1)->get();
        $product_category = explode(',',$product->category_id);
        // $product_attribute = ProductAttribute::where('attribute_name','size')
        // ->where('product_id',$product->id)
        // ->get();
        $all_product = Product::where('status', 1)->get();
        if(!empty($product->gallery_img)){
            $f_img = array();
            $f_img = (array)$product->featured_img;

            $gallery_images = explode(',',$product->gallery_img);
            $merge_images = array_merge($f_img, $gallery_images);
            $result = $gallery_images;
        }
        $productsCollectionWithAttributes = collect(); // Create an empty collection
        if (!empty($product->related_product_id)) {
            $related_products = explode(',', $product->related_product_id);
            $related_products = Product::select('id','title','slug','featured_img','flash_title','sale_price','regular_price','status')->whereIn('id', $related_products)->latest()->take(4)->get();
            $productsCollectionWithAttributes = collect(); // Create an empty collection

            foreach ($related_products as $rel_product) {
                $uniqueElementId = rand(1, 5685455);
                $product_id = $rel_product->id;

                // Fetch unique size and color attributes for the current product
                $rel_prod_size = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_size')->toArray()));
                $rel_prod_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)->pluck('attr_color_val')->toArray()));

                // Add size and color attributes to the product object
                $rel_product->size_attributes = $rel_prod_size;
                $rel_product->color_attributes = $rel_prod_color;
                $rel_product->unique_id = $uniqueElementId;

                $productsCollectionWithAttributes->push($rel_product); // Add the modified product object to the collection
            }
        }
        // $product_attribute = ProductAttribute::where('product_id',$product->id)->orderBy('attribute_price','asc')->get();
        return view('frontend.pages.product-details', compact('title','meta_description', 'meta_img','p_size','p_color','product','gallery_images','result','all_product','pro_cat','pro_sub_cat','product_category','all_category','merge_images','related_products', 'productsCollectionWithAttributes'));
    }
    public function aboutUs(){
        $title='About Us';
        $meta_description='';
        $meta_img ='';
        return view('frontend.pages.about-us', compact('title','meta_description', 'meta_img'));
    }

    public function faq(){
        $title='FAQ';
        $meta_description='';
        $meta_img ='';
        return view('frontend.pages.faq', compact('title','meta_description', 'meta_img'));
    }
    public function blogs(){
        $title='Blogs';
        $meta_description='';
        $meta_img ='';
        $blogs = Blog::where('status',1)->get();
        return view('frontend.pages.blogs', compact('title','meta_description', 'meta_img','blogs'));
    }
    public function pages($slug)
    {
        $pages_data = Page::where('slug', $slug)->first();
        if(!empty($pages_data)){
            $title = $pages_data->title;
            $meta_description = '';
            $meta_img = '';
            return view('frontend.pages.pages', compact('title', 'meta_description', 'meta_img', 'pages_data'));
        }
        abort(404);
    }
    public function blogDetails($blog){
        $title='Blog Details';
        $meta_description='';
        $meta_img ='';
        $blog = Blog::where('slug',$blog)->first();
        if(!empty($blog)){
            $title= $blog->title;
            $meta_description=strip_tags($blog->description);
            $meta_img = $blog->image;
        }else{
            abort(404);
        }
        return view('frontend.pages.blog-details', compact('title','meta_description', 'meta_img','blog'));
    }
    public function termsCondition(){
        $title='Terms & Condition';
        $meta_description='';
        $meta_img ='';
        return view('frontend.pages.terms-condition', compact('title','meta_description', 'meta_img'));
    }
    public function storeLocation(){
        $title='Store Location';
        $meta_description='';
        $meta_img ='';
        return view('frontend.pages.store-location', compact('title','meta_description', 'meta_img'));
    }
    public function returnRefund(){
        $title='Return & Refund';
        $meta_description='';
        $meta_img ='';
        return view('frontend.pages.return-refund', compact('title','meta_description', 'meta_img'));
    }
    public function privacyPolicy(){
        $title='Privacy Policy';
        $meta_description='';
        $meta_img ='';
        return view ('frontend.pages.privacy-policy',compact('title','meta_img','meta_description'));
    }
    public function getProductAttr(Request $request){
        $checkAttr = ProductAttribute::where('product_id', $request->productID)->where('attr_size', intval($request->prodSize))->where('attr_color_val', '=', $request->prodColor)->first();
        if(!empty($checkAttr)){
            return response()->json(['getAttr'=>$checkAttr]);
        }
    }
    public function quick_view($id){
        $related_products=array();
        $result=array();
        $merge_images = array();
        $gallery_images='';
        $product_reviews='';
        $auth_user_review='';
        $whole='';
        $fraction='';
        $product = Product::where('status',1)->where('id',$id)->first();
        if(!empty($product)){
            $product_id=$product->id;
        }else{
            abort(404);
        }

        $p_size = array_values(array_unique(ProductAttribute::where('product_id',$product_id)
        ->pluck('attr_size')->toArray()));
        $p_color = array_values(array_unique(ProductAttribute::where('product_id', $product_id)
        ->pluck('attr_color_val')->toArray()));

        $product = Product::where('id', $id)
        ->where('status', 1)
		->first();
        if(!empty($product)){
            $title= $product->title;
            $meta_description=strip_tags($product->description);
            $meta_img = $product->featured_img;
        }else{
            abort(404);
        }
        $pro_cat = DB::table('products')
        ->select('categories.id', 'categories.title', 'categories.slug')
        ->join('categories', 'categories.id', '=', 'products.category_id')
        ->where('categories.parent_id',0)
        ->where('products.status',1)
        ->first();
        $pro_sub_cat = DB::table('products')
        ->select('categories.id', 'categories.title', 'categories.slug')
        ->join('categories', 'categories.id', '=', 'products.category_id')
        ->where('categories.parent_id','!=',0)
        ->where('products.status', 1)
        ->first();
        $all_category = Category::where('status', 1)->get();
        $product_category = explode(',',$product->category_id);
        $all_product = Product::where('status', 1)->get();
        if(!empty($product->gallery_img)){
            $f_img = array();
            $f_img = (array)$product->featured_img;

            $gallery_images = explode(',',$product->gallery_img);
            $merge_images = array_merge($f_img, $gallery_images);
            $result = $gallery_images;
        }
        echo $html= view('frontend.pages.quick_view', compact('title','meta_description', 'meta_img','p_size','p_color','product','gallery_images','result','all_product','pro_cat','pro_sub_cat','product_category','all_category','merge_images','related_products'))->render();
    }
    public function contactUs()
    {
        $title = 'Contact Us';
        $meta_description = '';
        $meta_img = '';
        return view('frontend.pages.contact-us', compact('title', 'meta_description', 'meta_img'));
    }
    public function contactSubmit(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:100',
            'email' => 'required|email:rfc|max:100',
            'contact' => 'required|numeric|digits_between:10,15',
            'message' => 'required|string|max:3000',
            // 'g-recaptcha-response' => 'required|captcha',
        ]);
        $data = array(
            'name' => $request->name,
            'email' => $request->email,
            'message' => $request->message,
            'contact' => $request->contact,
        );
        Contact::create($data);
        Mail::send('frontend.emails.contact-us', ['data' => $data], function ($message) use ($data) {
            $message->from($data['email'], $data['name']);
            $message->to('admin@admin.com', 'Admin')
            ->subject('Contact Us');
        });
        return redirect()->back()->with('success', 'Your message has been sent successfully.');
    }
}