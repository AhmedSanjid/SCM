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
    public function show(Customers $customer){
        return $this->sendResponse($customer,"customers created successfully");
    }

    public function update(Request $request,$id){

        $data=Customers::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"customers updated successfully");
    }

    public function destroy(Customers $customer)
    {
        $customer=$customer->delete();
        return $this->sendResponse($customer,"customers deleted successfully");
    }
}
