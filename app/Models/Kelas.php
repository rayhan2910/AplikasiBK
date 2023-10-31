<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Session;

class Kelas extends Model
{
    public function scopeCurrentUser($query)
    {
        if(Auth::user()->role_id == 2){
        $query->where('sekolah', Auth::user()->sekolah);
        }
    }

    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $fillable = ['sekolah'];

    use HasFactory;
}
