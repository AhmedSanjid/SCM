<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\vendors;

class vendorsController extends BaseController
{
    public function index(){
        $data=vendors::get();
        return $this->sendResponse($data,"vendors data");
    }

    public function store(Request $request){
        $data=vendors::create($request->all());
        return $this->sendResponse($data,"vendors created successfully");
    }
    public function show(vendors $vendors){
        return $this->sendResponse($vendors,"vendors created successfully");
    }

    public function update(Request $request,$id){

        $data=vendors::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"vendors updated successfully");
    }

    public function destroy(vendors $vendors)
    {
        $vendors=$vendors->delete();
        return $this->sendResponse($vendors,"vendors deleted successfully");
    }
}
