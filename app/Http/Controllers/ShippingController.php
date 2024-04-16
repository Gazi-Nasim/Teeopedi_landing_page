<?php

namespace App\Http\Controllers;

use App\Models\LocalShipping;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
class ShippingController extends Controller
{
    public function localDelivery(){
        $title='Local Delivery';
        $lshipping = LocalShipping::orderBy('id','desc')->get();
        return view('admin.shipping.local-delivery')->with(['lshipping'=> $lshipping,'title'=>$title]);
    }

    public function storeLocalDelivery(Request $request){

           $validator = Validator::make($request->all(), [
               'zone_name' => 'required|string|max:255',
               'fee_type' => 'string|required',
               'fee_amount' => 'required|numeric',
               'status' => 'required|numeric',
           ]);
           if ($validator->fails()) {
               return redirect()->back()->withErrors($validator)->withInput();
           }
            $local = new LocalShipping();
            $local->zone_name = $request->zone_name;
            $local->fee_type = $request->fee_type;
            $local->status = $request->status;
            $local->fee_amount = $request->fee_amount;
            $local->ship_id = 3;
            $local->save();
        return redirect('admin/shipping/local-delivery')->with('success','Local Delivery Created successfully.');
    }

    public function addLocalDelivery(){
        $title='Add Local Delivery';
        return view('admin.shipping.add-local-delivery')->with('title',$title);
    }
    public function editLocalDelivery($id){
        $title='Edit Local Delivery';
        $local = LocalShipping::findOrfail($id);
        return view('admin.shipping.edit-local-delivery', compact('local','title'));
    }

    public function updateLocalDelivery(Request $request, $id){

        $validator = Validator::make($request->all(), [
            'zone_name' => 'required|string|max:255',
            'fee_type' => 'string|required',
            'fee_amount' => 'required|numeric',
            'status'=>'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $local = LocalShipping::findOrFail($id);
        $local->zone_name = $request->zone_name;
        $local->fee_type = $request->fee_type;
        $local->fee_amount = $request->fee_amount;
        $local->status = $request->status;
        $local->ship_id = 3;
        $local->update();
        return redirect('admin/shipping/local-delivery')->with('success','Local Delivery updated successfully.');
    }
    public function deleteLocalDelivery($id){
        $ship = LocalShipping::findOrFail($id);
        $ship->delete();
        return redirect()->back()->with('success','Local Delivery Deleted successfully.');
    }

}
