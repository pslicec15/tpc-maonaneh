<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Instructor extends Model
{
    protected $fillable = [
        'instructorNo',
        'firstName',
        'middleName',
        'lastName',
        'sex',
        'birthdate',
        'departmentID',
        'position',
        'contactNo',
        'address',
        'photo',
        'archive'
    ];

    protected $guarded = [];
    protected $dates = ['deleted_at'];

    use HasFactory;
}
