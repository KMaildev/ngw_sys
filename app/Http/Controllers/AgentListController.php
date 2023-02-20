<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreAgentList;
use App\Http\Requests\UpdateAgentList;
use App\Models\AgentList;
use App\Models\MembersLists;
use App\Models\Region;
use Illuminate\Http\Request;

class AgentListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $search = request('search');
        $agent_lists = AgentList::query()
            ->where('name', 'LIKE', "%{$search}%")
            ->orWhere('agent_code', 'LIKE', "%{$search}%")
            ->orWhere('email', 'LIKE', "%{$search}%")
            ->orWhere('phone', 'LIKE', "%{$search}%")
            ->orWhere('address', 'LIKE', "%{$search}%")
            ->get();
        return view('agent_list.index', compact('agent_lists'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $regions = Region::all();
        return view('agent_list.create', compact('regions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAgentList $request)
    {

        if ($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $photo_path = $photo->store('public/agents');
        }

        if ($request->hasFile('nrc_front')) {
            $nrc_front = $request->file('nrc_front');
            $nrc_front_path = $nrc_front->store('public/agents');
        }

        if ($request->hasFile('nrc_back')) {
            $nrc_back = $request->file('nrc_back');
            $nrc_back_path = $nrc_back->store('public/agents');
        }


        $oversea = new AgentList();
        $oversea->name = $request->name;
        $oversea->phone = $request->phone;
        $oversea->email = $request->email;
        $oversea->address = $request->address;
        $oversea->agent_code = $request->agent_code;
        $oversea->nrc = $request->nrc;
        $oversea->region_id = $request->region_id;
        $oversea->township_id = $request->township_id;
        $oversea->remark = $request->remark;
        $oversea->add_user_id = auth()->user()->id ?? 0;
        $oversea->join_date = $request->join_date;

        $oversea->photo = $photo_path ?? '';
        $oversea->nrc_front = $nrc_front_path ?? '';
        $oversea->nrc_back = $nrc_back_path ?? '';
        $oversea->save();
        $agent_list_id = $oversea->id;

        if ($request->hasFile('members_list_files')) {
            foreach ($request->file('members_list_files') as $key => $file) {
                $path = $file->store('public/members_lists');
                $original_name = $file->getClientOriginalName();

                $insert[$key]['file_path'] = $path;
                $insert[$key]['file_name'] = $original_name;
                $insert[$key]['agent_list_id'] = $agent_list_id;
                $insert[$key]['user_id'] = auth()->user()->id ?? 0;
                $insert[$key]['created_at'] =  date('Y-m-d H:i:s');
                $insert[$key]['updated_at'] =  date('Y-m-d H:i:s');
            }
            MembersLists::insert($insert);
        }

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
        $agent_list = AgentList::findOrFail($id);
        return view('agent_list.edit', compact('agent_list'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAgentList $request, $id)
    {
        $oversea = AgentList::findOrFail($id);
        $oversea->name = $request->name;
        $oversea->phone = $request->phone;
        $oversea->email = $request->email;
        $oversea->address = $request->address;
        $oversea->update();
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
        $oversea = AgentList::findOrFail($id);
        $oversea->delete();
        return redirect()->back()->with('success', 'Process is completed.');
    }
}
