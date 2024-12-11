<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $fillable = [
        'bookTitle',
        'bookNum',
        'edition',
        'pages',
        'author',
        'publisher',
        'placeOfPublication',
        'copyrightDate',
        'size',
        'yearPublished',
        'ISBN',
        'callNumber',
        'location',
        'subjects',
        'categoryId',
        'volume',
        'serialNumber',
        'copies',
        'damaged',
        'price',
        'sourceFund',
        'remarks',
        'addedOn',
        'addedBy',
        'borrowed',
        'archive'
    ];

    protected $guarded = [];
    protected $dates = ['deleted_at'];

    use HasFactory;
}
