<?php

namespace App\Http\Controllers;

use App\Models\Jabatans;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as A;

class JabatansContrroller extends A
{
    public function store(Request $request)
    {
        $jabatan = Jabatans::all();
        $this->authorize('browse_bread');
        $data = $request->sekolah;
        $jabatan = $request->jabatan;
        $status =  $request->status;
        DB::insert('insert into jabatans (jabatan, status, sekolah) values(?,?,?)', [$jabatan,  $status, $data]);
        return redirect()->route('voyager.jabatans.index');
    }
}
