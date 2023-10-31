<?php

namespace App\Http\Controllers;

use App\Models\Semesters;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as A;

class SemestersController extends A
{
    public function store(Request $request)
    {
        $semester = Semesters::all();
        $this->authorize('browse_bread');
        $data = $request->sekolah;
        $semester = $request->semester;
        $status =  $request->status;
        DB::insert('insert into semesters (semester, status, sekolah) values(?,?,?)', [$semester,  $status, $data]);
        return redirect()->route('voyager.semesters.index');
    }
}
