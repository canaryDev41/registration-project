<?php

namespace App\Http\Controllers;

use App\Excuse;
use Illuminate\Http\Request;

class ExcusesController extends Controller
{

    public function getExcusesByStudentID($stdID)
    {
        $excuses = Excuse::byStdID($stdID)->get();

        return response([
            'excuses' => $excuses,
            'error' => false
            ]);
    }

    public function store(Request $request)
    {
        $excuse = new Excuse();
        $excuse->from = $request->from;
        $excuse->to = $request->to;
        $excuse->attach = $request->attach;
        $excuse->type = $request->type;
        $excuse->status = 0;
        $excuse->student()->associate($request->student_id);

        $excuse->save();

        return response([
            'message' => 'data inserted successfully',
            'error' => false
        ]);
    }

    public function show($id)
    {
        $excuses = Excuse::find($id)->first();
        return response([
            'excuses' => $excuses,
            'error' => false
        ]);
    }

}
