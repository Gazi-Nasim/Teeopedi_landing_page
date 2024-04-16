<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use App\Models\BlogGeneral;
use Illuminate\Support\Str;
class BlogController extends Controller
{

    public function allBlog()
    {
        $title='Blogs List';
        $blogs = Blog::where('status',1)->get();
        return view('admin.blog.index',compact('title','blogs'));
    }
    public function createBlog()
    {
        $title='Create Blog';
        return view('admin.blog.add-blog',compact('title'));
    }

    public function storeBlog(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|max:255|unique:blogs,title',
            'short_desc' => 'nullable|string|max:1000',
            'author' => 'nullable|string|max:100',
            'description' => 'nullable|string|max:60000',
            'featured_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg,webp|max:2048',
        ]);
        $blog = new Blog;
        $blog->title = $request->title;
        $blog->slug = Str::slug($request->title);
        $blog->short_desc = $request->short_description;
        $blog->description = $request->description;
        $blog->author = request()->author;
        $image = $request->file('featured_image');
        if($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/blogs/images', $imagename);
            $blog->image = $imagename;
        }
        $blog->save();
        return to_route('blog.all')->with('success','Blog created successfully');
    }

    public function editBlog($id){
        $title='Edit Blog';
        $blog = Blog::findOrFail($id);
        return view('admin.blog.edit-blog',compact('title','blog'));
    }

    public function updateBlog($id){

        $this->validate(request(), [
            'title' => 'required|string|max:255|unique:blogs,title,'.$id.',id',
            'short_description' => 'nullable|string|max:1000',
            'description' => 'nullable|string|max:60000',
            'author' => 'nullable|string|max:100',
            'featured_image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg,webp|max:2048',
        ]);
        $blog = Blog::findOrFail($id);
        $blog->title = request()->title;
        $blog->author = request()->author;
        $blog->slug = Str::slug(request()->title);
        $blog->short_desc = request()->short_description;
        $blog->description = request()->description;
        $image = request()->file('featured_image');
        if($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/blogs/images', $imagename);
            $blog->image = $imagename;
        }
        $blog->update();
        return to_route('blog.all')->with('success','Blog updated successfully');
    }

    public function deleteBlog($id){
        $blog = Blog::findOrFail($id);
        $blog->delete();
        return to_route('blog.all')->with('success','Blog deleted successfully');
    }
}
