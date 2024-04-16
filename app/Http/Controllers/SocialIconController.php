<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\SocialIcon;
use Illuminate\Support\Str;

class SocialIconController extends Controller
{
    public function allIcons()
    {
        $title = 'All User';
        $icons = SocialIcon::where('status', 1)->get();
        return view('admin.social-icons.all-icons', compact('icons', 'title'));
    }
    public function addIcon()
    {
        $title = 'Add Icon';
        return view('admin.social-icons.add-icon', compact('title'));
    }
    public function storeIcon(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:60|unique:social_icons,title',
            'link' => 'nullable|url|max:5000',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg,webp|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $icon = new SocialIcon();
        $image = $request->file('image');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('uploads/icons', $imagename);
            $icon->image = $imagename;
        }
        $icon->title = $request->title;
        $icon->slug = Str::slug($request->title,'-');
        $icon->link = $request->link;
        $icon->save();
        return redirect()->route('social-icons.all')->with('success', 'Icon Created Successfully.');
    }

    public function editIcon($id)
    {
        $title = 'Edit Icon';
        $icon = SocialIcon::findOrFail($id);
        return view('admin.social-icons.edit-icon')->with([
            'icon' => $icon,
            'title' => $title,
        ]);
    }
    public function updateIcon(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:60|unique:social_icons,title,'. $id,
            'link' => 'nullable|url|max:5000',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg,webp|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $icon = SocialIcon::findOrFail($id);
        $image = $request->file('image');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('uploads/icons', $imagename);
            $icon->image = $imagename;
        }
        $icon->title = $request->title;
        $icon->slug = Str::slug($request->title, '-');
        $icon->link = $request->link;
        $icon->update();
        return redirect()->route('social-icons.all')->with('success', 'Icon Updated Successfully.');
    }
    public function deleteIcon($id)
    {
        $users = SocialIcon::findOrFail($id)->delete();
        return redirect()->route('social-icons.all')->with('success', 'Icon Deleted Successfully.');
    }

}
