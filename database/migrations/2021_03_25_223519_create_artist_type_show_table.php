<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateArtistTypeShowTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('artist_type_show', function (Blueprint $table) {
            $table->id();
            $table->foreignId('artist_type_id');
            $table->foreignId('show_id');
            
            $table->foreign('artist_type_id')->references('id')->on('artist_type')
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
        Schema::dropIfExists('artist_type_show');
    }
}
