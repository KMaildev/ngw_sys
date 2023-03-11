<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreHospital;
use App\Http\Requests\UpdateHospital;
use App\Models\Hospital;
use Illuminate\Http\Request;

class HospitalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $search = request('search');
        $countryies = Hospital::query()
            ->where('name', 'LIKE', "%{$search}%")
            ->get();
        return view('hospital.index', compact('countryies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('hospital.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreHospital $request)
    {
        $h = new Hospital();
        $h->name = $request->name;
        $h->location = $request->location;
        $h->phone = $request->phone;
        $h->save();
        return redirect()->back()->with('success', 'Process is completed.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $country = Hospital::findOrFail($id);
        return view('hospital.edit', compact('country'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateHospital $request, $id)
    {
        $h = Hospital::findOrFail($id);
        $h->name = $request->name;
        $h->location = $request->location;
        $h->phone = $request->phone;
        $h->update();
        return redirect()->back()->with('success', 'Process is completed.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $country = Hospital::findOrFail($id);
        $country->delete();
        return redirect()->back()->with('success', 'Process is completed.');
    }
}
