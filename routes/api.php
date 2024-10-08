<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\DiscountController;
use App\Http\Controllers\Api\InsuranceController;
use App\Http\Controllers\Api\AirfreightController;
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
    Route::get('insuranceclaim','index');
    Route::post('insuranceclaim/create','store');
    Route::get('insuranceclaim/{insuranceclaim}','show');
    Route::post('insuranceclaim/edit/{id}','update');
    Route::delete('insuranceclaim/{insuranceclaim}','destroy');
});
Route::controller(AirfreightController::class)->group(function(){
    Route::get('airfreight','index');
    Route::post('airfreight/create','store');
    Route::get('airfreight/{airfreight}','show');
    Route::post('airfreight/edit/{airfreight}','update');
    Route::delete('airfreight/{airfreight}','destroy');
});