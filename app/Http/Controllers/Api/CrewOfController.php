<?php

namespace App\Http\Controllers\Api;

use App\Models\Crew;
use Illuminate\Http\Request;
use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\JsonResponse;
use Validator;
use Illuminate\Support\Facades\Auth;

class CrewOfController extends BaseController
{
    public function _signup(Request $r): JsonResponse
    {
        $validate=Validator::make($r->all(),[
            'name'=>'required',
            'email'=>'required|email|unique:users',
            'password'=>'required',
            'c_password'=>'required|same:password'
        ]);

        if($validate->fails()){
            return $this->sendError($validate->errors(),"Validation Error",203);
        }

        $input= $r->all();
        $input['password']=bcrypt($input['password']);
        $crew=Crew::create($input);
        $data['token']=$crew->createToken('hosp')->plainTextToken;
        $data['data']=$crew;
        return $this->sendResponse($data,"User register successfully");

    }

    public function _clogin(Request $r):JsonResponse
    {
        if(Auth::attempt(['name' => $r->name, 'password' => $r->password])){
            $crew=Auth::user();
            $data['token']=$crew->createToken('hosp')->plainTextToken;
            $data['data']=$crew;
            return $this->sendResponse($data,"User login successfully");
        }else{
            return $this->sendError(['error'=>'email or password is not correct'],"Unauthorized",400);
        }
    }
}