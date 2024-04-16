<?php

namespace App\Http\Controllers;

use App\Models\Why_mustrad;
use Illuminate\Http\Request;
use Image;

class WhyMustradController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('whyMustard.create');
    }

    public function list()
    {
        $data = Why_mustrad::get();
        // dd($data);
        return view('whyMustard.list', compact('data'));
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
            'icon' => 'required',
            'details' => 'required',
        ]);
        // dd($request->all());

        $time = count($validatedData['details']);
        for ($i = 0; $i < $time; $i++) {

            $image_one = Image::make($request->file('icon')[$i]);
            $imageName_one = time() . '_' . $request->file('icon')[$i]->getClientOriginalName();
            $image_one->save(public_path('images/whymustard/') . $imageName_one);            
            // dd($imageName_one);
            $data = [
                'icon' => $imageName_one,
                'details' => $validatedData['details'][$i],
            ];
            
            Why_mustrad::create($data);
        };
        return redirect()->route('mustard_list')->with('msg', 'Saved Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Why_mustrad $why_mustrad)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Why_mustrad $why_mustrad)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Why_mustrad $why_mustrad)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, $id)
    {
        Why_mustrad::find($id)->delete();
        return redirect()->route('mustard_list')->with('msg', 'Deleted Successfully');
    }
}
