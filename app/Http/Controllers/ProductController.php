<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\SpecialCategory;
use App\Models\Product;
use App\Models\ProductTag;
use App\Models\ProductAttribute;
use App\Models\WebOrder;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    //product index
    public function index() {
        $title='Product List';
        $products = Product::where('status',1)->latest()->get();
        // dd($products);
        return view('admin.product.products.index',compact('products','title'))->with('no',1);
    }
    // product functionality
    public function addProduct(){
        $title='Add Product';
        $category = Category::where('status',1)->where('parent_id',0)->with('children')->get();
        $special_category = SpecialCategory::where('status', 1)->get();
        $products  = Product::where('status', 1)->get();
        return view ('admin.product.products.add-product',compact('category','special_category','products','title'));
    }
    public function storeProduct(Request $request){
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:100|unique:products,title',
            'sku' => 'required|string|max:100|unique:products,sku',
            'short_desc' => 'nullable|string|max:2000',
            'description' => 'nullable|string|max:4000',
            'featured_img' => 'required|image|mimes:jpeg,jpg,png,gif,webp|max:2048',
            'gallery_img.*' => 'nullable|image|mimes:jpeg,jpg,png,gif,webp|max:2048',
            'category.*'=>'required',
            'special_cat_id.*'=>'nullable',
            'size_attribute.*'=>'nullable|max:100',
            'color_attribute.*'=> 'nullable|max:100',
            'color_value.*'=> 'nullable|max:100',
            'stock_price.*'=> 'nullable|numeric',
            'stock_status.*'=> 'nullable|numeric',
            'related_product.*' => 'nullable',
            'sale_price'=>'required|numeric',
            'regular_price'=>'required|numeric',
            'flash_title' => 'nullable|string|max:100',
            'status'=>'required|integer',
        ]);
        if($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $category = '';
        $images = '';
        $special_cat_id = '';
        $related_product_id = '';
        $product = new Product;
        $product->title =  $request->title;
        $product->slug =  Str::slug($request->title,'-');
        $product->sku =  $request->sku;
        $product->regular_price =  $request->regular_price;
        $product->sale_price =  $request->sale_price;
        $product->short_desc =  $request->short_desc;
        $product->description =  $request->description;
        $product->flash_title =  $request->flash_title;
        $product->status =  $request->status;
        $image = $request->file('featured_img');
        if($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/products/images', $imagename);
            $product->featured_img = $imagename;
        }
        if($request->file('gallery_img') != '') {
            $gallery = $request->file('gallery_img');
            foreach ($gallery as $img2) {
                $ext = pathinfo($img2->getClientOriginalName(), PATHINFO_EXTENSION);
                $f_n = Str::slug(pathinfo($img2->getClientOriginalName(), PATHINFO_FILENAME),'-');
                $imagename3 = $f_n.'-'.time() . '.' .$ext;
                $img2->move('uploads/products/images', $imagename3);
                $imgData[] =  $imagename3;
            }
            if(!empty($imgData)){
                $images = implode(',', $imgData);
                $product->gallery_img = $images;
            }
        }
        if(!empty($request->category)){
            $category  = implode(",",$request->category);
            $product->category_id = $category;
        }
        if(!empty($request->special_cat_id)){
            $special_cat_id  = implode(",",$request->special_cat_id);
            $product->special_cat_id = $special_cat_id;
        }
        if(!empty($request->related_product)){
            $related_product_id  = implode(",",$request->related_product);
            $product->related_product_id = $related_product_id;
        }
        if($product->save()){
            foreach ($request->size_attribute as $key => $vl) {
                if (!empty($vl) || !empty($request->color_attribute[$key]) || !empty($request->color_value[$key]) || !empty($request->stock_price[$key]) ||
                    !empty($request->stock_status[$key]))
                {
                    $data = array(
                        'product_id' => $product->id,
                        'attr_size' => strtolower($vl),
                        'attr_color' => $request->color_attribute[$key],
                        'attr_color_val' => $request->color_value[$key],
                        'attr_price' => $request->stock_price[$key],
                        'status' => $request->stock_status[$key],
                        'created_at' => Carbon::now(),
                        'updated_at' => Carbon::now()
                    );
                    ProductAttribute::insert($data);
                }
            }
            return redirect('/admin/products')->with('success','Product added successfully.');
        }
        return redirect('/admin/products')->with('success','Product added successfully.');
    }
    public function editProduct($id){
        $title='Edit Product';
        $gallery_images='';
        $product = Product::findOrFail($id);
        $attributes =  ProductAttribute::where('product_id',$product->id)->get();
        $all_products = Product::where('status',1)->where('id','!=',$id)->get();
        $category = Category::where('status',1)->where('parent_id',0)->get();
        $cat_id = $product->category_id;
        $selected_cat_id =explode(',',$cat_id );
        $special_category = SpecialCategory::where('status',1)->get();
        $special_cat_id = $product->special_cat_id;
        $special_cat_selected = explode(',',$special_cat_id );
        $related_product = explode(',',$product->related_product_id);
        if(!empty($product->gallery_img)){
            $gallery_images = explode(',',$product->gallery_img);
        }
        return view('admin.product.products.edit-product',compact('product','gallery_images','related_product','attributes','all_products','category','selected_cat_id','special_cat_selected','special_category','special_cat_selected','title'));
    }
    public function updateProduct(Request $request, $id){
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:100|unique:products,title,'.$id,
            'sku' => 'required|string|max:100|unique:products,sku,'.$id,
            'short_desc' => 'nullable|string|max:2000',
            'description' => 'nullable|string|max:4000',
            'featured_img' => 'nullable|image|mimes:jpeg,jpg,png,gif,webp|max:2048',
            'gallery_img.*' => 'nullable|image|mimes:jpeg,jpg,png,gif,webp|max:2048',
            'category.*' => 'required',
            'special_cat_id.*' => 'nullable',
            'size_attribute.*' => 'nullable|max:100',
            'color_attribute.*' => 'nullable|max:100',
            'color_value.*' => 'nullable|max:100',
            'stock_price.*' => 'nullable|numeric',
            'stock_status.*' => 'nullable|numeric',
            'related_product.*' => 'nullable',
            'sale_price' => 'required|numeric',
            'regular_price' => 'required|numeric',
            'flash_title' => 'nullable|string|max:100',
            'status' => 'required|integer',
        ]);
        if($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $data=array();
        $category = '';
        $stored_images='';
        $images='';
        $special_cat_id = '';
        $related_product_id = '';
        $product = Product::findOrFail($id);
        $product->title =  $request->title;
        $product->slug =  Str::slug($request->title,'-');
        $product->sku =  $request->sku;
        $product->regular_price =  $request->regular_price;
        $product->sale_price =  $request->sale_price;
        $product->short_desc =  $request->short_desc;
        $product->description =  $request->description;
        $product->flash_title =  $request->flash_title;
        $product->status =  $request->status;
        $image = $request->file('featured_img');
        if($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/products/images', $imagename);
            $product->featured_img = $imagename;
        }
        if(!empty($product->gallery_img)){
            $stored_images =explode(',',$product->gallery_img);
        }
        if($request->file('gallery_img') != '') {
            $gallery = $request->file('gallery_img');
            foreach ($gallery as $img2) {
                $ext = pathinfo($img2->getClientOriginalName(), PATHINFO_EXTENSION);
                $f_n = Str::slug(pathinfo($img2->getClientOriginalName(), PATHINFO_FILENAME),'-');
                $imagename3 = $f_n.'-'.time() . '.' .$ext;
                $img2->move('uploads/products/images', $imagename3);
                $imgData[] =  $imagename3;
            }
            $stored_images ='';
            $stored_images = $product->gallery_img;

            if(!empty($imgData) && count($imgData) > 0){
                $images = implode(',', $imgData);
                if(!empty($stored_images)){
                    $images = $images.','.$stored_images;
                }else{
                    $images = $images;
                }
                $product->gallery_img = $images;
            }else{
                $product->gallery_img = $stored_images;
            }
        }
        if(!empty($request->category)){
            $category  = implode(",",$request->category);
            $product->category_id = $category;
        }
        if(!empty($request->special_cat_id)){
            $special_cat_id  = implode(",",$request->special_cat_id);
            $product->special_cat_id = $special_cat_id;
        }
        if(!empty($request->related_product)){
            $related_product_id  = implode(",",$request->related_product);
            $product->related_product_id = $related_product_id;
        }
        if($product->update()){
            ProductAttribute::where('product_id',$id)->delete();
            if( !empty($request->size_attribute) || !empty($request->color_attribute) || !empty($request->color_value) || !empty($request->stock_price) || !empty($request->stock_status)){
                foreach ($request->size_attribute as $key => $vl) {
                    if (
                        !empty($vl) || !empty($request->color_attribute[$key]) || !empty($request->color_value[$key]) || !empty($request->stock_price[$key]) ||
                        !empty($request->stock_status[$key])
                    ) {
                        $data = array(
                            'product_id' => $product->id,
                            'attr_size' => strtolower($vl),
                            'attr_color' => $request->color_attribute[$key],
                            'attr_color_val' => $request->color_value[$key],
                            'attr_price' => $request->stock_price[$key],
                            'status' => $request->stock_status[$key],
                            'updated_at'=>Carbon::now()
                        );
                        ProductAttribute::insert($data);
                    }
                }
            }
            return redirect('/admin/products')->with('success','Product updated successfully.');
        }
        return redirect('/admin/products')->with('success','Product updated successfully.');
    }
    public function deleteGalleryImg(Request $request)
    {
        $product = Product::findOrFail($request->id);
        $images =  $product->gallery_img;
        $gal_images = explode(',', $images);

        if (($key = array_search($request->img, $gal_images)) !== false) {
            unset($gal_images[$key]);
        }
        $product->gallery_img = implode(',', $gal_images);
        $product->update();
        return response()->json([
            'success' =>  $gal_images,
        ]);
    }
    public function getGalleryImg(Request $request){
        $product =  Product::findOrFail($request->id);
        $i = $product->gallery_img;
        $gal = explode(',',$i);
        return  $gal ;
    }
    public function deleteProduct($id){
        $product = Product::findOrFail($id);
        ProductAttribute::where('status',1)->where('product_id',$id)->delete();
        $product->delete();
        return redirect()->back()->with('success','Product deleted successfully.');
    }
    public function deleteAttribute(Request $request){
        $id = $request->id;
        $product_attribute = ProductAttribute::findOrFail($id);
        $product_attribute->delete();
        return response()->json(['success'=>'Attribute deleted successfully.']);
    }
    //product tag functionality
    public function tag_index() {
        $title='Product Tags';
        $tag = ProductTag::where('status',1)->latest()->get();
        return view('admin.product.tag.index',compact('tag','title'))->with('no',1);
    }
    public function tag_store(Request $request) {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:100|unique:product_tags,title',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $tag = new ProductTag;
        $tag->title = $request->title;
        $tag->slug = Str::slug($request->title, '-');
        $tag->save();

        return redirect()->back()->with('success','Product tag added successfully.');
    }
    public function tag_edit($id)
    {
        $title='Edit Product Tag';
        $tag = ProductTag::findOrFail($id);
        return view('admin.product.tag.edit',compact('tag','title'));
    }
    public function tag_update(Request $request, $id)
    {
        $tag = ProductTag::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:100|unique:product_tags,title,'.$id,
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $tag->title = request('title');
        $tag->slug = Str::slug($request->title, '-');
        $tag->update();
    
        return redirect()->to('/admin/product-tag')->with('success', 'Product tag updated successfully.');
    }
    public function tag_delete($id) {
        $tag = ProductTag::findOrFail($id);
        $tag->delete();
        return redirect()->back()->with('success','Product tag deleted successfully.');
    }

    

}