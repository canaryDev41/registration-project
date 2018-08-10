<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Registration extends Model
{
    protected $fillable = [
        'student_id', 'type', 'nextPayment', 'date', 'semester', 'level'
    ];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function payment()
    {
        return $this->hasOne(Payment::class);
    }

    /**
     * @param $query
     * @param $student_id
     * @return mixed
     */
    public function scopeByStdID($query, $student_id)
    {
        return $query->where('student_id', $student_id);
    }
}
