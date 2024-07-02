<?php

namespace App\Http\Controllers;

use App\Models\Sekolah;
use Illuminate\Http\Request;

class SekolahController extends Controller
{

public function index()
{
    // mengambil semua data $tasks
    $sekolahs = Sekolah::all();
   //  dd($tasks);

    // menampilkan data $tasks
    return view('frontend.sekolah', [
        'sekolahs' => $sekolahs
    ]);
}

public function data_sekolah() {
    return view('backend.sekolah');
}

}