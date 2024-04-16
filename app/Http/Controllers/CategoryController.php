<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\SpecialCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\Product;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function category() {
        $title='Category';
        $category = Category::latest()->get();
        $parent_cat = Category::where('status',1)->where('parent_id',0)->get();
        return view('admin.category.index',compact('parent_cat', 'category','title'))->with('no',1);
    }
    public function store_cat(Request $request) {
        // $user_id = Auth::user()->id;
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255|unique:categories,title',
            'parent_id' => 'numeric|nullable',
            'short_desc' => 'string|nullable',
            'img' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $category = new Category;
        $image = $request->file('img');
        if($image != '')
        {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/category', $imagename);
            $category->img = $imagename;
        }
        if(!empty($request->parent_id)){
            $category->parent_id = $request->parent_id;
        }
        $category->title = $request->title;
        $category->slug = Str::slug($request->title, '-');
        $category->short_desc = $request->desc;
        $category->save();

        return redirect()->back()->with('success','Category added successfully.');
    }
    public function edit_cat($id)
    {
        $title='Edit Category';
        $category = Category::findOrFail($id);
        $parent_cat = Category::where('status',1)->where('parent_id',0)->get();
        return view('admin.category.edit',compact('parent_cat', 'category', 'title'));
    }
    public function update_cat(Request $request, $id)
    {
        $category = Category::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255|unique:categories,title,'.$id,
            'parent_id' => 'numeric|nullable',
            'short_desc' => 'string|nullable',
            'status'=>'required|numeric',
            'img' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $image_name = $request->hidden_image;
        $image = $request->file('img');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/category', $imagename);
            $category->img = $imagename;
        } else {
            $category->img = $image_name;
        }
        $category->title = request('title');
        $category->status = request('status');
        $category->slug = Str::slug($request->title, '-');
        if(!empty($request->parent_id)){
            $category->parent_id = request('parent_id');
        }
        $category->short_desc = request('short_desc');
        $category->update();
        return redirect()->to('/admin/category')->with('success', 'Category updated successfully.');
    }
    public function delete_cat($id) {
        $category = Category::findOrFail($id);
        $products = Product::whereRaw("FIND_IN_SET(?, category_id)", [$id])->get();
        foreach ($products as $product) {
            $product->category_id = str_replace($id, '', $product->category_id);
            $product->save();
        }
        Product::where('category_id', '')->delete();
        $category->delete();
        return redirect()->back()->with('success','Category deleted successfully.');
    }

    public function special_category() {
        $title='Special Category';
        $spec_category = SpecialCategory::where('status',1)->latest()->get();
        return view('admin.special-category.index',compact('spec_category','title'))->with('no',1);
    }
    public function special_store_cat(Request $request) {
        // $user_id = Auth::user()->id;
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255|unique:special_categories,title',
            'short_desc' => 'string|nullable',
            'img' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $spec_category = new SpecialCategory;
        $image = $request->file('img');
        if($image != '')
        {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/special-category', $imagename);
            $spec_category->img = $imagename;
        }
        $spec_category->title = $request->title;
        $spec_category->slug = Str::slug($request->title, '-');
        $spec_category->short_desc = $request->desc;
        $spec_category->save();

        return redirect()->back()->with('success','Special category added successfully.');
    }
    public function special_edit_cat($id)
    {
        $title='Edit Special Category';
        $spec_category = SpecialCategory::findOrFail($id);
        return view('admin.special-category.edit',compact('spec_category','title'));
    }
    public function special_update_cat(Request $request, $id)
    {
        $spec_category = SpecialCategory::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255|unique:special_categories,title,'.$id,
            'short_desc' => 'string|nullable|max:2000',
            'img' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $image_name = $request->hidden_image;
        $image = $request->file('img');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/special-category', $imagename);
            $spec_category->img = $imagename;
        } else {
            $spec_category->img = $image_name;
        }
        $spec_category->title = request('title');
        $spec_category->slug = Str::slug($request->title, '-');
        $spec_category->short_desc = request('short_desc');
        $spec_category->update();
    
        return redirect()->to('/admin/special-category')->with('success', 'Special category updated successfully.');
    }
    public function special_delete_cat($id) {
        $spec_category = SpecialCategory::findOrFail($id);
        $products = Product::whereRaw("FIND_IN_SET(?, special_cat_id)", [$id])->get();
        foreach ($products as $product) {
            $product->special_cat_id = str_replace($id, '', $product->special_cat_id);
            $product->save();
        }
        Product::where('special_cat_id', '')->delete();
        $spec_category->delete();
        return redirect()->back()->with('success','Special category deleted successfully.');
    }
}
