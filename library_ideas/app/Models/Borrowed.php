<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Borrowed extends Model
{
    public function book()
    {
        return $this->belongsTo(Book::class, 'bookID');
    }

    public function issuedByUser()
    {
        return $this->belongsTo(User::class, 'issuedBy');
    }

    public function returnedToUser()
    {
        return $this->belongsTo(User::class, 'returnedTo');
    }

    public function student()
    {
        return $this->belongsTo(Student::class, 'studentId');
    }

    public function instructor()
    {
        return $this->belongsTo(Instructor::class, 'instructorId');
    }

    public function borrower()
    {
        return $this->morphTo();
    }

    protected $table = 'borrowed';

    protected $fillable = [
        'bookID',
        'instructorId',
        'studentId',
        'notes',
        'dateBorrowed',
        'dateReturned',
        'delayedDay',
        'issuedBy',
        'returnedTo',
        'status',
        'remarks'
    ];

    protected $guarded = [];
    protected $dates = ['deleted_at'];
    use HasFactory;
}
