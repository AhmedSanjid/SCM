<?php

namespace App\Http\Controllers\Api;
use App\Models\freights;
use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;

class freightsOfController extends BaseController
{
    public function index(){
        $data=freights::with('customer','Transporttype')->get();
        return $this->sendResponse($data,"freights data");
    }

    public function store(Request $request){
        $data=freights::create($request->all());
        return $this->sendResponse($data,"freights created successfully");
    }
    public function show(freights $freight){
        return $this->sendResponse($freight,"freights created successfully");
    }

    public function update(Request $request,$id){

        $data=freights::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"freights updated successfully");
    }

    public function destroy(freights $freight)
    {
        $freight=$freight->delete();
        return $this->sendResponse($freight,"freights deleted successfully");
    }
}
