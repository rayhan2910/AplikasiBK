<?php

namespace App\Http\Controllers;

use App\Models\Kelas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as A;

class KelasController extends A
{
    public function store(Request $request)
    {
        $kelas = Kelas::all();
            $this->authorize('browse_bread');
            $data = $request->sekolah;
            $kelas = $request->kelas;
            $status =  $request->status;
            $level =  $request->level;
            DB::insert('insert into kelas (kelas, status, sekolah, level) values(?,?,?,?)',[$kelas,  $status, $data, $level]);
            return redirect()->route('voyager.kelas.index');
        }
    
}
