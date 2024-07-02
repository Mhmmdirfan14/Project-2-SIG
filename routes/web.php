<?php

use App\Http\Controllers\BackendController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\MapsController;
use App\Http\Controllers\SekolahController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('frontend/index');
});

//frontend
Route::get('/maps', [MapsController::class, 'maps'])->name('maps');
Route::get('/sekolah', [SekolahController::class, 'index'])->name('sekolah');


Route::get('/login', [LoginController::class, 'login'])->name('login');
Route::post('/login', [LoginController::class, 'postlogin'])->name('postlogin');


Route::get('/backend', [BackendController::class, 'index'])->name('backend');
Route::get('/data_sekolah', [SekolahController::class, 'data_sekolah'])->name('data_sekolah');