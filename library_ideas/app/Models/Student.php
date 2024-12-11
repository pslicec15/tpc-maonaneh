<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'studentNo',
        'firstName',
        'middleName',
        'lastName',
        'sex',
        'birthdate',
        'courseID',
        'yearLevelID',
        'contactNo',
        'address',
        'photo',
        'archive',
    ];

    protected $guarded = [];
    protected $dates = ['deleted_at'];

    use HasFactory;
}
