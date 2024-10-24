<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Location;

class locationOfController extends Controller
{
    public function index(){
        $data=Location::get();
        return $this->sendResponse($data,"Role data");
    }

    public function store(Request $request){
        $data=Location::create($request->all());
        return $this->sendResponse($data,"Role created successfully");
    }
    public function show(Location $location){
        return $this->sendResponse($location,"Role created successfully");
    }

    public function update(Request $request,$id){

        $data=Location::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Role updated successfully");
    }

    public function destroy(Location $location)
    {
        $location=$location->delete();
        return $this->sendResponse($location,"Role deleted successfully");
    }
}
