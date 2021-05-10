<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//Artist
Route::get('/artist', [App\Http\Controllers\ArtistController::class, 'index'])->name('artist');       
Route::get('/artist/{id}', [App\Http\Controllers\ArtistController::class, 'show'])->name('artist_show');
//Type
Route::get('/type', [App\Http\Controllers\TypeController::class, 'index'])->name('type');
Route::get('/type/{id}', [App\Http\Controllers\TypeController::class, 'show'])->name('type_show');
//Role
Route::get('/role', [App\Http\Controllers\RoleController::class, 'index'])->name('role');
Route::get('/role/{id}', [App\Http\Controllers\RoleController::class, 'show'])->name('role_show');
//Locality
Route::get('/locality', [App\Http\Controllers\LocalityController::class, 'index'])->name('locality_index');
Route::get('/locality/{id}', [App\Http\Controllers\LocalityController::class, 'show'])->name('locality_show');
//Location
Route::get('/location', [App\Http\Controllers\LocationController::class, 'index'])->name('location');
Route::get('/location/{id}', [App\Http\Controllers\LocationController::class, 'show'])->name('location_show');
//Show
Route::get('/show', [App\Http\Controllers\ShowController::class, 'index'])->name('show');
Route::get('/show/sort', [App\Http\Controllers\ShowController::class, 'sort'])->name('sort_show');
Route::get('/show/{slug}', [App\Http\Controllers\ShowController::class, 'show'])->name('show_show');
Route::post('/show/{slug}', [App\Http\Controllers\ShowController::class, 'booking'])->name('show_booking');
Route::post('/confirmation/{id}', [App\Http\Controllers\ShowController::class, 'bookingConfirm'])->name('show_booking_confirm');
Route::get('/confirmation/{id}', [App\Http\Controllers\ShowController::class, 'bookingConfirm'])->middleware(['auth'])->name('show_booking_confirm');
//Representation
Route::get('/representation', [App\Http\Controllers\RepresentationController::class, 'index'])->name('representation_index');
Route::get('/representation/{id}', [App\Http\Controllers\RepresentationController::class, 'show'])->name('representation_show');
//Payment
Route::get('/show/{id}/checkout', [App\Http\Controllers\PaymentController::class, 'handleGet'])->middleware(['auth'])->name('purchase');
Route::post('/payment/{id}', [App\Http\Controllers\PaymentController::class, 'handlePost'])->middleware(['auth'])->name('payment');
//Profil
Route::get('/profil', [App\Http\Controllers\UserController::class, 'profilDisplay'])->middleware(['auth'])->name('my_profil');