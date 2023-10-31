<?php

use App\Http\Controllers\Rekam;
use App\Http\Controllers\Kelas;
use App\Http\Controllers\KelasController;
use App\Http\Controllers\VoyagerKelassiswasController;
use Illuminate\Support\Facades\Route;
use App\http\Controllers\VoyagerkenaikanController;
use App\Http\Controllers\VoyagerSiswasController;
use App\Models\Kelassiswas;
use GuzzleHttp\Psr7\Request;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBreadController;

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
    return view('voyager::login');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
    
});

Route::group([
    'as'     => 'kenaikan.',
    'prefix' => 'kenaikan',
], function () {
    Route::get('/', [VoyagerkenaikanController::class, 'index']);
});

Route::post('/admin/siswas', [VoyagerSiswasController::class, 'import']);
Route::get('admin/kelassiswas/search', [VoyagerKelassiswasController::class,'selectSearch']);
Route::get('/admin/rekams/read', [Rekam::class, 'read']);
Route::post('/admin/kelas/store', [KelasController::class, 'store']);






