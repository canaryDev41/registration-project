<?php

namespace App\Http\Controllers;

use App\Form;
use App\Student;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function getForms($stdID)
    {
        $forms = Form::stdID($stdID)->get();

            return response([
                'forms' => $forms,
                'error' => false
            ]);
    }

    public function store(Request $request)
    {
        $student = Student::find($request->student_id);

        $form = new Form();
        $form->type = $request->type;
        $form->student_id = $student->id;

        if ($form->save())
            return response([
                'message' => 'your request is created!',
                'error' => false
            ]);
        return response([
            'message' => 'there is an error!',
            'error' => true
        ]);
    }
}
