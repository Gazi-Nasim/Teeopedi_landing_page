<?php

namespace App\Http\Controllers;

use App\Models\Advantage;
use Illuminate\Http\Request;

class AdvantageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('advantage.create');
    }

    public function list()
    {
        $data = Advantage::get();
        // dd($data);
        return view('advantage.list', compact('data'));
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
            'heading' => 'required',
            'details' => 'required',
        ]);
        $heading = $validatedData['heading'];
        $details = $validatedData['details'];
        $time = count($request->heading);
        // dd($heading);
        for ($i = 0; $i < $time; $i++) {
            $data = [
                'heading' => $heading[$i],
                'details' => $details[$i],
            ];
            Advantage::create($data);
        }
        return redirect()->route('advantages_list')->with('msg', 'Saved Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Advantage $advantage)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Advantage $advantage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Advantage $advantage)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        Advantage::find($id)->delete();
        return redirect()->route('advantages_list')->with('msg', 'Deleted Successfully');
    }
}
