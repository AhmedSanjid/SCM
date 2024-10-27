<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\DiscountController;
use App\Http\Controllers\Api\InsuranceController;
use App\Http\Controllers\Api\AirfreightController;
use App\Http\Controllers\Api\SailingController;
use App\Http\Controllers\Api\HighwayController;
use App\Http\Controllers\Api\WarehouseController;
use App\Http\Controllers\Api\customersController;
use App\Http\Controllers\Api\freightsOfController;
use App\Http\Controllers\Api\RoleOfController;
use App\Http\Controllers\Api\CountryOfController;
use App\Http\Controllers\Api\StateOfController;
use App\Http\Controllers\Api\locationOfController;
use App\Http\Controllers\Api\WarehouseBlockOfController;
use App\Http\Controllers\Api\ItemCategoryBlockOfController;
use App\Http\Controllers\Api\ItemOfController;
use App\Http\Controllers\Api\TransportTypeOfController;
use App\Http\Controllers\Api\OrderDetailsOfController;
use App\Http\Controllers\Api\StaffOfController;
// use App\Http\Controllers\Api\DesignationController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::controller(AuthController::class)->group(function(){
    Route::post('register','_register');
    Route::post('login','_login');
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
// Route::controller(DesignationController::class)->group(function(){
//     Route::get('designation','index');
//     Route::get('designation/{designation}','show');
//     Route::put('designation/{designation}','update');
//     Route::delete('designation/{designation}','destroy');
//     Route::post('designation/create','store');
// });
Route::controller(DiscountController::class)->group(function(){
    Route::get('discount','index');
    Route::post('discount/create','store');
    Route::get('discount/{discount}','show');
    Route::post('discount/edit/{id}','update');
    Route::delete('discount/{discount}','destroy');
});
Route::controller(InsuranceController::class)->group(function(){
    Route::get('insurance','index');
    Route::post('insurance/create','store');
    Route::get('insurance/{insurance}','show');
    Route::post('insurance/edit/{insurance}','update');
    Route::delete('insurance/{insurance}','destroy');
});
Route::controller(AirfreightController::class)->group(function(){
    Route::get('airfreight','index');
    Route::post('airfreight/create','store');
    Route::get('airfreight/{airfreight}','show');
    Route::post('airfreight/edit/{airfreight}','update');
    Route::delete('airfreight/{airfreight}','destroy');
});
Route::controller(SailingController::class)->group(function(){
    Route::get('sailingfreight','index');
    Route::post('sailingfreight/create','store');
    Route::get('sailingfreight/{sailingfreight}','show');
    Route::post('sailingfreight/edit/{sailingfreight}','update');
    Route::delete('sailingfreight/{sailingfreight}','destroy');
});
Route::controller(HighwayController::class)->group(function(){
    Route::get('highwayfreight','index');
    Route::post('highwayfreight/create','store');
    Route::get('highwayfreight/{highwayfreight}','show');
    Route::post('highwayfreight/edit/{highwayfreight}','update');
    Route::delete('highwayfreight/{highwayfreight}','destroy');
});
Route::controller(WarehouseController::class)->group(function(){
    Route::get('warehouse','index');
    Route::post('warehouse/create','store');
    Route::get('warehouse/{warehouse}','show');
    Route::post('warehouse/edit/{warehouse}','update');
    Route::delete('warehouse/{warehouse}','destroy');
});
Route::controller(customersController::class)->group(function(){
    Route::get('customer','index');
    Route::post('customer/create','store');
    Route::get('customer/{customer}','show');
    Route::post('customer/edit/{customer}','update');
    Route::delete('customer/{customer}','destroy');
});
Route::controller(freightsOfController::class)->group(function(){
    Route::get('freights','index');
    Route::post('freights/create','store');
    Route::get('freights/{vendors}','show');
    Route::post('freights/edit/{freights}','update');
    Route::delete('freights/{freights}','destroy');
});
Route::controller(RoleOfController::class)->group(function(){
    Route::get('Role','index');
    Route::post('Role/create','store');
    Route::get('Role/{vendors}','show');
    Route::post('Role/edit/{Role}','update');
    Route::delete('Role/{Role}','destroy');
});
Route::controller(CountryOfController::class)->group(function(){
    Route::get('Country','index');
    Route::post('Country/create','store');
    Route::get('Country/{Country}','show');
    Route::post('Country/edit/{Country}','update');
    Route::delete('Country/{Country}','destroy');
});
Route::controller(StateOfController::class)->group(function(){
    Route::get('State','index');
    Route::post('State/create','store');
    Route::get('State/{State}','show');
    Route::post('State/edit/{State}','update');
    Route::delete('State/{State}','destroy');
});
Route::controller(locationOfController::class)->group(function(){
    Route::get('Location','index');
    Route::post('Location/create','store');
    Route::get('Location/{Location}','show');
    Route::post('Location/edit/{Location}','update');
    Route::delete('Location/{Location}','destroy');
});
Route::controller(WarehouseBlockOfController::class)->group(function(){
    Route::get('Warehouseblock','index');
    Route::post('Warehouseblock/create','store');
    Route::get('Warehouseblock/{Warehouseblock}','show');
    Route::post('Warehouseblock/edit/{Warehouseblock}','update');
    Route::delete('Warehouseblock/{Warehouseblock}','destroy');
});
Route::controller(ItemCategoryBlockOfController::class)->group(function(){
    Route::get('Itemcategory','index');
    Route::post('Itemcategory/create','store');
    Route::get('Itemcategory/{Itemcategory}','show');
    Route::post('Itemcategory/edit/{Itemcategory}','update');
    Route::delete('Itemcategory/{Itemcategory}','destroy');
});
Route::controller(ItemOfController::class)->group(function(){
    Route::get('Item','index');
    Route::post('Item/create','store');
    Route::get('Item/{Item}','show');
    Route::post('Item/edit/{Item}','update');
    Route::delete('Item/{Item}','destroy');
});
Route::controller(TransportTypeOfController::class)->group(function(){
    Route::get('Transporttype','index');
    Route::post('Transporttype/create','store');
    Route::get('Transporttype/{Transporttype}','show');
    Route::post('Transporttype/edit/{Transporttype}','update');
    Route::delete('Transporttype/{Transporttype}','destroy');
});
Route::controller(OrderDetailsOfController::class)->group(function(){
    Route::get('Orderdetails','index');
    Route::post('Orderdetails/create','store');
    Route::get('Orderdetails/{Orderdetails}','show');
    Route::post('Orderdetails/edit/{Orderdetails}','update');
    Route::delete('Orderdetails/{Orderdetails}','destroy');
});
Route::controller(StaffOfController::class)->group(function(){
    Route::get('Staff','index');
    Route::post('Staff/create','store');
    Route::get('Staff/{Staff}','show');
    Route::post('Staff/edit/{id}','update');
    Route::delete('Staff/{id}','destroy');
});