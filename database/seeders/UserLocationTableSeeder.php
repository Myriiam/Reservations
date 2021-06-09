<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Location;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class UserLocationTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Schema::disableForeignKeyConstraints();
        DB::table('user_location')->truncate();
        Schema::enableForeignKeyConstraints();

        $userLocation = [
            ['user_id'=>'',
            'location_id'=>'',
            ],
        ];

        //Insert data in the table
        foreach ($userLocation as $data) {   

            $user = User::firstWhere('user_id',$data['user_id']);
            $location = Location::firstWhere('location_id',$data['location_id']);

            DB::table('user_location')->insert([
                'user_id' => $user->id,
                'location_id' => $location->id,
            ]);
        }
    }
}
