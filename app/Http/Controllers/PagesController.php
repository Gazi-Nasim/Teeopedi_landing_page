<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Page;

class PagesController extends Controller
{
    public function allPages()
    {
        $title = 'Pages List';
        $pages = Page::where('status', 1)->get();
        return view('admin.pages.index', compact('title', 'pages'));
    }
    public function createPage()
    {
        $title = 'Create Page';
        return view('admin.pages.add-page', compact('title'));
    }

    public function storePage(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|string|max:255|unique:pages,title',
            'short_desc' => 'nullable|string|max:1000',
            'description' => 'nullable|string|max:60000',
            'featured_image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg,webp|max:2048',
        ]);
        $page = new Page;
        $page->title = $request->title;
        $page->slug = Str::slug($request->title);
        $page->short_desc = $request->short_description;
        $page->description = $request->description;
        $image = $request->file('featured_image');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('uploads/pages/images', $imagename);
            $page->image = $imagename;
        }
        $page->save();
        return to_route('pages.all')->with('success', 'Page created successfully');
    }

    public function editPage($id)
    {
        $title = 'Edit Page';
        $page = Page::findOrFail($id);
        return view('admin.pages.edit-page', compact('title', 'page'));
    }

    public function updatePage($id)
    {
        $this->validate(request(), [
            'title' => 'required|string|max:255|unique:pages,title,' . $id . ',id',
            'short_description' => 'nullable|string|max:1000',
            'description' => 'nullable|string|max:60000',
            'featured_image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg,webp|max:2048',
        ]);
        $page = Page::findOrFail($id);
        $page->title = request()->title;
        $page->slug = Str::slug(request()->title);
        $page->short_desc = request()->short_description;
        $page->description = request()->description;
        $image = request()->file('featured_image');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('uploads/Pages/images', $imagename);
            $page->image = $imagename;
        }
        $page->update();
        return to_route('pages.all')->with('success', 'Page updated successfully');
    }

    public function deletePage($id)
    {
        $page = Page::findOrFail($id);
        $page->delete();
        return to_route('pages.all')->with('success', 'Page deleted successfully');
    }
}
