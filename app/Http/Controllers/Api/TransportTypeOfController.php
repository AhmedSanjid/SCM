<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;;
use Illuminate\Http\Request;
use App\Models\TransportType;

class TransportTypeOfController extends BaseController
{
    public function index(){
        $data=TransportType::get();
        return $this->sendResponse($data,"State data");
    }

    public function store(Request $request){
        $data=TransportType::create($request->all());
        return $this->sendResponse($data,"State created successfully");
    }
    public function show(TransportType $transporttype){
        return $this->sendResponse($transporttype,"State created successfully");
    }

    public function update(Request $request,$id){

        $data=TransportType::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"State updated successfully");
    }

    public function destroy(TransportType $transporttype)
    {
        $transporttype=$transporttype->delete();
        return $this->sendResponse($transporttype,"State deleted successfully");
    }
}
