<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Country;

class CountryOfController extends BaseController
{
    public function index(){
        $data=Country::get();
        return $this->sendResponse($data,"country data");
    }

    public function store(Request $request){
        $data=Country::create($request->all());
        return $this->sendResponse($data,"country created successfully");
    }
    public function show(Country $country){
        return $this->sendResponse($country,"country created successfully");
    }

    public function update(Request $request,$id){

        $data=Country::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"country updated successfully");
    }

    public function destroy(Country $country)
    {
        $country=$country->delete();
        return $this->sendResponse($country,"country deleted successfully");
    }
}
