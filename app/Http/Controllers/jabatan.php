<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;

class jabatan extends Controller
{
    public function index()
    {
        return Voyager::view('voyager::user');
    }
}
