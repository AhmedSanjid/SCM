<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;;
use Illuminate\Http\Request;
use App\Models\State;

class StateOfController extends BaseController
{
    public function index(){
        $data=State::get();
        return $this->sendResponse($data,"State data");
    }

    public function store(Request $request){
        $data=State::create($request->all());
        return $this->sendResponse($data,"State created successfully");
    }
    public function show(State $state){
        return $this->sendResponse($state,"State created successfully");
    }

    public function update(Request $request,$id){

        $data=State::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"State updated successfully");
    }

    public function destroy(State $state)
    {
        $state=$state->delete();
        return $this->sendResponse($state,"State deleted successfully");
    }
}
