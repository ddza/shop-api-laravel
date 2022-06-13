<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Coupon;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CouponsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Coupon::create([
            "code" => "ABC", 
            "type" =>  "fixed", 
            "value" => 30, 
            "created_at" => Carbon::now(),
            'expired_at' => Carbon::parse('2023-01-01'),
        ]);

        Coupon::create([
            "code" => "ABC123", 
            "type" =>  "percent", 
            "percentOff" => 50, 
            "created_at" => Carbon::now(),
            'expired_at' => Carbon::parse('2023-01-01'),
        ]);
           
    }
}
