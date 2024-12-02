<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Community;

class CommunityOfController extends BaseController
{
    public function index(){
        $data=Community::get();
        return $this->sendResponse($data,"Role data");
    }

    public function store(Request $request){
        $data=Community::create($request->all());
        return $this->sendResponse($data,"Community created successfully");
    }
    public function show(Community $community){
        return $this->sendResponse($community,"Community created successfully");
    }

    public function update(Request $request,$id){

        $data=Community::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Community updated successfully");
    }

    public function destroy(Community $community)
    {
        $community=$community->delete();
        return $this->sendResponse($community,"Community deleted successfully");
    }
}
