<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Form extends Model
{
    protected $fillable = [
        'date', 'type', 'student_id', 'status'
    ];

    public function scopeStdID($query, $stdID)
    {
        return $query->where('student_id', $stdID);
    }

    public function getStatusAttribute($value)
    {
        return $value ? 'accepted' : 'pending';
    }

    public function student()
    {
        return $this->belongsTo(Student::class);
    }
}
