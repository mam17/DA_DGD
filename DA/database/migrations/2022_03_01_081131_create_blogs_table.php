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
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->string('title',255)->nullable()->comment("Tiêu đề");
            $table->string('intro',255)->nullable()->comment("Mở đầu");
            $table->text('content')->nullable()->comment("Nội dung");
            $table->dateTime("created_date")->nullable()->comment("Ngày đăng");
            $table->text('image')->nullable();
            $table->string('slug')->nullable();
            $table->string('author',255)->nullable()->comment("Tác giả");
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
        Schema::dropIfExists('blogs');
    }
};
