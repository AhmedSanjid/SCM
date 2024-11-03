<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Staff;
use App\Models\Role;
use App\Models\User;

class StaffOfController extends BaseController
{
    public function index(){
        $data=Staff::with('user')->get();
        return $this->sendResponse($data,"Staff data");
    }
    public function store(Request $request){
        $user['name']=$request->name;
        $user['email']=$request->email;
        $user['role_id']=$request->role_id;
        $user['password']=bcrypt($request->password);
        $user=User::create($user);
        $staff['user_id']=$user->id;
        $staff['name']=$request->name;
        $staff['designation']=$request->designation;
        $staff['contact_no']=$request->contact_no;
        $staff['address']=$request->address;
        $data=Staff::create($staff);
        return $this->sendResponse($data,"Staff created successfully");
    }
    public function show(Staff $staff){
        return $this->sendResponse($staff,"Staff created successfully");
    }

    public function update(Request $request,$id){

        $data=Staff::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Staff updated successfully");
    }

    public function destroy(Staff $staff)
    {
        $staff=$staff->delete();
        return $this->sendResponse($staff,"Staff deleted successfully");
    }

    public function roles(){
        $data=Role::get();
        return $this->sendResponse($data,"Role data");
    }

}
