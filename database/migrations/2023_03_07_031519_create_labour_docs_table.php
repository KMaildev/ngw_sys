<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLabourDocsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('labour_docs', function (Blueprint $table) {
            $table->increments('id');
            $table->text('file_name')->nullable();
            $table->text('file_path')->nullable();
            $table->text('upload_date')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('passport_id')->nullable();
            $table->integer('online_form_id')->nullable();
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
        Schema::dropIfExists('labour_docs');
    }
}
