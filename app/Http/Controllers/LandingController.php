<?php

namespace App\Http\Controllers;

use App\Models\SingleData;
use App\Models\Product;
use App\Models\Advantage;
use App\Models\Policy;
use App\Models\Why_mustrad;
use App\Models\WhySafefood;
use App\Models\webOrder;
use Illuminate\Http\Request;
use Image;
use Illuminate\Support\Str;

class LandingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($id)
    {
        $product = Product::find($id);
        $data = SingleData::where('product_id', $id)->first();
        return view('admin.landing_page.index', compact('data', 'product'));
    }
    public function header_update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'heading_one' => 'required|string',
            'picture_one' => 'image|mimes:jpeg,png,jpg,gif,svg,webp',
            'heading_second' => 'required|string',
            'heading_third' => 'required|string',
            'picture_second' => 'image|mimes:jpeg,png,jpg,gif,svg,webp',
            'heading_fourth' => 'required|string',
            'picture_third' => 'image|mimes:jpeg,png,jpg,gif,svg,webp',
            'heading_fifth' => 'required|string',
        ]);

        if (isset($request->picture_one)) {
            $image = $request->picture_one;
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('images/main_banner/', $imagename);
            $validatedData['picture_one'] = $imagename;
        }

        if (isset($request->picture_second)) {
            $image = $request->picture_second;
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('images/main_banner/', $imagename);
            $validatedData['picture_second'] = $imagename;
        }

        if (isset($request->picture_third)) {
            $image = $request->picture_third;
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('images/main_banner/', $imagename);
            $validatedData['picture_third'] = $imagename;
        }
        $prdata = SingleData::where('product_id', $id)->first();
        if (isset($prdata)) {
            SingleData::where('product_id', $id)->update($validatedData);
        } else {
            $validatedData['product_id'] = $id;
            SingleData::create($validatedData);
        }
        return redirect()->back()->with('msg', 'Updated Successfully');
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

        $validatedData = $request->validate([
            'heading_one' => 'required|string|',
            'picture_one' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'heading_second' => 'required|string',
            'heading_third' => 'required|string',
            'picture_second' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'heading_fourth' => 'required|string',
            'picture_third' => 'required|image|mimes:jpeg,png,jpg,gif,svg',
            'heading_fifth' => 'required|string',
        ]);

        $image_one = Image::make($request->file('picture_one'));
        $imageName_one = time() . '_' . $request->file('picture_one')->getClientOriginalName();
        $image_one->save(public_path('images/mustard_oil/') . $imageName_one);
        $validatedData['picture_one'] = $imageName_one;

        $image_two = Image::make($request->file('picture_second'));
        $imageName_two = time() . '_' . $request->file('picture_second')->getClientOriginalName();
        $image_two->save(public_path('images/mustard_oil/') . $imageName_two);
        $validatedData['picture_second'] = $imageName_two;

        $image_three = Image::make($request->file('picture_third'));
        $imageName_three = time() . '_' . $request->file('picture_third')->getClientOriginalName();
        $image_three->save(public_path('images/mustard_oil/') . $imageName_three);
        $validatedData['picture_third'] = $imageName_three;
        // dd($validatedData);
        SingleData::create($validatedData);
        return redirect()->route('headings.index')->with('msg', 'Saved Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(SingleData $singleData)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SingleData $singleData)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,  $id)
    {
        $validatedData = $request->validate([
            'heading_one' => 'required|string|',
            'picture_one' => 'image|mimes:jpeg,png,jpg,gif,svg',
            'heading_second' => 'required|string',
            'heading_third' => 'required|string',
            'picture_second' => 'image|mimes:jpeg,png,jpg,gif,svg',
            'heading_fourth' => 'required|string',
            'picture_third' => 'image|mimes:jpeg,png,jpg,gif,svg',
            'heading_fifth' => 'required|string',
        ]);

        if (isset($request->picture_one)) {
            $image_one = $request->file('picture_one');
            $imageName_one = time() . '_' . $request->file('picture_one')->getClientOriginalName();
            $image_one->save(public_path('images/mustard_oil/') . $imageName_one);
            $validatedData['picture_one'] = $imageName_one;
        }

        if (isset($request->picture_second)) {
            $image_two = $request->file('picture_second');
            $imageName_two = time() . '_' . $request->file('picture_second')->getClientOriginalName();
            $image_two->save(public_path('images/mustard_oil/') . $imageName_two);
            $validatedData['picture_second'] = $imageName_two;
        }

        if (isset($request->picture_third)) {
            $image_three = $request->file('picture_third');
            $imageName_three = time() . '_' . $request->file('picture_third')->getClientOriginalName();
            $image_three->save(public_path('images/mustard_oil/') . $imageName_three);
            $validatedData['picture_third'] = $imageName_three;
        }
        SingleData::find($id)->update($validatedData);
        return redirect()->route('headings.index')->with('msg', 'Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SingleData $singleData)
    {
        //
    }
    public function advantage($id)
    {
        $product = Product::find($id);
        $list = Advantage::where('product_id', $id)->get();
        return view('admin.landing_page.advantage', compact('product', 'list'));
    }
    public function store_advantage(Request $request, $id)
    {
        $validatedData = $request->validate([
            'heading' => 'required',
            'details' => 'required',
        ]);
        $heading = $validatedData['heading'];
        $details = $validatedData['details'];
        $data = [];
        foreach ($heading as $k => $h) {
            $data[] = [
                'product_id' => $id,
                'heading' => $h,
                'details' => $details[$k],
            ];
        }
        Advantage::insert($data);
        return redirect()->back()->with('msg', 'Saved Successfully');
    }
    public function advantage_delete(Request $request, $id)
    {
        Advantage::find($id)->delete();
        return redirect()->back()->with('msg', 'Deleted Successfully');
    }
    public function policy($id)
    {
        $product = Product::find($id);
        $list = Policy::where('product_id', $id)->get();
        return view('admin.landing_page.policy', compact('product', 'list'));
    }
    public function store_policy(Request $request, $id)
    {
        $validatedData = $request->validate([
            'heading' => 'required',
            'details' => 'required',
        ]);
        $heading = $validatedData['heading'];
        $details = $validatedData['details'];
        $time = count($validatedData['heading']);
        for ($i = 0; $i < $time; $i++) {
            $data = [
                'product_id' => $id,
                'heading' => $heading[$i],
                'details' => $details[$i],
            ];
            Policy::create($data);
        }
        return redirect()->back()->with('msg', 'Saved Successfully');
    }
    public function delete_policy(Request $request, $id)
    {
        Policy::find($id)->delete();
        return redirect()->back()->with('msg', 'Deleted Successfully');
    }
    public function bullets($id)
    {
        $product = Product::find($id);
        $list = Why_mustrad::where('product_id', $id)->get();
        return view('admin.landing_page.bullets', compact('product', 'list'));
    }
    public function store_bullets(Request $request, $id)
    {
        $validatedData = $request->validate([
            'icon' => 'required',
            'details' => 'required',
        ]);
        $time = count($validatedData['details']);
        for ($i = 0; $i < $time; $i++) {

            $image_one = $request->file('icon')[$i];
            $imageName_one = time() . '_' . $request->file('icon')[$i]->getClientOriginalName();
            $image_one->move(public_path('images/whymustard/'), $imageName_one);
            $data = [
                'product_id' => $id,
                'icon' => $imageName_one,
                'details' => $validatedData['details'][$i],
            ];

            Why_mustrad::create($data);
        };
        return redirect()->back()->with('msg', 'Saved Successfully');
    }
    public function delete_bullets(Request $request, $id)
    {
        Why_mustrad::find($id)->delete();
        return redirect()->back()->with('msg', 'Deleted Successfully');
    }
    public function whychoose($id)
    {
        $product = Product::find($id);
        $list = WhySafefood::where('product_id', $id)->get();
        return view('admin.landing_page.whychoose', compact('product', 'list'));
    }
    public function store_whychoose(Request $request, $id)
    {
        $validatedData = $request->validate([
            'details' => 'required',
        ]);
        $time = count($validatedData['details']);

        for ($i = 0; $i < $time; $i++) {
            $data = [
                'product_id' => $id,
                'details' => $validatedData['details'][$i],
            ];
            WhySafefood::create($data);
        };
        return redirect()->back()->with('msg', 'Saved Successfully');
    }
    public function delete_whychoose(Request $request, $id)
    {
        WhySafefood::find($id)->delete();
        return redirect()->back()->with('msg', 'Deleted Successfully');
    }
    public function activate($id)
    {
        $product = Product::find($id);
        $product->landing_page = 'yes';
        $product->update();
        return back();
    }

    public function webOrder(Request $request, $id)
    {
        // dd($request->all());
        $data = [
            'product_id' => $id,
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'address' => $request->address,
            'price' => $request->price,
            'quantity' => $request->quantity,
            'sub_total' => $request->sub_total,
        ];
        webOrder::create($data);
        return redirect()->back()->with('msg', 'Orderde Successfully');
    }

    public function webOrder_list() {
        $orders = WebOrder::all();
        // dd($orders);
        return view('admin.product.weborder.index',compact('orders'));
    }
}
