<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;



class Jabatans extends Model
{
    public function scopeCurrentUser($query)
    {
        if(Auth::user()->role_id == 2){
        $query->where('sekolah', Auth::user()->sekolah);
        }
    }
    protected $table = 'jabatans';
    protected $primarykey = 'id_jabatan';
    use HasFactory;
    use SoftDeletes;
    protected $dates = ['deleted_at'];

    
}
