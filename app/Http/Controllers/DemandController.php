<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreDemand;
use App\Http\Requests\UpdateDemand;
use App\Models\Country;
use App\Models\Demand;
use App\Models\Office;
use App\Models\OverseasAgency;
use Illuminate\Http\Request;

class DemandController extends Controller
{
    public function index()
    {
        $overseas_agencies = OverseasAgency::all();
        $offices = Office::all();

        $demands = Demand::where('demand_status', 'new_demand')
            ->paginate(100);

        if (request('from_date') && request('to_date')) {
            $from_date = request('from_date');
            $to_date = request('to_date');
            $demands = Demand::whereBetween('demand_date', [$from_date, $to_date])
                ->paginate(100);
        }

        if (request('overseas_agencie_id')) {
            $overseas_agencie_id = request('overseas_agencie_id');
            $demands =  Demand::where('overseas_agencie_id', $overseas_agencie_id)
                ->paginate(100);
        }

        if (request('office_id')) {
            $office_id = request('office_id');
            $demands =  Demand::where('company_name', $office_id)
                ->paginate(100);
        }

        return view('demand.index', compact('demands', 'overseas_agencies', 'offices'));
    }

    public function create()
    {
        $countryies = Country::all();
        $offices = Office::all();
        return view('demand.create', compact('countryies', 'offices'));
    }

    public function store(StoreDemand $request)
    {
        $demand = new Demand();
        $demand->company_name = $request->office_id;
        $demand->countrie_id = $request->countrie_id;
        $demand->overseas_agencie_id = $request->overseas_agencie_id;
        $demand->male = $request->male ?? 0;
        $demand->female = $request->female ?? 0;
        $demand->demand_date = $request->demand_date;
        $demand->cabinet_date = $request->cabinet_date;
        $demand->demand_status = $request->demand_status;
        $demand->issue_date = $request->issue_date;
        $demand->issue_number = $request->issue_number;
        $demand->demand_number = $request->demand_number;
        $demand->save();
        return redirect()->back()->with('success', 'Process is completed.');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $demand = Demand::findOrFail($id);
        $offices = Office::all();
        $countryies = Country::all();
        $overseas_agencyies = OverseasAgency::all();
        return view('demand.edit', compact('demand', 'countryies', 'overseas_agencyies', 'offices'));
    }

    public function update(UpdateDemand $request, $id)
    {
        $demand = Demand::findOrFail($id);
        $demand->company_name = $request->office_id;
        $demand->countrie_id = $request->countrie_id;
        $demand->overseas_agencie_id = $request->overseas_agencie_id;
        $demand->male = $request->male ?? 0;
        $demand->female = $request->female ?? 0;
        $demand->demand_date = $request->demand_date;
        $demand->cabinet_date = $request->cabinet_date;
        $demand->demand_status = $request->demand_status;
        $demand->issue_date = $request->issue_date;
        $demand->issue_number = $request->issue_number;
        $demand->demand_number = $request->demand_number;
        $demand->update();
        return redirect()->back()->with('success', 'Process is completed.');
    }

    public function destroy($id)
    {
        $passport = Demand::findOrFail($id);
        $passport->delete();
        return redirect()->back()->with('success', 'Process is completed.');
    }

    public function demandAjax($id)
    {
        $demand = Demand::findOrFail($id);
        return json_encode($demand);
    }
}
