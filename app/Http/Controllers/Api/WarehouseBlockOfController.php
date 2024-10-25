<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;;
use Illuminate\Http\Request;
use App\Models\WarehouseBlock;

class WarehouseBlockOfController extends BaseController
{
    public function index(){
        $data=WarehouseBlock::get();
        return $this->sendResponse($data,"WarehouseBlock data");
    }

    public function store(Request $request){
        $data=WarehouseBlock::create($request->all());
        return $this->sendResponse($data,"WarehouseBlock created successfully");
    }
    public function show(WarehouseBlock $warehouseblock){
        return $this->sendResponse($warehouseblock,"WarehouseBlock created successfully");
    }

    public function update(Request $request,$id){

        $data=WarehouseBlock::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"WarehouseBlock updated successfully");
    }

    public function destroy(WarehouseBlock $warehouseblock)
    {
        $warehouseblock=$warehouseblock->delete();
        return $this->sendResponse($warehouseblock,"WarehouseBlock deleted successfully");
    }
}
