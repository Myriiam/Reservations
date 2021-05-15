<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpgradeFilamentUsersTable extends Migration
{
    public function down()
    {
        Schema::dropIfExists('filament_users');
    }

    public function up()
    {
        Schema::dropIfExists('filament_users');
        Schema::create('filament_users', function (Blueprint $table) {
            $table->id();
            $table->string('avatar')->nullable();
            $table->string('email')->unique();
            $table->boolean('is_admin')->default(0);
            $table->string('name')->nullable();
            $table->string('password');
            $table->json('roles')->nullable();
            $table->string('firstname')->nullable();
            $table->string('lastname')->nullable();
            $table->string('langue')->default('FR');
            $table->string('login')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });
    }
}
