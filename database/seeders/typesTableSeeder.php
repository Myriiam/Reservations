<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Type;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class typesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Schema::disableForeignKeyConstraints();
        Type::truncate();
        Schema::enableForeignKeyConstraints();

         //Define data
        $types = [
             ['type'=>'auteur'],
             ['type'=>'scénographe'],
             ['type'=>'comédien'],

        ];
         //Insert data in the table
         foreach ($types as $data) {
             DB::table('types')->insert([
                 'type' => $data['type'],
             ]);
         }
    }
}
