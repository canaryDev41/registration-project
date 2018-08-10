<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('login', 'StudentAuthController@login');

Route::post('register', 'StudentAuthController@register');
Route::get('student/{stdID}/result', 'ResultController@show');


Route::post('registration', 'RegistrationController@register');
Route::get('registration/{stdID}/check', 'RegistrationController@check');

Route::get('payment/{stdID}/check', 'PaymentController@check');
Route::post('registration/payment', 'PaymentController@payment');

Route::get('student/{stdID}/registration', 'RegistrationController@show');

Route::get('student/{stdID}/forms', 'FormController@getForms');
Route::post('student/form', 'FormController@store');

Route::get('student/{stdID}/excuses', 'ExcusesController@getExcusesByStudentID');
Route::post('student/excuses', 'ExcusesController@store');