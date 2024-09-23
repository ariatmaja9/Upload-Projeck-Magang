<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    use HasFactory;

    protected $table = 'tb_buku';
    protected $primaryKey = 'id_buku';

    protected $fillable = ['id_buku','judul','pengarang','id_kategori','tahun_terbit', 'gambar', 'dokumen'];

    public function getImage()
    {
        if ($this->gambar && file_exists(public_path('images/produk/' . $this->gambar)))
            return asset('images/produk/' . $this->gambar);
        else
            return asset('images/no_image.png');
    }

    public function getDokumen()
    {
    if ($this->dokumen && file_exists(public_path('dokumen/' . $this->dokumen))) {
        return asset('dokumen/' . $this->dokumen);
    } else {
        return null;
    }
    }

}

