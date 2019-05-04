<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInnovationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('innovations', function (Blueprint $table) {
            
            $table->bigIncrements('id');
            $table->string('title',100);
            $table->string('body',2000)->nullable();
            $table->string('img',1000)->nullable();
            $table->string('category',100);
            $table->string('type',100)->nullable();
            $table->string('language',100)->nullable();
            $table->string('tags',500)->nullable();
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
        Schema::dropIfExists('innovations');
    }
}
