<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class UserController extends Controller
{
    public function allUser(){
        $title='All User';
        $users = User::where('status',1)->get();
        return view('admin.users.all-users',compact('users','title'));
    }
    public function addUser(){
        $title='Add User';
        return view('admin.users.add-user',compact('title'));
    }
    public function storeUser(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:60|unique:users,name',
            'email' => 'required|max:255|unique:users,email|email:rfc',
            'phone' => 'nullable|digits:11|unique:users,phone',
            'password' => 'required|string|min:8|max:100',
            'confirm_password' => 'required|string|min:8||max:100|same:password',
            'avatar' => 'mimes:jpeg,jpg,png,gif,webp|nullable|max:2048',
            'role'=>'required|numeric',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $admin = new User;
        $image = $request->file('avatar');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/users', $imagename);
            $admin->avatar = $imagename;
        }
        $admin->name = $request->name;
        $admin->username = $request->name;
        $admin->email = $request->email;
        $admin->phone = $request->phone;
        $admin->password = Hash::make($request->password);
        $admin->role = $request->role;
        $admin->save();
        return redirect('/admin/users/')->with('success', 'User Created Successfully.');
    }

    public function editUser($id){
        $title='Edit User';
        $users = User::findOrFail($id);
        return view('admin.users.edit-user')->with([
            'users' => $users,
            'title' => $title,
        ]);
    }
    public function updateUser(Request $request, $id){
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:60|unique:users,name,'.$id,
            'email' => 'required|max:255|email:rfc|unique:users,email,'.$id,
            'phone' => 'nullable|digits:11|unique:users,phone,'.$id,
            'password' => 'nullable|string|min:8|max:100',
            'avatar' => 'image|mimes:jpeg,jpg,png,gif,webp|nullable|max:2048',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $admin = User::findOrFail($id);
        $image_name = $request->hidden_image;
        $image = $request->file('avatar');
        if ($image != '') {
            $ext = pathinfo($image->getClientOriginalName(), PATHINFO_EXTENSION);
            $f_n = Str::slug(pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME),'-');
            $imagename = $f_n.'-'.time() . '.' .$ext;
            $image->move('uploads/users', $imagename);
            $admin->avatar = $imagename;
        }
        $admin->name = $request->name;
        $admin->username = $request->name;
        if($request->password != null) {
            $admin->password = Hash::make($request->password);
        }
        $admin->email = $request->email;
        $admin->phone = $request->phone;
        // $admin->role = $request->role;
        $admin->update();
        return redirect('/admin/users/')->with('success', 'User Updated Successfully.');
    }
    public function deleteUser($id){
        $users = User::findOrFail($id)->delete();
        return redirect('/admin/users/')->with('success', 'User Deleted Successfully.');
    }
}
