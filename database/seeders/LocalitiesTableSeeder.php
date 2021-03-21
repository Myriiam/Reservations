<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Locality;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class LocalitiesTableSeeder extends Seeder
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
        Locality::truncate();
        Schema::enableForeignKeyConstraints();

        //Define data
        $localities = [
            ['postal_code'=>'1000','locality'=>'Bruxelles'],
            ['postal_code'=>'1170','locality'=>'Watermael-Boitsfort'],
        ];

        //Insert data in the table
        foreach ($localities as $data) {
            DB::table('localities')->insert([
                'postal_code' => $data['postal_code'],
                'locality' => $data['locality'],
            ]);
        }
    }
}
