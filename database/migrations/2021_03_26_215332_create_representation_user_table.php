<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRepresentationUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('representation_user', function (Blueprint $table) {
            $table->id();
          
            $table->bigInteger('user_id')->unsigned();
            $table->bigInteger('representation_id')->unsigned();
            
            $table->foreign('user_id')->references('id')->on('users')
                    ->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('representation_id')->references('id')->on('representations')
                    ->onDelete('restrict')->onUpdate('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('representation_user');
    }
}
