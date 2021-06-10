<?php

use TCG\Voyager\Facades\Voyager;
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
Route::get('/about', [App\Http\Controllers\HomeController::class, 'about'])->name('about');
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


Route::get('/show/select', [App\Http\Controllers\ShowController::class, 'selectPlace'])->name('show_select_place');
Route::post('/show/selected', [App\Http\Controllers\ShowController::class, 'selectShow'])->name('show_select');


Route::get('/show/fetch', [App\Http\Controllers\ShowController::class, 'fetch'])->name('show_fecth');
Route::post('/show/fill', [App\Http\Controllers\ShowController::class, 'fill'])->name('show_fill');
Route::get('/show/sort', [App\Http\Controllers\ShowController::class, 'sort'])->name('sort_show');
Route::get('/show/{slug}', [App\Http\Controllers\ShowController::class, 'show'])->name('show_show');
Route::post('/show/{slug}', [App\Http\Controllers\RepresentationController::class, 'booking'])->name('show_booking');
Route::post('/confirmation/{id}', [App\Http\Controllers\ShowController::class, 'bookingConfirm'])->name('show_booking_confirm');
Route::get('/confirmation/{id}', [App\Http\Controllers\ShowController::class, 'bookingConfirm'])->middleware(['auth'])->name('show_booking_confirm');
//Representation
Route::get('/representation', [App\Http\Controllers\RepresentationController::class, 'index'])->name('representation_index');
Route::get('/representation/{id}', [App\Http\Controllers\RepresentationController::class, 'show'])->name('representation_show');
//Payement
Route::get('/show/{id}/checkout', [App\Http\Controllers\PaymentController::class, 'handleGet'])->middleware(['auth'])->name('purchase');
Route::post('/payment/{id}', [App\Http\Controllers\PaymentController::class, 'handlePost'])->middleware(['auth'])->name('payment');
//Profil
Route::get('/profil', [App\Http\Controllers\UserController::class, 'profilDisplay'])->middleware(['auth'])->name('my_profil');
Route::get('/profil/{id}/edit', [App\Http\Controllers\UserController::class, 'edit'])->middleware(['auth'])->name('edit_profil');
Route::get('/profil/{id}/delete', [App\Http\Controllers\UserController::class, 'destroy'])->middleware(['auth'])->name('delete_profil');
//Back office
Route::group(['prefix' => 'admin'], function () { Voyager::routes(); });
//Flux RSS
Route::feeds();
//Csv
Route::get('/shows-csv', [App\Http\Controllers\CsvController::class, 'showsCsv'])->middleware(['auth'])->name('export_shows_csv');
Route::get('/users-csv', [App\Http\Controllers\CsvController::class, 'usersCsv'])->middleware(['auth'])->name('export_users_csv');
Route::get('/csv', [App\Http\Controllers\HomeController::class, 'csv'])->middleware(['auth'])->name('csv');
Route::post('/csv-import', [App\Http\Controllers\CsvController::class, 'importCsv'])->middleware(['auth'])->name('file-import');