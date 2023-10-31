<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;


class HomeVisite extends Model
{
    public function scopeCurrentUser($query)
    {
        if(Auth::user()->role_id == 2){
        $query->where('id', Auth::user()->sekolah);
        }
        elseif(Auth::user()->role_id == 3){
            $query->where('id', Auth::user()->sekolah);
        }
    }

    public function scopeActive($query)
{
    return $query->where('petugas.jabatan', 2);
}
}