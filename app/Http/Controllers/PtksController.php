<?php

namespace App\Http\Controllers;

use App\Models\Ptks;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as A;


class PtksController extends Controller
{


    public function store(Request $request)
    {
        $ptks = Ptks::all();
        $this->authorize('browse_bread');
        $nama_ptk = $request->nama_ptk;
        $nip = $request->nip;
        $jabatan = $request->jabatan;
        $data = $request->sekolah;
        $status =  $request->status;
        $jk = $request->jk;
        DB::insert('insert into kelas (kelas, status, sekolah, level) values(?,?,?,?,?,?)', [$ptks,  $status, $data, $nama_ptk, $nip, $jk, $jabatan]);
        return redirect()->route('voyager.kelas.index');
    }
}
