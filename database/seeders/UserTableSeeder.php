<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Simba',
            'email' => 'epfc@epfc.com',
            'password' => Hash::make('epfcepfc'),
        ]);
    }
}
