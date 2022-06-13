<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    use HasFactory;
    public $timestamps = false;

    public static function findByCode($code) {
        return self::where('code', $code)->first();
    }

    public function discount($total) {

        if($this->type == 'fixed') {
            return $this->value;
        } elseif ($this->type == "percent"){
            return ($this->percentOff / 100) * $total;
        } else {
            return 0;
        }
       
    }
    
}
