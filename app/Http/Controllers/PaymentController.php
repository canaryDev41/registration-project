<?php

namespace App\Http\Controllers;

use App\Account;
use App\DepartmentFees;
use App\Payment;
use App\Student;
use Carbon\Carbon;
use Illuminate\Http\Request;
use test\Mockery\HasUnknownClassAsTypeHintOnMethod;

class PaymentController extends Controller
{
    public function check($stdID)
    {
        //get student by student_id
        $student = Student::find($stdID)->first();

        //check if student is already payed or not
        $check = Payment::where('student_id', $student->id)->count();

        //if student is not pay yet then return a specific response...
        if (!$check){

            $account = Account::where('student_id', $student->id)->first();

            $departmentFees = DepartmentFees::where('department_id', $student->department->id)
                                    ->where('year', $student->acceptance_year)
                                    ->first();
            //if student account value is enough then...
            if ($departmentFees->cost <= $account->value){
                return response([
                    'message' => 'you can pay!',
                    'error' => false,
                    'value_value' => $account->value,
                    'fees' => $departmentFees->cost
                ]);
            //if student account value is not enough then ...
            }else{
                return response([
                    'message' => 'you can not pay your account value is not enough',
                    'error' => false,
                    'account_value' => $account->value,
                    'fees' => $departmentFees->cost
                ]);
            }
        //if student is already payed then...
        }else{
            return response([
                'message' => 'You already payed',
                'error' => true,
                'value_value' => null,
                'fees' => null
            ]);
        }

    }

    public function payment(Request $request)
    {
        $student = Student::find($request->student_id);

        $fees = DepartmentFees::where('department_id', $student->department->id)
                            ->where('year', $student->acceptance_year)->first()->cost;

        $account = Account::find($student->account->id);

        $account->value -= $fees;
        $account->update();

        $payment = new Payment();
        $payment->total = $fees;
        $payment->date = Carbon::today()->toDateString();
        $payment->registration_id = $student->registration->id;
        $payment->student_id = $student->id;

        if ($payment->save())
            return response([
                'message' => 'thanks... you successfully paid!',
                'error' => false
            ]);

            return response([
                'message' => 'sorry there is an error',
                'error' => true
            ]);
    }
}
