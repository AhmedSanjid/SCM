<?php

namespace App\Http\Controllers\Api;
use App\Models\freights;
use App\Models\Customers;
use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;

class freightsOfController extends BaseController
{
    public function index(){
        $data=freights::with('customer','Transporttype')->get();
        return $this->sendResponse($data,"freights data");
    }

    public function store(Request $request){
        $input=$request->all();
        if($request->customer_id==''){
            $customer=Customers::create($request->all());
            $input['customer_id']=$customer->id;
        }

        $data=freights::create($input);
        return $this->sendResponse($data,"freights created successfully");
    }
    public function show(freights $freight){
        return $this->sendResponse($freight,"freights created successfully");
    }

    public function update(Request $request,$id){

        $data=freights::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"freights updated successfully");
    }

    public function destroy(freights $freight)
    {
        $freight=$freight->delete();
        return $this->sendResponse($freight,"freights deleted successfully");
    }

    public function checkCustomer(Request $request)
    {
        $customer=Customers::select('company_name','address','id as customer_id')->where('email',$request->email)
                            ->where('contact_no',$request->contact_no)
                            ->first();

        return $this->sendResponse($customer,"freights deleted successfully");
    }
}
