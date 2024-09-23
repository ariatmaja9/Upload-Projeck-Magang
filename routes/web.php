<?php

use App\Http\Controllers\MBController;
use App\Http\Controllers\M5Controller;
use App\Http\Controllers\M4Controller;
use App\Http\Controllers\CVController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\KategoriController;
use App\Models\Kategori;
use App\Models\Produk;
use App\Models\User;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;





// Route::view('/home', 'welcome');

Route::get('/awal', function () {
    $url = route('kontak');
    echo '<a href="'. $url . '">Klik Disini Untuk Menghubungi Saya</a>';
});

Route::get('/kontak', function () {
    echo 'Selamat Datang Di Halaman Kontak <br><br> Yudis = 081234892232 <br> Ega  = 087898210923';
})->name('kontak');


Route::get('/tampil/{nama}/{alamat?}', function ($nama, $alamat='') {
    echo'Hallo nama saya '. $nama . ' saya suka Geprek Mahira, yang berlokasi di '. $alamat;
});

Route::get('/tampil/{nama}', function ($nama) {
    echo'Hallo nama saya '. $nama . ' saya suka Geprek Mahira';
});


Route::get('/cv', function () {
    echo'Hallo Sayang';
});

/*
|--------------------------------------------------------------------------Kat
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::middleware('auth')->group(function () {
    Route::get('password', [UserController::class, 'password'])->name('user.password');
    Route::post('password', [UserController::class, 'passwordAction'])->name('user.password.action');

    Route::resource('produk', ProdukController::class);
    Route::resource('kategori', KategoriController::class);

    Route::get('logout', [UserController::class, 'logout'])->name('user.logout');
    Route::get('/', [PageController::class, 'home'])->name('home');
    Route::get('user', [UserController::class, 'index'])->name('user.index');
    Route::resource('user', UserController::class);
});


Route::get('login', [UserController::class, 'login'])->name('login');
Route::post('login', [UserController::class, 'loginAction'])->name('user.login.action');

Route::get('user', [UserController::class, 'index'])->name('user.index');

Route::get('kategori', [KategoriController::class, 'index'])->name('kategori.index');
Route::get('/users/export-excel', [UserController::class, 'exportExcel'])->name('user.exportExcel');
Route::get('/produks/export-excel', [ProdukController::class, 'exportExcel'])->name('produk.exportExcel');
Route::get('/kategoris/export-excel', [KategoriController::class, 'exportExcel'])->name('kategori.exportExcel');