<?php

namespace App\Http\Controllers;

use App\Models\Interview;
use Illuminate\Http\Request;

class InterviewLabourController extends Controller
{
    public function addInterviewWorker($id)
    {
        $interview = Interview::findOrFail($id);
        return view('interview_worker.add_interview_worker', compact('interview'));
    }
}
