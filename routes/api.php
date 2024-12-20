<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
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
use App\Http\Controllers\Api\StaffOfController;
use App\Http\Controllers\Api\CargotrackOfController;
use App\Http\Controllers\Api\AlertController;
use App\Http\Controllers\Api\HistoryOfController;
use App\Http\Controllers\Api\MembershipOfController;
use App\Http\Controllers\Api\CommunityOfController;
use App\Http\Controllers\Api\CrewOfController;


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

// Route::controller(CrewOfController::class)->group(function(){
//    Route::post('signup','_signup');
//     Route::post('clogin','_clogin');
// });

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::middleware('auth:sanctum')->get('/crew', function (Request $request) {
//     return $request->crew();
// });

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
    Route::get('freights/{freight}','show');
    Route::post('freights/edit/{freight}','update');
    Route::delete('freights/{freight}','destroy');
    Route::post('freights/check_customer','checkCustomer');
});
Route::controller(RoleOfController::class)->group(function(){
    Route::get('Role','index');
    Route::post('Role/create','store');
    Route::get('Role/{role}','show');
    Route::post('Role/edit/{role}','update');
    Route::delete('Role/{role}','destroy');
});
Route::controller(CountryOfController::class)->group(function(){
    Route::get('Country','index');
    Route::post('Country/create','store');
    Route::get('Country/{country}','show');
    Route::post('Country/edit/{country}','update');
    Route::delete('Country/{country}','destroy');
});
Route::controller(StateOfController::class)->group(function(){
    Route::get('State','index');
    Route::post('State/create','store');
    Route::get('State/{state}','show');
    Route::post('State/edit/{state}','update');
    Route::delete('State/{state}','destroy');
});
Route::controller(locationOfController::class)->group(function(){
    Route::get('Location','index');
    Route::post('Location/create','store');
    Route::get('Location/{location}','show');
    Route::post('Location/edit/{location}','update');
    Route::delete('Location/{location}','destroy');
});
Route::controller(WarehouseBlockOfController::class)->group(function(){
    Route::get('warehouseblock','index');
    Route::post('warehouseblock/create','store');
    Route::get('warehouseblock/{warehouseblock}','show');
    Route::post('warehouseblock/edit/{warehouseblock}','update');
    Route::delete('warehouseblock/{warehouseblock}','destroy');
});
Route::controller(ItemCategoryBlockOfController::class)->group(function(){
    Route::get('Itemcategory','index');
    Route::post('Itemcategory/create','store');
    Route::get('Itemcategory/{itemcategory}','show');
    Route::post('Itemcategory/edit/{itemcategory}','update');
    Route::delete('Itemcategory/{itemcategory}','destroy');
});
Route::controller(ItemOfController::class)->group(function(){
    Route::get('Item','index');
    Route::post('Item/create','store');
    Route::get('Item/{item}','show');
    Route::post('Item/edit/{item}','update');
    Route::delete('Item/{item}','destroy');
});
Route::controller(TransportTypeOfController::class)->group(function(){
    Route::get('Transporttype','index');
    Route::post('Transporttype/create','store');
    Route::get('Transporttype/{transporttype}','show');
    Route::post('Transporttype/edit/{transporttype}','update');
    Route::delete('Transporttype/{transporttype}','destroy');
});
Route::controller(StaffOfController::class)->group(function(){
    Route::get('Staff','index');
    Route::post('Staff/create','store');
    Route::get('Staff/{staff}','show');
    Route::post('Staff/edit/{staff}','update');
    Route::delete('Staff/{staff}','destroy');
    Route::get('roles','roles');
});
Route::controller(CargotrackOfController::class)->group(function(){
    Route::get('cargotrack','index');
    Route::post('cargotrack/create','store');
    Route::get('cargotrack/{cargotrack}','show');
    Route::post('cargotrack/edit/{cargotrack}','update');
    Route::delete('cargotrack/{cargotrack}','destroy');
});
Route::controller(AlertController::class)->group(function(){
    Route::get('alert','index');
    Route::post('alert/create','store');
    Route::get('alert/{alert}','show');
    Route::post('alert/edit/{alert}','update');
    Route::delete('alert/{alert}','destroy');
});
Route::controller(HistoryOfController::class)->group(function(){
    Route::get('history','index');
    Route::post('history/create','store');
    Route::get('history/{history}','show');
    Route::post('history/edit/{history}','update');
    Route::delete('history/{history}','destroy');
});
Route::controller(MembershipOfController::class)->group(function(){
    Route::get('membership','index');
    Route::post('membership/create','store');
    Route::get('membership/{membership}','show');
    Route::post('membership/edit/{membership}','update');
    Route::delete('membership/{membership}','destroy');
});
Route::controller(CommunityOfController::class)->group(function(){
    Route::get('community','index');
    Route::post('community/create','store');
    Route::get('community/{community}','show');
    Route::post('community/edit/{community}','update');
    Route::delete('community/{community}','destroy');
});