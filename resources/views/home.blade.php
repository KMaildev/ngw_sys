@extends('layouts.main')
@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <div class="row">


            <div class="col-12 py-5">
                <div class="card">
                    <div class="card-body py-5">
                        <div style="height: 300px; width: 100%;">
                            <h6>{{ $passports_report->options['chart_title'] }}</h6>
                            {!! $passports_report->renderHtml() !!}
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script type="text/javascript">
        {!! $passports_report->renderChartJsLibrary() !!}
        {!! $passports_report->renderJs() !!}
    </script>
@endsection
