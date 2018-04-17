<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDepartementWelcomeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('departement_welcome', function (Blueprint $table) {
            $table->increments('id');

            $table->integer('welcome_id')->unsigned()->nullable();
            $table->foreign('welcome_id')->references('id')
                  ->on('welcomes')->onDelete('cascade');  

            $table->integer('departement_id')->unsigned()->nullable();
            $table->foreign('departement_id')->references('id')
                  ->on('departements')->onDelete('cascade');  
                        
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('departement_welcome');
    }
}
