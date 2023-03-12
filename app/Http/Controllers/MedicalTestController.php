<?php

namespace App\Http\Controllers;

use App\Models\MedicalTestTempList;
use App\Models\Passport;
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


    public function addMedicalTestTempList(Request $request)
    {
        $passport_id = $request->id;
        $passport = Passport::findOrFail($passport_id);

        $medical_temp = new MedicalTestTempList();
        $medical_temp->agent_name = $passport->agent_list_table->name ?? '';
        $medical_temp->name = $passport->name ?? '';
        $medical_temp->passport = $passport->passport ?? '';
        $medical_temp->nrc = $passport->nrc ?? '';
        $medical_temp->passport_id = $passport->id;
        $medical_temp->session_id = session()->getId();
        $medical_temp->user_id = auth()->user()->id;
        $medical_temp->save();
        return json_encode(array(
            "statusCode" => 200
        ));
    }
}
