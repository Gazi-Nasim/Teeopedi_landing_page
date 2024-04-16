<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use App\Models\Offer;

class OfferController extends Controller
{
    public function offers()
    {
        $title = 'Offers List';
        $offers = Offer::where('status', 1)->latest()->get();
        return view('admin.offers.index', compact('offers', 'title'))->with('no', 1);
    }
    public function create_offer()
    {
        $title = 'Create Offer';
        return view('admin.offers.create', compact('title'));
    }
    public function store_offer(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255|unique:offers,title',
            'short_desc' => 'nullable|string|max:10000',
            'url' => 'nullable|url|max:5000',
            'img' => 'nullable|image|mimes:jpg,jpeg,png,gif,webp,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $offer = new Offer;
        $image = $request->file('img');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('uploads/offers/images/', $imagename);
            $offer->img = $imagename;
        }
        $offer->title = $request->title;
        $offer->url = request('url');
        $offer->short_desc = $request->desc;
        $offer->save();

        return redirect()->route('offer.index')->with('success', 'Offer added successfully.');
    }
    public function edit_offer($id)
    {
        $title = 'Edit Offer';
        $offer = Offer::findOrFail($id);
        return view('admin.offers.edit', compact('offer', 'title'));
    }
    public function update_offer(Request $request,$id)
    {
        $offer = Offer::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255|unique:offers,title,' . $id,
            'short_desc' => 'nullable|string|max:10000',
            'url'=>'nullable|url|max:5000',
            'img' => 'nullable|image|mimes:jpg,jpeg,png,gif,webp,svg|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $image = $request->file('img');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME), '-');
            $imagename = $f_n . '-' . time() . '.' . $ext;
            $image->move('uploads/offers/images/', $imagename);
            $offer->img = $imagename;
        }
        $offer->title = request('title');
        $offer->url = request('url');
        $offer->short_desc = request('short_desc');
        $offer->update();
        return redirect()->route('offer.index')->with('success', 'Offer updated successfully.');
    }
    public function delete_offer($id)
    {
        $offer = Offer::findOrFail($id);
        $offer->delete();
        return redirect()->route('offer.index')->with('success', 'Offer deleted successfully.');
    }
}
