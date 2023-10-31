<?php

namespace App\Http\Controllers;

use App\Prestasi;
use Illuminate\Http\Request;
use TCG\Voyager\Http\Controllers\VoyagerBaseController as A;
use Illuminate\Support\Facades\DB;


class Rekam extends A
{
    public function read($id)
    {
        $prestasi = Prestasi::all($id);

        return view('voyager.bread.index', ['prestasi' => $prestasi], $id);
    }
}
