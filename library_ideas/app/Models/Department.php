<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $fillable = [
        'departmentName',
        'archive'
    ];

    protected $dates = ['deleted_at'];

    use HasFactory;
}
