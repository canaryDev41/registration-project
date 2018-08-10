<?php

namespace App\Http\Controllers;

use App\Account;
use App\Department;
use App\DepartmentFees;
use App\Payment;
use App\Registration;
use App\Student;
use Carbon\Carbon;
use const Grpc\STATUS_OK;
use Illuminate\Http\Request;

class RegistrationController extends Controller
{
    public function register(Request $request)
    {

        if (!$request->nextPayment){
            //
        }

        $student = Student::find($request->student_id);

            $registration = new Registration();
            $registration->date = Carbon::today()->toDateString();
            $registration->department_id = $student->department->id;
            $registration->semester = $request->semester;
            $registration->level = $request->level;

            $registration->religion = $request->religion ;
            $registration->nationality = $request->nationality;
            $registration->blood = $request->blood;

            $registration->parentName = $request->parentName;
            $registration->parentPhone = $request->parentPhone;
            $registration->job = $request->parentJob;

            $registration->student()->associate($student);
            $registration->save();

            if ($registration->save()){
                return response([
                    'message' => 'student register successfully',
                    'error' => false
                ], 200);
            }else {
                return response([
                    'message' => 'sorry there is an error while registration',
                    'error' => true
                ], 200);
            }

    }

    public function check($stdID)
    {
        $status = Registration::where('student_id', $stdID)->count();

        if ($status)
            return response([
                'message' => 'student is already registered!',
                'error' => false
            ]);
        return response([
            'message' => 'your are not registered yet!',
            'error' => true
        ]);
    }

}
