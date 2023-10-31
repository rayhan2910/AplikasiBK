<?php

namespace App\Http\Controllers;

use TCG\Voyager\Http\Controllers\VoyagerBaseController as A;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\SiswaImport;
use App\Models\Siswas;
use Illuminate\Support\Facades\Auth;

class VoyagerSiswasController extends A
{
	
    public function import(Request $request)
	{
		Excel::import(new SiswaImport, request()->file('file'));
        return back()->with('success', 'All good!');
	}
	
}
