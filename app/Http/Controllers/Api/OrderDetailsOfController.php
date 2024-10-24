<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\OrderDetails;

class OrderDetailsOfController extends BaseController
{
    public function index(){
        $data=OrderDetails::get();
        return $this->sendResponse($data,"OrderDetails data");
    }

    public function store(Request $request){
        $data=OrderDetails::create($request->all());
        return $this->sendResponse($data,"OrderDetails created successfully");
    }
    public function show(OrderDetails $orderdetails){
        return $this->sendResponse($orderdetails,"OrderDetails created successfully");
    }

    public function update(Request $request,$id){

        $data=OrderDetails::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"OrderDetails updated successfully");
    }

    public function destroy(OrderDetails $orderdetails)
    {
        $orderdetails=$orderdetails->delete();
        return $this->sendResponse($orderdetails,"OrderDetails deleted successfully");
    }
}
