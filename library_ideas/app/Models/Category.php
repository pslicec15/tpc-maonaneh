<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';

    protected $fillable = [
        'categoryCode',
        'categoryDesc',
        'archive'
    ];

    protected $dates = ['deleted_at'];

    use HasFactory;
}
