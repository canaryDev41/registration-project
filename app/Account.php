<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Account extends Model
{
    protected $fillable = [
        'value', 'student_id'
    ];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }
}
