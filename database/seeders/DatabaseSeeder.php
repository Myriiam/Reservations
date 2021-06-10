<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([

            SqlFileSeeder::class,
            //ArtistsTableSeeder::class,
            //TypesTableSeeder::class,
            //LocalitiesTableSeeder::class,
            //LocationsTableSeeder::class,
            //ShowsTableSeeder::class,
            //RepresentationsTableSeeder::class,
            //UserTableSeeder::class,
            //ArtistTypeTableSeeder::class,
            //ArtistTypeShowTableSeeder::class,
            //RepresentationUserTableSeeder::class,
            //VoyagerDatabaseSeeder::class,

            //SqlFileSeeder::class,  //You need to have a clean DB with name 'reservations' and then let's seed
        ]);

    }
}
