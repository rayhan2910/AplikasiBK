<?php

namespace App\Imports;

use App\Models\Kelassiswas;
use App\Models\Siswas;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithUpsertColumns;
use Maatwebsite\Excel\Row;
use Maatwebsite\Excel\Concerns\OnEachRow;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class SiswaImport implements ToCollection, WithHeadingRow
{
    public function collection(Collection $rows)
    {
        foreach ($rows as $row) 
        {
            if($row['jk'] == 'L'){
                $row['jk'] = '2';
            }else{
                $row['jk'] = '1';
            }
            if($row['status'] == 'Aktif'){
                $row['status'] = '1';
            }else{
                $row['status'] = '2';
            }
            Siswas::updateOrCreate([
                'nisn' => $row['nisn'],
            ],[
                'nama' => $row['nama'],
                'jk' => $row['jk'],
                'sekolah' => Auth::user()->sekolah,
                'status' => $row['status'],
                'no_telp' => $row['nowa']
            ]);

            Kelassiswas::updateOrCreate([
                'id_siswa' => $row['nisn'],
            ],[
                'id_kelas' => $row['kelas'],
                'id_tahunakademik' => Auth::user()->tahunakademik,
                'id_semester' => Auth::user()->semester,
                'sekolah' => Auth::user()->sekolah
            ]);
        }
    }
}
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    // public function model(array $row)
    // {
        
    //     return new Siswas([
    //         'nama' => $row[0],
    //         'jk' => $row[1],
    //         'nisn' => $row[2],
    //         'sekolah' => $row[3],
    //         'status' => $row[4]
    //     ]);
        
    // }
    // public function upsertColumns()
    // {
    //     return ['name', 'nisn'];
    // }

  