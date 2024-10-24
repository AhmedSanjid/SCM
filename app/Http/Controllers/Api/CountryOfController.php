<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Country;

class CountryOfController extends Controller
{
    public function index(){
        $data=Country::get();
        return $this->sendResponse($data,"freights data");
    }

    public function store(Request $request){
        $data=Country::create($request->all());
        return $this->sendResponse($data,"freights created successfully");
    }
    public function show(Country $country){
        return $this->sendResponse($country,"freights created successfully");
    }

    public function update(Request $request,$id){

        $data=Country::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"freights updated successfully");
    }

    public function destroy(Country $country)
    {
        $country=$country->delete();
        return $this->sendResponse($country,"freights deleted successfully");
    }
}
