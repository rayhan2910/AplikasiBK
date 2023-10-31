<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;



class Sekolahs extends Model
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
    use HasFactory;
    use SoftDeletes;
    protected $dates = ['deleted_at'];
}
