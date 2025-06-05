<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    // Nama tabel di database
    protected $table = 'movies';

    // Field yang boleh diisi mass assignment
    protected $fillable = [
        'judul',
        'genre',
        'jadwal',
        'harga'
    ];

}