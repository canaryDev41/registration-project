<?php

namespace App;

use http\QueryString;
use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    protected $fillable = [
        'student_id', 'gpa'
    ];

    public function scopeByStdID($query, $stdID)
    {
        return $query->where('student_id', $stdID);
    }

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function details()
    {
        return $this->hasMany(ResultDetail::class);
    }

    public function scopeSuccess($query)
    {
        return $this->where('gpa', '>=', 2.00);
    }

    public function scopeFail($query)
    {
        return $this->where('gpa', '<', 2.00);
    }
}
