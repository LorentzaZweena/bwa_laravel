<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class JobCandidate extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable = [
        'resume',
        'message',
        'is_hired',
        'candidate_id',
        'company_job_id'
    ];
}
