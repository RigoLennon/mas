<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = ['name', 'description', 'price', 'short_descrip', 'cat_id', 'prod_rest_id', 'image_1'];
}
