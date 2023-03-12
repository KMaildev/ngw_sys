<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreMedicalTest;
use App\Models\Hospital;
use App\Models\MedicalTest;
use App\Models\MedicalTestTempList;
use App\Models\Passport;
use Illuminate\Http\Request;

class MedicalTestController extends Controller
{
    public function index(Request $request)
    {
        $passports = MedicalTest::paginate(100);

        if (request('search')) {
            $passports = MedicalTest::whereHas('passport_table', function ($query) {
                $query->where('name', request('search'));
                $query->orWhere('nrc', request('search'));
                $query->orWhere('passport', request('search'));
            })->get();
        }
        return view('medical_test.index', compact('passports'));
    }

    public function create()
    {
        $hospitals = Hospital::all();
        return view('medical_test.create', compact('hospitals'));
    }

    public function store(StoreMedicalTest $request)
    {
        $session_id = session()->getId();
        $medical_test_temp_lists = MedicalTestTempList::where('session_id', $session_id)->get();

        $count = MedicalTestTempList::where('session_id', $session_id)->count();
        if ($count == 0) {
            return redirect()->back()->with('error', 'Please choose worker');
        } else {
            foreach ($medical_test_temp_lists as $key => $medical_test_temp_list) {
                MedicalTest::create([
                    'medical_test_date' => $request->medical_test_date,
                    'hospital_id' => $request->hospital_id,
                    'passport_id' => $medical_test_temp_list->passport_id,
                    'user_id' => auth()->user()->id,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }

            MedicalTestTempList::where('session_id', $session_id)->delete();
        }
        return redirect()->back()->with('success', 'Your processing has been completed.');
    }

    public function destroy($id)
    {
        $oversea = MedicalTest::findOrFail($id);
        $oversea->delete();
        return redirect()->back()->with('success', 'Process is completed.');
    }


    public function updatePassFailed(Request $request)
    {
        $id = $request->id;
        $value = $request->value;
        $temp = MedicalTest::findOrFail($id);
        $temp->failed_or_pass = $value;
        $temp->update();
        return json_encode(array(
            "statusCode" => 200,
        ));
    }


    public function addMedicalTestTempList(Request $request)
    {
        $this->validate($request, [
            'id' => 'required',
        ]);

        $passport_id = $request->id;
        $passport = Passport::findOrFail($passport_id);

        MedicalTestTempList::updateOrCreate(
            [
                'passport_id' => $passport->id,
            ],
            [
                'agent_name' => $passport->agent_list_table->name ?? '',
                'name' => $passport->name ?? '',
                'passport' => $passport->passport ?? '',
                'nrc' => $passport->nrc ?? '',
                'passport_id' => $passport->id,
                'session_id' => session()->getId(),
                'user_id' => auth()->user()->id,
            ],
        );

        return json_encode(array(
            "statusCode" => 200
        ));
    }

    public function getMedicalTestTempList(Request $request)
    {
        $session_id = session()->getId();
        $medical_test_temp_lists = MedicalTestTempList::where('session_id', $session_id)->get();
        echo json_encode($medical_test_temp_lists);
    }

    public function removeMedicalTestTempList($id)
    {
        $temp = MedicalTestTempList::findOrFail($id);
        $temp->delete();
        return json_encode(array(
            "statusCode" => 200,
        ));
    }
}
