<?php

namespace Database\Seeders;

use App\Models\User;
use DateTime;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;

class FilamentUserTableSeeder extends Seeder
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
        User::truncate();
        Schema::enableForeignKeyConstraints();

        //Define data
        $users = [
            [
                'name'=>'epfc',
                'login'=>'epfc',
                'firstname'=>'Jean',
                'lastname'=>'Luc',
                'langue'=>'français',
                'email'=>'admin@epfc.com',
                'password'=>'epfcepfc',
            ],
        ];

        //Insert data in the table
        foreach ($users as $data) {     
            DB::table('filament_users')->insert([
                'login' => $data['login'],
                'name' => $data['name'],
                'firstname' => $data['firstname'],
                'lastname' => $data['lastname'],   
                'langue' => $data['langue'],
                'email' => $data['email'],
                'password' => Hash::make($data['password']),
            ]);
        }
    }
}