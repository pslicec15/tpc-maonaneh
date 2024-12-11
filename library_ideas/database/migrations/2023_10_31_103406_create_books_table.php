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
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('bookTitle');
            $table->string('bookNum')->nullable();
            $table->text('edition')->nullable();
            $table->text('pages')->nullable();
            $table->string('author')->nullable();
            $table->string('publisher')->nullable();
            $table->string('yearPublished')->nullable();
            $table->string('ISBN')->nullable();
            $table->unsignedBigInteger('categoryId');
            $table->string('volume')->nullable();
            $table->string('serialNumber')->nullable();
            $table->string('copies')->nullable();
            $table->decimal('price', 10, 2);
            $table->string('sourceFund')->nullable();
            $table->string('remarks')->nullable();
            $table->date('addedOn');
            $table->unsignedBigInteger('addedBy');
            $table->boolean('borrowed')->default(false);
            $table->timestamps();

            $table->foreign('addedBy')->references('id')->on('users');
            $table->foreign('categoryId')->references('id')->on('category');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('books');
    }
};
