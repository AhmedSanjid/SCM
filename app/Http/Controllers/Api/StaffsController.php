<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Staffs;

class StaffsController extends BaseController
{
    public function index(){
        $data=Staffs::get();
        return $this->sendResponse($data,"Staffs data");
    }

    public function store(Request $request){
        $data=Staffs::create($request->all());
        return $this->sendResponse($data,"Staffs created successfully");
    }
    public function show(Staffs $staffs){
        return $this->sendResponse($staffs,"Staffs created successfully");
    }

    public function update(Request $request,$id){

        $data=Staffs::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Staffs updated successfully");
    }

    public function destroy(Staffs $staffs)
    {
        $staffs=$staffs->delete();
        return $this->sendResponse($staffs,"Staffs deleted successfully");
    }
}
