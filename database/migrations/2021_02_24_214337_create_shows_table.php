<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShowsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shows', function (Blueprint $table) {
            $table->id();
            $table->string('slug',60)->unique();
            $table->string('title',255);
            $table->text('description');
            $table->string('poster_url',255);
            $table->bigInteger('location_id')->unsigned()->nullable();
            $table->boolean('bookable');
            $table->timestamps();
        });

        Schema::table('shows', function (Blueprint $table) {
            //Contraintes de clés étrangères
              $table->foreign('location_id')->references('id')->on('locations')
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
        Schema::dropIfExists('shows');
    }
}
