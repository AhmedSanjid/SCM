<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Orderdetails;

class OrderdetailsOfController extends Controller
{
    public function index(){
        $data=Orderdetails::with('ItemCategory')->get();
        return $this->sendResponse($data,"Orderdetails data");
    }

    public function store(Request $request){
        $data=Orderdetails::create($request->all());
        return $this->sendResponse($data,"Orderdetails created successfully");
    }
    public function show(Orderdetails $orderdetails){
        return $this->sendResponse($orderdetails,"Orderdetails created successfully");
    }

    public function update(Request $request,$id){

        $data=Orderdetails::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"Orderdetails updated successfully");
    }

    public function destroy(Orderdetails $orderdetails)
    {
        $orderdetails=$orderdetails->delete();
        return $this->sendResponse($orderdetails,"Orderdetails deleted successfully");
    }
}