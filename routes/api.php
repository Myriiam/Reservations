<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ShowApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// TEST response GET
Route::get('/', function(){
    return response()->json(['success' => 'GET method']);
});
// TEST reponse POST
Route::post('/', function(){
    return response()->json(['success' => 'POST method']);
});
// TEST Recup data by POST
Route::post('/data', function(Request $request){
    return $request->all();
});
// TEST validation return message error
Route::post('/test', [App\Http\Controllers\Api\ShowApiController::class, 'test']);


// All shows
Route::get('/shows', [App\Http\Controllers\Api\ShowApiController::class, 'getAllShows'])->name('all_api_show');