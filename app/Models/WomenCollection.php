<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WomenCollection extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = "women_collection";
    protected $fillable = [
        "name",
        "img_url",
        "price"
    ];
}
