<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SuperAdmin extends Model
{
    protected $table = 'restaurants';
    protected $fillable = ['name', 'address'];
}
