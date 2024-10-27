<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;;
use Illuminate\Http\Request;
use App\Models\Location;

class locationOfController extends BaseController
{
    public function index(){
        $data=Location::with('country','state')->get();
        return $this->sendResponse($data,"Location data");
    }

    public function store(Request $request){
        $data=Location::create($request->all());
        return $this->sendResponse($data,"Location created successfully");
    }
    public function show(Location $location){
        return $this->sendResponse($location,"Location created successfully");
    }

    public function update(Request $request,$id){

        $data=Location::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Location updated successfully");
    }

    public function destroy(Location $location)
    {
        $location=$location->delete();
        return $this->sendResponse($location,"Location deleted successfully");
    }
}
