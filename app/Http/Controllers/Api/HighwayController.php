<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Highwayfreight;

class HighwayController extends BaseController
{
    public function index(){
        $data=Highwayfreight::get();
        return $this->sendResponse($data,"highwayfreight data");
    }

    public function store(Request $request){
        $data=Highwayfreight::create($request->all());
        return $this->sendResponse($data,"highwayfreight created successfully");
    }
    public function show(Highwayfreight $highwayfreight){
        return $this->sendResponse($highwayfreight,"highwayfreight created successfully");
    }

    public function update(Request $request,$id){

        $data=Highwayfreight::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"highwayfreight updated successfully");
    }

    public function destroy(Highwayfreight $highwayfreight)
    {
        $highwayfreight=$highwayfreight->delete();
        return $this->sendResponse($highwayfreight,"highwayfreight deleted successfully");
    }
}
