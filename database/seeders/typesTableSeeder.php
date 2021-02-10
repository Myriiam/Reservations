<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Type;
use Illuminate\Support\Facades\DB;

class typesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         //Empty the table first
         Type::truncate();
        
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
