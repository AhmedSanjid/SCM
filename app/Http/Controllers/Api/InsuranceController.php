<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Models\Insurance;
use App\Http\Controllers\Api\BaseController;
class InsuranceController extends BaseController
{
    public function index(){
        $data=Insurance::get();
        return $this->sendResponse($data,"Insurance data");
    }

    public function store(Request $request){
        $data=Insurance::create($request->all());
        return $this->sendResponse($data,"Insurance created successfully");
    }
    public function show(Insurance $insurance){
        return $this->sendResponse($insurance,"Insurance created successfully");
    }

    public function update(Request $request,$id){

        $data=Insurance::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Insurance updated successfully");
    }

    public function destroy(Insurance $insurance)
    {
        $insurance=$insurance->delete();
        return $this->sendResponse($insurance,"Insurance deleted successfully");
    }
}
