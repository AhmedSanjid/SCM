<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Cargotrack;

class CargotrackOfController extends Controller
{
    public function index(){
        $data=Cargotrack::with('warehouse','warehouseblock')->get();
        return $this->sendResponse($data,"cargotrack data");
    }

    public function store(Request $request){
        $data=Cargotrack::create($request->all());
        return $this->sendResponse($data,"cargotrack created successfully");
    }
    public function show(Cargotrack $cargotrack){
        return $this->sendResponse($cargotrack,"cargotrack created successfully");
    }

    public function update(Request $request,$id){

        $data=Cargotrack::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"cargotrack updated successfully");
    }

    public function destroy(Cargotrack $cargotrack)
    {
        $cargotrack=$cargotrack->delete();
        return $this->sendResponse($cargotrack,"cargotrack deleted successfully");
    }
}
