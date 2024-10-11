<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Models\Airfreight;
use App\Http\Controllers\Api\BaseController;
class AirfreightController extends BaseController
{
    public function index(){
        $data=Airfreight::get();
        return $this->sendResponse($data,"Airfreight data");
    }

    public function store(Request $request){
        $data=Airfreight::create($request->all());
        return $this->sendResponse($data,"Airfreight created successfully");
    }
    public function show(Airfreight $airfreight){
        return $this->sendResponse($airfreight,"Airfreight created successfully");
    }

    public function update(Request $request,$id){

        $data=Airfreight::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Airfreight updated successfully");
    }

    public function destroy(Airfreight $airfreight)
    {
        $airfreight=$airfreight->delete();
        return $this->sendResponse($airfreight,"Airfreight deleted successfully");
    }
}

