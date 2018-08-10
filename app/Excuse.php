<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property mixed from
 * @property mixed to
 * @property string attach
 * @property string type
 * @property integer student_id
 * @property boolean status
 */
class Excuse extends Model
{
    protected $table = 'excuses';

    protected $fillable = [
        'student_id', 'from', 'to', 'attach', 'type', 'status'
    ];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function scopeByStdID($query, $stdID)
    {
        return $query->where('student_id', $stdID);
    }

    public function getStatusAttribute($value)
    {
        return $value ? 'accepted' : 'pending';
    }

    public function toArray()
    {
        return [
            'from' => $this->from,
            'to' => $this->to,
            'attach' => $this->attach,
            'type' => $this->type,
            'status' => $this->status
        ];
    }
}
