<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Models\Role;

class RoleUserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Schema::disableForeignKeyConstraints();
        DB::table('role_user')->truncate();
        Schema::enableForeignKeyConstraints();

        $roleUsers = [
            ['users'=>'Simba',
            'role'=>'admin',
            ],
        ];

        //Insert data in the table
        foreach ($roleUsers as $data) {   

            $user = User::firstWhere('firstname',$data['users']);
            $role = Role::firstWhere('role',$data['role']);

            DB::table('role_user')->insert([
                'user_id' => $user->id,
                'role_id' => $role->id,
            ]);
        }

    }
}
