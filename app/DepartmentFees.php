<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DepartmentFees extends Model
{
    protected $fillable = [
        'cost', 'year', 'department_id'
    ];

    public function department()
    {
        return $this->belongsTo(Department::class);
    }
}
