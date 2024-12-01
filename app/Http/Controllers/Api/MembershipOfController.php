<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Membership;

class MembershipOfController extends BaseController
{
    public function index(){
        $data=Membership::get();
        return $this->sendResponse($data,"Membership data");
    }

    public function store(Request $request){
        $data=Membership::create($request->all());
        return $this->sendResponse($data,"Membership created successfully");
    }
    public function show(Membership $membership){
        return $this->sendResponse($membership,"Membership created successfully");
    }

    public function update(Request $request,$id){

        $data=Membership::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Membership updated successfully");
    }

    public function destroy(Membership $membership)
    {
        $membership=$membership->delete();
        return $this->sendResponse($membership,"Membership deleted successfully");
    }
}
