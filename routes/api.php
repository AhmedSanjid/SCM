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
use App\Http\Controllers\Api\vendorsController;
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
Route::controller(vendorsController::class)->group(function(){
    Route::get('vendors','index');
    Route::post('vendors/create','store');
    Route::get('vendors/{vendors}','show');
    Route::post('vendors/edit/{vendors}','update');
    Route::delete('vendors/{vendors}','destroy');
});