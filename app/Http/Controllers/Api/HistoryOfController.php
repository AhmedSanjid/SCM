<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\History;

class HistoryOfController extends BaseController
{
    public function index(){
        $data=History::get();
        return $this->sendResponse($data,"History data");
    }

    public function store(Request $request){
        $data=History::create($request->all());
        return $this->sendResponse($data,"History created successfully");
    }
    public function show(History $history){
        return $this->sendResponse($history,"History created successfully");
    }

    public function update(Request $request,$id){

        $data=History::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"History updated successfully");
    }

    public function destroy(History $history)
    {
        $history=$history->delete();
        return $this->sendResponse($history,"History deleted successfully");
    }
}
