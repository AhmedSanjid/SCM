<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Sailingfreight;

class SailingController extends BaseController
{
    public function index(){
        $data=Sailingfreight::get();
        return $this->sendResponse($data,"Sailingfreight data");
    }

    public function store(Request $request){
        $data=Sailingfreight::create($request->all());
        return $this->sendResponse($data,"Sailingfreight created successfully");
    }
    public function show(Sailingfreight $sailingfreight){
        return $this->sendResponse($sailingfreight,"Sailingfreight created successfully");
    }

    public function update(Request $request,$id){

        $data=Sailingfreight::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Sailingfreight updated successfully");
    }

    public function destroy(Sailingfreight $sailingfreight)
    {
        $Sailingfreight=$sailingfreight->delete();
        return $this->sendResponse($Sailingfreight,"Sailingfreight deleted successfully");
    }
}
