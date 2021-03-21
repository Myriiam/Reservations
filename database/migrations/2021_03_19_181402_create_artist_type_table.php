<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateArtistTypeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('artist_type', function (Blueprint $table) {
            $table->id();
            $table->foreignId('artist_id');
            $table->foreignId('type_id');

            $table->foreign('artist_id')->references('id')->on('artists')
                ->onDelete('RESTRICT')->onCascade('CASCADE');
            $table->foreign('type_id')->references('id')->on('types')
                ->onDelete('RESTRICT')->onCascade('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('artist_type');
    }
}
