<?php

namespace App\Http\Controllers;


use App\Models\Prestasis;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PrestasisController extends Controller
{
    public function getData($id)
    {
        $id_siswa = DB::siswas('families')->lists('surjab');
        return view('voyager.Prestasis.edit-add', ['nama' => $id_siswa]);
    }

    public function store(Request $request)
    {
        $prestasis = Prestasis::all();
        $this->authorize('browse_bread');
        $id_sekolah = $request->sekolah;
        $id_siswa = $request->siswa;
        $tahun_akademik = $request->tahun_akademik;
        $id_semester = $request->semester;
        $jenis = $request->jenis;
        $tingkat = $request->tingkat;
        $juara = $request->juara;
        $bidang_lomba = $request->bidang;

        DB::insert('insert into prestasis (id_sekolah, id_siswa, id_tahun_akademik, id_semester, jenis_lomba, tingkat, juara, bidang_lomba) values(?,?,?,?,?,?,?,?)', [$id_sekolah, $id_siswa, $tahun_akademik, $id_semester, $jenis, $tingkat, $juara, $bidang_lomba]);
        return redirect()->route('voyager.prestasis.index');
    }
}
