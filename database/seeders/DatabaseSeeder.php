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
        // \App\Models\User::factory(10)->create();
        $this->call([ArtistsTableSeeder::class, TypesTableSeeder::class, RolesTableSeeder::class, LocalitiesTableSeeder::class,
                     LocationsTableSeeder::class, ShowsTableSeeder::class, RepresentationsTableSeeder::class, UserTableSeeder::class,
                     ArtistTypeTableSeeder::class,

    
        ]);

    }
}
