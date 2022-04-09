<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MenCollectionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $menCollection = [
            [
                name => 'Black & White Longsleeve',
                imageUrl => 'https://i.ibb.co/55z32tw/long-sleeve.png',
                price => 25,
            ],
            [
                name => 'Pink T-shirt',
                imageUrl => 'https://i.ibb.co/RvwnBL8/pink-shirt.png',
                price => 25,
            ],
            [
                name => 'Jean Long Sleeve',
                imageUrl => 'https://i.ibb.co/VpW4x5t/roll-up-jean-shirt.png',
                price => 40,
            ],
            [
                name => 'Burgundy T-shirt',
                imageUrl => 'https://i.ibb.co/mh3VM1f/polka-dot-shirt.png',
                price => 25,
            ],
            [
                name => 'Black Jean Shearling',
                imageUrl => 'https://i.ibb.co/XzcwL5s/black-shearling.png',
                price => 125,
            ],
            [
                name => 'Blue Jean Jacket',
                imageUrl => 'https://i.ibb.co/mJS6vz0/blue-jean-jacket.png',
                price => 90,
            ],
            [
                name => 'Brown Shearling',
                imageUrl => 'https://i.ibb.co/s96FpdP/brown-shearling.png',
                price => 165,
            ],
            [
                name => 'Timberlands',
                imageUrl => 'https://i.ibb.co/Mhh6wBg/timberlands.png',
                price => 200,
            ],
            [
                name => 'Air Jordan Limited',
                imageUrl => 'https://i.ibb.co/w4k6Ws9/nike-funky.png',
                price => 190,
            ],
            [
                name => 'Nike Brown High Tops',
                imageUrl => 'https://i.ibb.co/fMTV342/nike-brown.png',
                price => 160,
            ],
            [
                name => 'Nike Red High Tops',
                imageUrl => 'https://i.ibb.co/QcvzydB/nikes-red.png',
                price => 160,
            ]
        ];
    }
}
