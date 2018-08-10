<?php

namespace App\Http\Controllers;

use App\Student;
use http\Env\Request;

class StudentProfileController extends Controller
{
    public function profile($id)
    {

        $student = Student::stdID($id)->first();
        if ($student){
            return response([
                'data' => $student,
                'error' => false
            ], 200);
        }else{
            return response([
                'message' => 'sorry this user is not exists',
                'error' => true
            ], 200);
        }

    }

    public function update(Request $request)
    {
        return $request->all();
    }
}
