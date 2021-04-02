<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MahasiswaController;
use App\Http\Controllers\DosenController;
use App\Http\Controllers\JadwalController;

Route::get('/', function () {
    return view('welcome');
});

Route::resource('mahasiswas', MahasiswaController::class);
Route::resource('dosens', DosenController::class);
Route::resource('jadwals', JadwalController::class);