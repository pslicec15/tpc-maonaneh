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
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->integer('studentNo');
            $table->string('firstName');
            $table->string('middleName');
            $table->string('lastName');
            $table->unsignedBigInteger('courseID');
            $table->unsignedBigInteger('yearLevelID');
            $table->integer('contactNo');
            $table->string('address');
            $table->string('photo', 255)->nullable();
            $table->timestamps();

            $table->foreign('courseID')->references('id')->on('courses');
            $table->foreign('yearLevelID')->references('id')->on('year_levels');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
};
