<?php


use App\Http\Controllers\WomenCollectionController;
use App\Http\Controllers\MenCollectionController;
use App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\NewPasswordController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API MenCollection.php routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//public routes
Route::post("/register", [AuthController::class, "register"]);
Route::post("/login", [AuthController::class, "login"]);
Route::get('/women-collection', [WomenCollectionController::class, "index"]);
Route::get('/men-collection', [MenCollectionController::class, "index"]);
//Route::post("/men-collection", [MenCollectionController::class, "store"]);
//Route::post('/logout', [AuthController::class, 'logout']);


//protected routes
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::post('/logout', [AuthController::class, 'logout']);
});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

 Route::post('/forgot-password', [NewPasswordController::class, 'forgotPassword']);
 Route::post('/reset-password', [NewPasswordController::class, 'resetPassword']);


