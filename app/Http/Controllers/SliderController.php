<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use App\Models\Slider;
use App\Models\SliderImage;
use Illuminate\Http\Request;
use App\Http\Controllers\Session;
use Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;


class SliderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function slider_index()
    {   
        $title='Slider';
        $slider = Slider::all();
        $slider_images = SliderImage::where('status', 1)->orderBy('id', 'desc')->get();
        return view('admin.slider.all_slider',compact('slider','slider_images'))->with(['no'=> 1,'title'=>$title]); 
    }

    public function slider_add() {
        $title='Add Slider';
        return view('admin.slider.add_slider')->with('title',$title);
    }
    
    public function slider_store(Request $request) {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'slider_description' => 'nullable|string|max:2000',
            'slider_type' => 'required|numeric',
            'slider_img_title' =>'nullable|string|max:255',
            'hover_text' =>'nullable|string|max:255',
            'img[]' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048',
            'status' => 'nullable|max:255'   
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $slider = new Slider;
        $slider->title = $request->title;
        $slider->slider_description = $request->slider_description;
        $slider->slider_type = $request->slider_type;
        $slider->status = $request->status;
        if($slider->save()){
            $slider_img = new SliderImage;
            $slider_id =$slider->id;
            $slider_title =$request->slider_img_title;
            $hover_text = $request->hover_text;
           // dd($request->file('img'));
            if ($request->file('img') != '') {
                $gallery = $request->file('img');
                $position_count = 0;
                foreach ($gallery as $img2) {
                    $ext = pathinfo($img2->getClientOriginalName(), PATHINFO_EXTENSION);
                    $f_n = Str::slug(pathinfo($img2->getClientOriginalName(), PATHINFO_FILENAME),'-');
                    $imagename2 = $f_n.'-'.time() . '.' .$ext;
                   //dd($imagename2);
                    $img2->move('uploads/slider', $imagename2);
                    $data['img'] = $imagename2;
                    $data['slider_id'] = $slider_id;
                    $data['title'] = $slider_title;
                    $data['hover_text'] = $hover_text;
                    $data['position'] = $position_count++;
                    DB::table('slider_images')->insert($data);
                }
            }
        }
        return redirect('/admin/slider')->with('success','Slider created successfully.');
    }
  
    public function slider_edit($id) {
        $title='Edit Slider';
        $slider = Slider::findOrFail($id);
        $slider_images =SliderImage::orderBy('id', 'desc')->where('slider_id', $id)->where('status', 1)->get();
        return view('admin.slider.edit_slider', compact('slider','slider_images','title'));
    }
    
    public function slider_update(Request $request, $id){
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'slider_description' => 'nullable|string|max:2000',
            'slider_type' => 'required|numeric',
            'slider_img_title' =>'nullable|string|max:255',
            'hover_text' =>'nullable|string|max:255',
            'img[]' => 'nullable|mimes:jpg,jpeg,png,gif,webp|max:2048', 
            'status' => 'nullable|max:255'     
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
      
        $slider = Slider::findOrFail($id);
            $slider->title = request('title');
            $slider->slider_description = request('slider_description');
            $slider->slider_type = request('slider_type');
            $slider->status = request('status');
            $slider->update();
                $slider_id =$slider->id;
                $slider_img = SliderImage::where('slider_id',$id)->get();
                    foreach ($slider_img as $st) {
                        $st['title'] = $request->slider_img_title;
                        $st['hover_text'] = $request->hover_text;
                    }
                    if ($request->file('img') != '') {
                        $gallery = $request->file('img');
                        $position_count = count($slider_img);
                        foreach ($gallery as $img2) {
                            $ext = pathinfo($img2->getClientOriginalName(), PATHINFO_EXTENSION);
                            $f_n = Str::slug(pathinfo($img2->getClientOriginalName(), PATHINFO_FILENAME),'-');
                            $imagename2 = $f_n.'-'.time() . '.' .$ext;
                            $img2->move('uploads/slider', $imagename2);
                            $data_img['img'] = $imagename2;
                            $data_img['slider_id'] = $slider_id;
                            $data_img['position'] = $position_count++;
                            DB::table('slider_images')->insert($data_img);
                        }
                    }
            return redirect('/admin/slider')->with('success','Slider updated successfully.');
    }

    public function delete_gallery($id)
    {
        $slider_image = SliderImage::findOrFail($id);
        $slider_image->delete();
        return redirect()->back();
    }
    
    public function slider_delete($id) {
        $slider = Slider::findOrFail($id);
        $slider->status = 2;
        $slider->update();
        SliderImage::where('slider_id', $id)->update(['status' => 2]);
        return redirect()->to('/admin/slider')->with('success','Slider deleted successfully.');
    }
    
}
