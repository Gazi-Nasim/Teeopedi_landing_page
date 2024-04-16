<?php

namespace App\Http\Controllers;

use App\Models\Policy;
use Illuminate\Http\Request;

class PolicyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('policy.create');
    }

    public function list()
    {
        $data = Policy::get();
        // dd($data);
        return view('policy.list', compact('data'));
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
        $time = count($validatedData['heading']);
        for ($i = 0; $i < $time; $i++) {
            $data = [
                'heading' => $heading[$i],
                'details' => $details[$i],
            ];
            Policy::create($data);
        }
        return redirect()->route('policy_list')->with('msg', 'Saved Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Policy $policy)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Policy $policy)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Policy $policy)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        // dd($id);
        Policy::find($id)->delete();
        return redirect()->route('policy_list')->with('msg', 'Deleted Successfully');
    }
}
