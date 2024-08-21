<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CompanyJob extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable = [
        'name',
        'slug',
        'type',
        'location',
        'skill_level',
        'salary',
        'thumbnail',
        'about',
        'is_open',
        'company_id',
        'category_id'
    ];
}
