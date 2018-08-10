<?php

namespace App\Http\Controllers;

use App\Result;
use Illuminate\Http\Request;

class ResultController extends Controller
{
    public function show(Request $request, $stdID)
    {
        $result = Result::byStdID($stdID)->with(['details'])->first();
        if ($result){
            return response(['result' => $result, 'error' => false], 200);
        }else{
            return response(['message' => 'sorry there is no data to show', 'error' => true], 200);
        }
    }
}