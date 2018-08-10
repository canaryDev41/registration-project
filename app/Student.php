<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Student extends Authenticatable
{
    protected $fillable = [
        'name',
        'stdID',
        'password',
        'email',
        'phone',
        'level',
        'semester',
        'religion',
        'nationality',
        'address',
        'blood',
        'department_id',
        'acceptance_year'
    ];

    protected $hidden = [
        'password'
    ];

    public function scopeStdID($query, $stdID)
    {
        return $query->where('stdID', $stdID)->first();
    }

    public function result()
    {
        return $this->hasOne(Result::class);
    }

    public function registration()
    {
        return $this->hasOne(Registration::class);
    }

    public function department()
    {
        return $this->belongsTo(Department::class);
    }

    public function account()
    {
        return $this->hasOne(Account::class);
    }

    public function payment()
    {
        return $this->hasMany(Payment::class);
    }

    public function forms()
    {
        return $this->hasMany(Forms::class);
    }
}
