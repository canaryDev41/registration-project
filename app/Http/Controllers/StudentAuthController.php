<?php

namespace App\Http\Controllers;

use App\Student;
use Illuminate\Http\Request;

class StudentAuthController extends Controller
{
    public function login(Request $request)
    {

        $login = auth()->guard('student')->attempt([
            'stdID' => $request->stdID,
            'password' => $request->password
        ]);

        if ($login) {
            $student = Student::stdID($request->stdID);
            return response([
                'message' => 'login successfully',
                'error' => false,
                'student' => $student
            ]);

        }else{
            return response([
                'message' => 'stdID or password is wrong',
                'error' => true
            ]);
        }

    }

    public function register(Request $request)
    {

        $student = new Student();

        $student->name = $request->name;
        $student->email = $request->email;
        $student->phone = $request->phone;
        $student->stdID = $request->stdID;
        $student->department_id = $request->department_id;
        $student->acceptance_year = $request->acceptance_year;
        $student->password = bcrypt($request->password);
        
        if ($student->save()) {
            return response([
                    'message' => 'user registered successfully',
                    'error' => false
                ], 200);
        }else{

        return response([
                    'message' => 'there is an error',
                    'error' => true
                ], 200);
       
        }


    }
}
