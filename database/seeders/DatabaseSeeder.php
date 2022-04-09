<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
      $menCollection = [
            [
                "name" => 'Black & White Longsleeve',
                "img_url" => 'https://i.ibb.co/55z32tw/long-sleeve.png',
                "price"  => 25,
            ],
            [
                "name" => 'Pink T-shirt',
                "img_url" => 'https://i.ibb.co/RvwnBL8/pink-shirt.png',
                "price"  => 25,
            ],
            [
                "name" => 'Jean Long Sleeve',
                "img_url" => 'https://i.ibb.co/VpW4x5t/roll-up-jean-shirt.png',
                "price"  => 40,
            ],
            [
                "name" => 'Burgundy T-shirt',
                "img_url" => 'https://i.ibb.co/mh3VM1f/polka-dot-shirt.png',
                "price"  => 25,
            ],
            [
                "name" => 'Black Jean Shearling',
                "img_url" => 'https://i.ibb.co/XzcwL5s/black-shearling.png',
                "price"  => 125,
            ],
            [
                "name" => 'Blue Jean Jacket',
                "img_url" => 'https://i.ibb.co/mJS6vz0/blue-jean-jacket.png',
                "price"  => 90,
            ],
            [
                "name" => 'Brown Shearling',
                "img_url" => 'https://i.ibb.co/s96FpdP/brown-shearling.png',
                "price"  => 165,
            ],
            [
                "name" => 'Timberlands',
                "img_url" => 'https://i.ibb.co/Mhh6wBg/timberlands.png',
                "price"  => 200,
            ],
            [
                "name" => 'Air Jordan Limited',
                "img_url" => 'https://i.ibb.co/w4k6Ws9/nike-funky.png',
                "price"  => 190,
            ],
            [
                "name" => 'Nike Brown High Tops',
                "img_url" => 'https://i.ibb.co/fMTV342/nike-brown.png',
                "price"  => 160,
            ],
            [
                "name" => 'Nike Red High Tops',
                "img_url" => 'https://i.ibb.co/QcvzydB/nikes-red.png',
                "price"  => 160,
            ]
        ];
      $womenCollection = [
             [
                "name" => 'Floral Blouse',
                "img_url" => 'https://i.ibb.co/4W2DGKm/floral-blouse.png',
                "price" => 20,
            ],
            [
                "name" => 'Floral Dress',
                "img_url" => 'https://i.ibb.co/KV18Ysr/floral-skirt.png',
                "price" => 80,
            ],
            [
                "name" => 'Red Dots Dress',
                "img_url" => 'https://i.ibb.co/N3BN1bh/red-polka-dot-dress.png',
                "price" => 80,
            ],
            [
                "name" => 'Striped Sweater',
                "img_url" => 'https://i.ibb.co/KmSkMbH/striped-sweater.png',
                "price" => 45,
            ],
            [
                "name" => 'Yellow Track Suit',
                "img_url" => 'https://i.ibb.co/v1cvwNf/yellow-track-suit.png',
                "price" => 135,
            ],
            [
                "name" => 'White Blouse',
                "img_url" => 'https://i.ibb.co/qBcrsJg/white-vest.png',
                "price" => 20,
            ],
            [
                  "name" => 'Brown Brim',
                "img_url" => 'https://i.ibb.co/ZYW3VTp/brown-brim.png',
                "price" => 25,
            ],
            [
                "name" => 'Blue Beanie',
                "img_url" => 'https://i.ibb.co/ypkgK0X/blue-beanie.png',
                "price" => 18,
            ],
          [
                "name" => 'Green Beanie',
                "img_url" => 'https://i.ibb.co/YTjW3vF/green-beanie.png',
                "price" => 18
          ],
          [
                "name" => 'Red Beanie',
                "img_url" => 'https://i.ibb.co/bLB646Z/red-beanie.png',
                "price" => 18,
          ],
          [
                "name" => 'Blue Snapback',
                "img_url" => 'https://i.ibb.co/X2VJP2W/blue-snapback.png',
                "price" => 16,
          ],
          [
              "name" => 'Basic Tee',
              "img_url" => 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-01.jpg',
              "price" => 35,
          ],
          [
              "name" => 'Basic Tee',
              "img_url" => 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-02.jpg',
              "price" => 25,
          ],
          [
              "name" => 'Basic Tee',
              "img_url" => 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-03.jpg',
              "price" => 30,
          ],
          [
              "name" => 'Basic Tee',
              "img_url" => 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-04.jpg',
              "price" => 30,
          ]

      ];

        DB::table("women_collection")->insert($womenCollection);
    }
}
