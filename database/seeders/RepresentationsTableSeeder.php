<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Location;
use App\Models\Show;
use App\Models\Representation;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class RepresentationsTableSeeder extends Seeder
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
        Representation::truncate();
        Schema::enableForeignKeyConstraints();

        //Define data
        $representations = [
            [
                'location_slug'=>'espace-delvaux-la-venerie',
                'show_slug'=>'ayiti',
                'when'=>'2012-10-12 13:30',
            ],
            [
                'location_slug'=>'dexia-art-center',
                'show_slug'=>'ayiti',
                'when'=>'2012-10-12 20:30',
            ],
            [
                'location_slug'=>null,
                'show_slug'=>'cible-mouvante',
                'when'=>'2012-10-02 20:30',
            ],
            [
                'location_slug'=>null,
                'show_slug'=>'ceci-nest-pas-un-chanteur-belge',
                'when'=>'2012-10-16 20:30',
            ],
        ];

        //Insert data in the table
        foreach ($representations as $data) {
            $location = Location::firstWhere('slug',$data['location_slug']);
            $show = Show::firstWhere('slug',$data['show_slug']);

            DB::table('representations')->insert([
                'location_id' => $location->id ?? null,
                'show_id' => $show->id,
                'when' => $data['when'],
            ]);
        }
    }
}
