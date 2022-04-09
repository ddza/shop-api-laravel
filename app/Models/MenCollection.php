<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenCollection extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = "men_collection";
    protected $fillable = [
        "name",
        "img_url",
        "price"
    ];
}
