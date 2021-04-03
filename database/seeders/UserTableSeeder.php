<?php

namespace Database\Seeders;

use App\Models\User;
use DateTime;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;

class UserTableSeeder extends Seeder
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
                'login'=>'epfc',
                'lastname'=>'Moufassa',
                'firstname'=>'Simba',
                'langue'=>'français',
                'email'=>'epfc@epfc.com',
                'password'=>'epfcepfc',
                'email_verified_at' => null,
            ],
        ];

        //Insert data in the table
        foreach ($users as $data) {     
            DB::table('users')->insert([
                'login' => $data['login'],
                'lastname' => $data['lastname'],
                'firstname' => $data['firstname'],
                'langue' => $data['langue'],
                'email' => $data['email'],
                'password' => Hash::make($data['password']),
                'email_verified_at' => $data['email_verified_at'],
            ]);
        }
    }
}