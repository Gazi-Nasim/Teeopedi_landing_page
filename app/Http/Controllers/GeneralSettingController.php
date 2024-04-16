<?php

namespace App\Http\Controllers;
use App\Models\GeneralSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class GeneralSettingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function setting_edit()
    {   $title='Edit General Setting';
        $settings = GeneralSetting::first();
        if(empty($settings)){
            GeneralSetting::create(array(
                'site_title'=>'',
                'site_description'=>'',
                'about_us_text'=>'',
                'about_icon_title_1'=>'',
                'about_icon_1'=>'',
                'about_icon_title_2'=>'',
                'about_icon_2'=>'',
                'about_icon_title_3'=>'',
                'about_icon_3'=>'',
                'home_promo_video'=>'',
                'home_promo_video_title'=>'',
                'address'=>'',
                'email'=>'',
                'phone'=>'',
                'hash_tag'=>'',
                'hash_slogan'=>'',
                'notice'=>'',
                'copyright_text'=>'',
                'logo' => '',
                'fb_logo' => '',
                'favicon' => '',
		        'about_us_image' =>''
            ));
        }
        return view('admin.settings.edit',compact('settings','title'));
    }
    public function setting_update(Request $request)
    {
        $settings = GeneralSetting::first();
        $validator = Validator::make($request->all(), [
            'site_title' => 'required|string|max:100',
            'logo' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048',
            'fb_logo' => 'nullable|mimes:jpg,jpeg,png,gif,webp|dimensions:width=700,height=365',
            'favicon' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048',
            'site_description' => 'nullable|string|max:1000',
            'about_us_text' => 'nullable|string|max:1000',
            'about_us_image' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048',
            'about_icon_title_1' => 'nullable|string|max:100',
            'about_icon_1' => 'nullable|mimes:jpg,jpeg,png,gif,webp',
            'about_icon_title_2' => 'nullable|string|max:100',
            'about_icon_2' => 'nullable|mimes:jpg,jpeg,png,gif,webp',
            'about_icon_title_3' => 'nullable|string|max:100',
            'about_icon_3' => 'nullable|mimes:jpg,jpeg,png,gif,webp',
            'home_promo_video' => 'nullable|string|max:255',
            'home_promo_video_title' => 'nullable|string|max:255',
            'address' => 'nullable|string|max:1000',
            'email' => 'nullable|email|max:100',
            'phone' => 'nullable|string|min:11|max:15',
            'hash_tag' => 'nullable|string|max:200',
            'hash_slogan' => 'nullable|string|max:200',
            'notice' => 'nullable|string|max:1000',
            'notice' => 'nullable|string|max:255',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $image = $request->file('logo');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/settings/logo', $imagename);
            $settings->logo = $imagename;
        }
        $fb_logo = $request->file('fb_logo');
        if ($fb_logo != '') {
            $ext = pathinfo($fb_logo->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($fb_logo->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagefb = $f_n.'-'.time() . '.' .$ext;
            $fb_logo->move('uploads/settings/logo', $imagefb);
            $settings->fb_logo = $imagefb;
        }
        $image_f = $request->file('favicon');
        if ($image_f != '') {
            $ext = pathinfo($image_f->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image_f->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename_f = $f_n.'-'.time() . '.' .$ext;
            $image_f->move('uploads/settings/favicon', $imagename_f);
            $settings->favicon = $imagename_f;
        }
        $about_us_image = $request->file('about_us_image');
        if ($about_us_image != '') {
            $ext = pathinfo($about_us_image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($about_us_image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename_about_us_image = $f_n . '-' . time() . '.' . $ext;
            $about_us_image->move('uploads/settings/', $imagename_about_us_image);
            $settings->about_us_image = $imagename_about_us_image;
        }
        $icon_1 = $request->file('icon_1');
        if ($icon_1 != '') {
            $ext = pathinfo($icon_1->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($icon_1->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $icon_1->move('uploads/settings/', $imagename);
            $settings->about_icon_1 = $imagename;
        }
        $icon_2 = $request->file('icon_2');
        if ($icon_2 != '') {
            $ext = pathinfo($icon_2->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($icon_2->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $icon_2->move('uploads/settings/', $imagename);
            $settings->about_icon_2 = $imagename;
        }
        $icon_3 = $request->file('icon_3');
        if ($icon_3 != '') {
            $ext = pathinfo($icon_3->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($icon_3->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $icon_3->move('uploads/settings/', $imagename);
            $settings->about_icon_3 = $imagename;
        }
        $settings->site_title = request('site_title');
        $settings->site_description = request('site_description');
        $settings->about_us_text = request('about_us_text');
        $settings->about_icon_title_1 = request('icon_title_1');
        $settings->about_icon_title_2 = request('icon_title_2');
        $settings->about_icon_title_3 = request('icon_title_3');
        $settings->home_promo_video = request('home_promo_video');
        $settings->home_promo_video_title = request('home_promo_video_title');
        $settings->address = request('address');
        $settings->email = request('email');
        $settings->phone = request('phone');
        $settings->hash_tag = request('hash_tag');
        $settings->hash_slogan = request('hash_slogan');
        $settings->notice = request('notice');
        $settings->copyright_text = request('copyright_text');
        $settings->update();
        return redirect()->back()->with('success', 'General settings updated successfully.');
    }
}
