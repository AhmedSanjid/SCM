<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ItemCategory;

class ItemCategoryBlockOfController extends Controller
{
    public function index(){
        $data=ItemCategory::get();
        return $this->sendResponse($data,"Role data");
    }

    public function store(Request $request){
        $data=ItemCategory::create($request->all());
        return $this->sendResponse($data,"ItemCategory created successfully");
    }
    public function show(ItemCategory $itemcategory){
        return $this->sendResponse($itemcategory,"ItemCategory created successfully");
    }

    public function update(Request $request,$id){

        $data=ItemCategory::where('id',$id)->update($request->all());
        return $this->sendResponse($id,"ItemCategory updated successfully");
    }

    public function destroy(ItemCategory $itemcategory)
    {
        $itemcategory=$itemcategory->delete();
        return $this->sendResponse($itemcategory,"ItemCategory deleted successfully");
    }
}
