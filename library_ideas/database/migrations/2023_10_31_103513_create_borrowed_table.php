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
        Schema::create('borrowed', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('bookID');
            $table->unsignedBigInteger('studentID');
            $table->text('notes')->nullable();
            $table->date('dateBorrowed');
            $table->date('dateReturned')->nullable();
            $table->integer('delayedDay')->nullable();
            $table->decimal('penalty', 10, 2)->nullable();
            $table->unsignedBigInteger('issuedBy');
            $table->unsignedBigInteger('returnedTo');
            $table->string('status', 255);
            $table->timestamps();

            $table->foreign('bookID')->references('id')->on('books');
            $table->foreign('studentID')->references('id')->on('students');
            $table->foreign('issuedBy')->references('id')->on('users');
            $table->foreign('returnedTo')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('borrowed');
    }
};
