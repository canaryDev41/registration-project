<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property mixed registration_id
 * @property mixed student_id
 * @property mixed date
 * @property mixed total
 */
class Payment extends Model
{
    /**
     * @property mixed payed
     * @property mixed registration_id
     * @property string next_payment
     */
    protected $fillable = [
        'total', 'registration_id', 'student_id'
    ];

    public function registration()
    {
        return $this->belongsTo(Registration::class);
    }

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function scopeByStdID($query, $stdID)
    {
        return $query->where('student_id', $stdID);
    }
}
