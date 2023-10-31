<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;


class Kelassiswas extends Model
{
    public function scopeCurrentUser($query)
    {
        if(Auth::user()->role_id == 2){
        $query->where('id', Auth::user()->sekolah);
        }
    }
    protected $fillable = ['id_siswa', 'id_kelas', 'id_tahunakademik', 'sekolah', 'id_semester'];
    use HasFactory;
}
