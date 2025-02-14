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
        Schema::create('attendance', function (Blueprint $table) {
            $table->id();
            $table->date('date');
            $table->unsignedBigInteger('studentId');
            $table->unsignedBigInteger('instructorId');
            $table->datetime('timedIn');
            $table->datetime('timedOut')->nullable();
            $table->timestamps();

            $table->foreign('studentId')->references('id')->on('students');
            $table->foreign('instructorId')->references('id')->on('instructors');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('attendance');
    }
};
