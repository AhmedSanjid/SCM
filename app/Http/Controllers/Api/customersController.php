<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Customers;

class customersController extends BaseController
{
    public function index(){
        $data=Customers::get();
        return $this->sendResponse($data,"customers data");
    }

    public function store(Request $request){
        $data=Customers::create($request->all());
        return $this->sendResponse($data,"customers created successfully");
    }
    public function show(Customers $customers){
        return $this->sendResponse($customers,"customers created successfully");
    }

    public function update(Request $request,$id){

        $data=Customers::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"customers updated successfully");
    }

    public function destroy(Customers $customers)
    {
        $customers=$customers->delete();
        return $this->sendResponse($customers,"customers deleted successfully");
    }
}
