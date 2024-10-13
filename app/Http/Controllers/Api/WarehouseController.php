<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Warehouse;

class WarehouseController extends BaseController
{
    public function index(){
        $data=Warehouse::get();
        return $this->sendResponse($data,"Warehouse data");
    }

    public function store(Request $request){
        $data=Warehouse::create($request->all());
        return $this->sendResponse($data,"Warehouse created successfully");
    }
    public function show(Warehouse $warehouse){
        return $this->sendResponse($warehouse,"Warehouse created successfully");
    }

    public function update(Request $request,$id){

        $data=Warehouse::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Warehouse updated successfully");
    }

    public function destroy(Warehouse $warehouse)
    {
        $warehouse=$warehouse->delete();
        return $this->sendResponse($warehouse,"Warehouse deleted successfully");
    }
}
