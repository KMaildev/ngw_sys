<?php

namespace App\Http\Controllers;

use App\Models\Passport;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;


class PassportDatatableController extends Controller
{
    public function index(Request $request)
    {
        $data = Passport::with('agent_list_table')
            ->where('reject_status', NULL)
            ->orderBy('id', 'DESC');

        return DataTables::of($data)
            ->addIndexColumn()

            ->editColumn('agent_name', function ($each) {
                return  $each->agent_list_table ? $each->agent_list_table->name : '-';
            })

            ->filterColumn('agent_name', function ($query, $keyword) {
                $query->whereHas('agent_list_table', function ($q1) use ($keyword) {
                    $q1->where('name', 'like', '%' . $keyword . '%');
                });
            })

            ->editColumn('name', function ($each) {
                $html = '';
                $html .= $each->name;
                return $html;
            })

            ->editColumn('passport', function ($each) {
                $html = '';
                $html .= $each->passport;
                return $html;
            })

            ->editColumn('nrc', function ($each) {
                $html = '';
                $html .= $each->nrc;
                return $html;
            })

            ->addColumn('action', function ($each) {
                $actions =
                    '
                        <button class="btn btn-info btn-xs" type="button" 
                            id="addToMedicalTest"
                            data-id="' . $each->id . '"
                        >
                            Choose
                        </button>
                    ';
                return $actions;
            })

            ->addIndexColumn()
            ->rawColumns(['agent_name', 'name', 'passport', 'nrc', 'action'])
            ->make(true);
    }
}
