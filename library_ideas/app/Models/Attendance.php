<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    protected $table = 'attendance';
    
    protected $fillable = [
        'date',
        'studentId',
        'instructorId',
        'timedIn',
        'timedOut',
    ];

    protected $dates = ['deleted_at'];

    use HasFactory;
}
