<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ResultDetail extends Model
{
    protected $fillable = [
        'course_name', 'course_points', 'course_appreciation', 'result_id'
    ];

    public function result()
    {
        return $this->belongsTo(Result::class);
    }
}
