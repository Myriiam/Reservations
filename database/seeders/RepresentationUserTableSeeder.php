<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\User;
use App\Models\Representation;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class RepresentationUserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Schema::disableForeignKeyConstraints();
        DB::table('representation_user')->truncate();
        Schema::enableForeignKeyConstraints();

        //Define data

        $representationUsers = [
            ['users_firstname'=>'Simba',
            'when'=>'2012-10-12 13:30',
            ],
        ];

          //Insert data in the table
          foreach ($representationUsers as $data) {   

            $user = User::firstWhere('firstname',$data['users_firstname']);
            $representation = Representation::firstWhere('when',$data['when']);

            DB::table('representation_user')->insert([
                'user_id' => $user->id,
                'representation_id' => $representation->id,
            ]);
        }


    }
}
