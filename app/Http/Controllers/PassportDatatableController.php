<?php

namespace App\Http\Controllers;

use App\Models\Passport;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;


class PassportDatatableController extends Controller
{
    public function index(Request $request)
    {
        $data = Passport::where('reject_status', NULL)
            ->orderBy('id', 'DESC');

        return DataTables::of($data)
            ->addIndexColumn()

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

            ->addIndexColumn()
            ->rawColumns(['name', 'passport', 'nrc'])
            ->make(true);
    }
}
