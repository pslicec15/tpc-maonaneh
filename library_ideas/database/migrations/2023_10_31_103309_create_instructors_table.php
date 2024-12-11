<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('instructors', function (Blueprint $table) {
            $table->id();
            $table->integer('instructorNo');
            $table->string('firstName');
            $table->string('middleName');
            $table->string('lastName');
            $table->unsignedBigInteger('departmentID');
            $table->string('position');
            $table->integer('contactNo');
            $table->string('photo');
            $table->timestamps();

            $table->foreign('departmentID')->references('id')->on('departments');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('instructors');
    }
};
