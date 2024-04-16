<?php

namespace App\Http\Controllers;

use App\Models\WhySafefood;
use Illuminate\Http\Request;

class WhySafefoodController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('whySafefood.create');
    }


    public function list()
    {
        $data = WhySafefood::get();
        // dd($data);
        return view('whySafefood.list', compact('data'));
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
            'details' => 'required',
        ]);
        $time = count($validatedData['details']);

        for ($i = 0; $i < $time; $i++) {
            $data = [
                'details' => $validatedData['details'][$i],
            ];
            // dd($data);
            WhySafefood::create($data);
        };
        return redirect()->route('safe_food_list')->with('msg', 'Saved Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(WhySafefood $whySafefood)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(WhySafefood $whySafefood)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, WhySafefood $whySafefood)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(WhySafefood $whySafefood, $id)
    {
        WhySafefood::find($id)->delete();
        return redirect()->route('safe_food_list')->with('msg', 'Deleted Successfully');
    }
}
