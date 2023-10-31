<?php

namespace App\Http\Controllers;

use App\Models\Tahunakademiks;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as A;

class TahunakademiksController extends A
{
    public function store(Request $request)
    {
        $tahun_akademik = Tahunakademiks::all();
        $this->authorize('browse_bread');
        $data = $request->sekolah;
        $tahun_akademik = $request->tahun_akademik;
        $status =  $request->status;
        DB::insert('insert into tahunakademiks (tahun_akademik, status, sekolah) values(?,?,?)', [$tahun_akademik,  $status, $data]);
        return redirect()->route('voyager.tahunakademiks.index');
    }
}
