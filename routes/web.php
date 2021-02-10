<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//Artist
Route::get('/artist', [App\Http\Controllers\ArtistController::class, 'index'])->name('artist');       //Qu'est-ce qu'on met dans le name ?
Route::get('/artist/{id}', [App\Http\Controllers\ArtistController::class, 'show'])->name('show');
//Type
Route::get('/type', [App\Http\Controllers\TypeController::class, 'index'])->name('type');
Route::get('/type/{id}', [App\Http\Controllers\TypeController::class, 'show'])->name('show');
//Role
Route::get('/role', [App\Http\Controllers\RoleController::class, 'index'])->name('role');
Route::get('/role/{id}', [App\Http\Controllers\RoleController::class, 'show'])->name('show');

