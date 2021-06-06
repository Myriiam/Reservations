<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRepresentationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::create('representations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('location_id')->unsigned()->nullable();
            $table->foreignId('show_id')->unsigned();
            $table->datetime('when');
            $table->decimal('price',10,2);
            $table->integer('places');
            $table->boolean('bookable');
            $table->timestamps();

            $table->foreign('location_id')->references('id')->on('locations')
                    ->onDelete('restrict')->onUpdate('cascade');
            $table->foreign('show_id')->references('id')->on('shows')
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
        Schema::dropIfExists('representations');
    }
}
