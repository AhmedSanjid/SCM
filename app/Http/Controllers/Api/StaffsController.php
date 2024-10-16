<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Staff;

class StaffsController extends BaseController
{
    public function index(){
        $data=Staff::get();
        return $this->sendResponse($data,"Staffs data");
    }

    public function store(Request $request){
        $data=Staff::create($request->all());
        return $this->sendResponse($data,"Staffs created successfully");
    }
    public function show(Staff $staff){
        return $this->sendResponse($staff,"Staffs created successfully");
    }

    public function update(Request $request,$id){

        $data=Staff::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Staffs updated successfully");
    }

    public function destroy(Staff $staff)
    {
        $staff=$staff->delete();
        return $this->sendResponse($staff,"Staffs deleted successfully");
    }
}
