<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Produk;
use App\Models\User;
use Illuminate\Http\Request;
use PHPUnit\Framework\Constraint\Count;


class PageController extends Controller
{
    public function home()
    {
        $title = 'Home';

        $jumlah_user = User::count();
        $jumlah_produk = Produk::count();
        $jumlah_kategori = Kategori::count();

        return view('home', compact('title', 'jumlah_user', 'jumlah_kategori', 'jumlah_produk'));
    }
}
