<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MedicalTestController extends Controller
{
    public function index()
    {
        return view('medical_test.index');
    }

    public function create()
    {
        return view('medical_test.create');
    }
}
