<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ScanController;


// Route::resource('products', ProductController::class);
Route::get('/products/cari', 'ProductController@cari');

// Route::resource('dashboard', DashboardController::class);
Route::resource('scan', DashboardController::class);


// Route::get('user',[SearchController::class, 'index']);
Route::get('/read', [SearchController::class, 'read']);
Route::get('/ajax', [SearchController::class, 'ajax']);

Route::resource('user', UserController::class);
// Route::resource('dashboard',DashboardController::class);
// Route::get('/search','DashboardController @search');

// use App\Http\Controllers\InventoryController;

// Route::resource('inventory', InventoryController::class);
Route::get('/list_item/{kategori_id}', 'ProductController@listItem');
Route::get('/generate-barcode', [ScanController::class, 'index']);
Route::get('/products/export/', [ProductController::class, 'export']);


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
Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    return view('welcome');
})->name('welcome');


// Route::get('/', function (){
//     return view('welcome');
// })->name('welcome');

Route::middleware(['auth:sanctum', 'admin'])
    ->group(function () {
        Route::get('/dashboard', function () {
            return view('dashboard');
        })->name('dashboard');

        Route::resource('products', ProductController::class);
        Route::resource('user', UserController::class);
    });
