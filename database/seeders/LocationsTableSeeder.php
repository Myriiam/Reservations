<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;
use App\Models\Location;
use App\Models\Locality;
use Illuminate\Support\Facades\DB;

class LocationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Empty the table first
        Schema::disableForeignKeyConstraints();
        Location::truncate();
        Schema::enableForeignKeyConstraints();

        //Define data
        $locations = [
            [
                'slug'=>null,
                'designation'=>'Espace Delvaux / La Vénerie',
                'address'=>'3 rue Gratès',
                'locality_postal_code'=>'1170',
                'locality_id' =>null,
                'website'=>'https://www.lavenerie.be',
                'phone'=>'+32 (0)2/663.85.50',
                'latitude' => 50.809,
                'longitude' => 4.40,
            ],
            [
                'slug'=>null,
                'designation'=>'Dexia Art Center',
                'address'=>'50 rue de l\'Ecuyer',
                'locality_postal_code'=>'1000',
                'locality_id' =>null,
                'website'=>null,
                'phone'=>null,
                'latitude' => 50.848,
                'longitude' => 4.353
            ],
            [
                'slug'=>null,
                'designation'=>'La Samaritaine',
                'address'=>'16 rue de la samaritaine',
                'locality_postal_code'=>'1000',
                'locality_id' =>null,
                'website'=>'http://www.lasamaritaine.be/',
                'phone'=>null,
                'latitude' => 50.840,
                'longitude' => 4.350
            ],
            [
                'slug'=>null,
                'designation'=>'Espace Magh',
                'address'=>'17 rue du Poinçon',
                'locality_postal_code'=>'1000',
                'locality_id' =>null,
                'website'=>'http://www.espacemagh.be',
                'phone'=>'+32 (0)2/274.05.10',
                'latitude' => 50.843,
                'longitude' => 4.346
            ],
        ];

        //Insert data in the table
        foreach ($locations as $data) {
            $locality = Locality::firstWhere('postal_code',$data['locality_postal_code']);
            DB::table('locations')->insert([
                'slug' => Str::slug($data['designation'],'-'),
                'designation' => $data['designation'],
                'address' => $data['address'],
                'locality_id' => $locality->id,	//Référence à la table localities
                'website' => $data['website'],
                'phone' => $data['phone'],
                'latitude' => $data['latitude'],
                'longitude' => $data['longitude'],
            ]);
        }
    }
}
