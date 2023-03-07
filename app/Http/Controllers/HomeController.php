<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use LaravelDaily\LaravelCharts\Classes\LaravelChart;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $chart_options = [
            'chart_title' => 'Customers by months',
            'report_type' => 'group_by_date',
            'model' => 'App\Models\Passport',
            'group_by_field' => 'created_at',
            'group_by_period' => 'day',
            'chart_type' => 'bar',
            'filter_field' => 'created_at',
            // 'filter_days' => 30, 
        ];

        $passports_report = new LaravelChart($chart_options);

        return view('home', compact('passports_report'));
    }
}
