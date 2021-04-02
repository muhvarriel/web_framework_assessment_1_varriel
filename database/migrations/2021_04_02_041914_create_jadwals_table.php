<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJadwalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jadwals', function (Blueprint $table) {
            $table->id();
            $table->foreignId('mahasiswa_id')->constrained('mahasiswas')->onUpdate('cascade')->onDelete('cascade');
            $table->foreignId('dosen_id')->constrained('dosens')->onUpdate('cascade')->onDelete('cascade');
            $table->string('judul');
            $table->string('deskripsi');
            $table->dateTime('awal');
            $table->dateTime('akhir'); 
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
        Schema::dropIfExists('jadwals');
    }
}
