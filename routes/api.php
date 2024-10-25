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
use App\Http\Controllers\Api\StaffsController;
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
Route::controller(StaffsController::class)->group(function(){
    Route::get('staff','index');
    Route::post('staff/create','store');
    Route::get('staff/{staff}','show');
    Route::post('staff/edit/{staff}','update');
    Route::delete('staff/{staff}','destroy');
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
    Route::get('state','index');
    Route::post('state/create','store');
    Route::get('state/{state}','show');
    Route::post('state/edit/{state}','update');
    Route::delete('state/{state}','destroy');
});
Route::controller(locationOfController::class)->group(function(){
    Route::get('location','index');
    Route::post('location/create','store');
    Route::get('location/{location}','show');
    Route::post('location/edit/{location}','update');
    Route::delete('location/{location}','destroy');
});
Route::controller(WarehouseBlockOfController::class)->group(function(){
    Route::get('WarehouseBlock','index');
    Route::post('WarehouseBlock/create','store');
    Route::get('WarehouseBlock/{WarehouseBlock}','show');
    Route::post('WarehouseBlock/edit/{WarehouseBlock}','update');
    Route::delete('WarehouseBlock/{WarehouseBlock}','destroy');
});
Route::controller(ItemCategoryBlockOfController::class)->group(function(){
    Route::get('ItemCategory','index');
    Route::post('ItemCategory/create','store');
    Route::get('ItemCategory/{ItemCategory}','show');
    Route::post('ItemCategory/edit/{ItemCategory}','update');
    Route::delete('ItemCategory/{ItemCategory}','destroy');
});
Route::controller(ItemOfController::class)->group(function(){
    Route::get('Item','index');
    Route::post('Item/create','store');
    Route::get('Item/{Item}','show');
    Route::post('Item/edit/{Item}','update');
    Route::delete('Item/{Item}','destroy');
});
Route::controller(TransportTypeOfController::class)->group(function(){
    Route::get('TransportType','index');
    Route::post('TransportType/create','store');
    Route::get('TransportType/{TransportType}','show');
    Route::post('TransportType/edit/{TransportType}','update');
    Route::delete('TransportType/{TransportType}','destroy');
});
Route::controller(OrderDetailsOfController::class)->group(function(){
    Route::get('orderdetails','index');
    Route::post('orderdetails/create','store');
    Route::get('orderdetails/{orderdetails}','show');
    Route::post('orderdetails/edit/{orderdetails}','update');
    Route::delete('orderdetails/{orderdetails}','destroy');
});