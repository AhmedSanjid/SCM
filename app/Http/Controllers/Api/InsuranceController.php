<?php

namespace App\Http\Controllers\Api;
use App\Models\Insuranceclaim;
use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;

class InsuranceController extends BaseController
{
    public function index(){
        $data=Insuranceclaim::get();
        return $this->sendResponse($data,"Insuranceclaim data");
    }

    public function store(Request $request){
        $data=Insuranceclaim::create($request->all());
        return $this->sendResponse($data,"Insuranceclaim created successfully");
    }
    public function show(Insuranceclaim $insuranceclaim){
        return $this->sendResponse($insuranceclaim,"Insuranceclaim created successfully");
    }

    public function update(Request $request,$id){

        $data=Insuranceclaim::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Insuranceclaim updated successfully");
    }

    public function destroy(Insuranceclaim $insuranceclaim)
    {
        $insuranceclaim=$insuranceclaim->delete();
        return $this->sendResponse($insuranceclaim,"Insuranceclaim deleted successfully");
    }
}
