<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Cargotrack;

class CargotrackOfController extends Controller
{
    // Method to send a standardized response
    public function sendResponse($result, $message)
    {
        $response = [
            'success' => true,
            'data'    => $result,
            'message' => $message,
        ];

        return response()->json($response, 200);
    }

    public function index()
    {
        $data = Cargotrack::with('warehouse', 'warehouseblock')->get();
        return $this->sendResponse($data, "Cargotrack data retrieved successfully");
    }

    public function store(Request $request)
    {
        $data = Cargotrack::create($request->all());
        return $this->sendResponse($data, "Cargotrack created successfully");
    }

    public function show(Cargotrack $cargotrack)
    {
        return $this->sendResponse($cargotrack, "Cargotrack retrieved successfully");
    }

    public function update(Request $request, $id)
    {
        $data = Cargotrack::where('id', $id)->update($request->all());
        return $this->sendResponse($id, "Cargotrack updated successfully");
    }

    public function destroy(Cargotrack $cargotrack)
    {
        $cargotrack->delete();
        return $this->sendResponse($cargotrack, "Cargotrack deleted successfully");
    }
}
