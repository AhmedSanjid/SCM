<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Alert;

class AlertController extends BaseController
{
    public function index(){
        $data=Alert::get();
        return $this->sendResponse($data,"Role data");
    }

    public function store(Request $request){
        $data=Alert::create($request->all());
        return $this->sendResponse($data,"Alert created successfully");
    }
    public function show(Alert $alert){
        return $this->sendResponse($alert,"Alert created successfully");
    }

    public function update(Request $request,$id){

        $data=Alert::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Alert updated successfully");
    }

    public function destroy(Alert $alert)
    {
        $alert=$alert->delete();
        return $this->sendResponse($alert,"Alert deleted successfully");
    }
}
