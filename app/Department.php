<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $fillable = [
        'name'
    ];

    public function departmentFees()
    {
        return $this->hasMany(DepartmentFees::class);
    }

    public function students()
    {
        return $this->hasMany(Student::class);
    }
}
