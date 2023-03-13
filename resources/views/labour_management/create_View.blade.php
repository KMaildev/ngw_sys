@extends('layouts.main')
@section('content')
    <div class="row">
        <div class="col-md-6 col-sm-12 col-lg-6">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Interview Labour
                        </h5>
                    </div>
                </div>

                <div class="table-responsive text-nowrap rowheaders table-scroll" role="region" aria-labelledby="HeadersCol"
                    tabindex="0">
                    <table class="table table-bordered main-table">
                        <thead class="tbbg">
                            <tr>
                                <th class="text-center text-white" style="width: 1%; background-color: #296166;">
                                    #
                                </th>

                                <th class="text-center text-white" style="background-color: #296166;">
                                    Name
                                </th>

                                <th class="text-center text-white" style="background-color: #296166;">
                                    M/F
                                </th>

                                <th class="text-center text-white" style="background-color: #296166;">
                                    NRC
                                </th>

                                <th class="text-center text-white" style="background-color: #296166;">
                                    Passport No
                                </th>

                                <th class="text-center text-white" style="background-color: #296166;">
                                    Phone
                                </th>

                                <th class="text-center text-white" style="background-color: #296166;">
                                    Agent
                                </th>

                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($interview_labours as $key => $interview_labour)
                                <tr>
                                    <td class="text-center">
                                        {{ $key + 1 }}
                                    </td>

                                    <td class="text-center">
                                        {{ $interview_labour->passport_table->name ?? '' }}
                                    </td>

                                    <td class="text-center">
                                        {{ ucfirst($interview_labour->passport_table->gender ?? '') }}
                                    </td>

                                    <td class="text-center">
                                        {{ $interview_labour->passport_table->nrc ?? '' }}
                                    </td>

                                    <td class="text-center">
                                        {{ $interview_labour->passport_table->passport ?? '' }}
                                    </td>

                                    <td class="text-center">
                                        {{ $interview_labour->passport_table->phone ?? '' }}
                                    </td>

                                    <td class="text-center">
                                        {{ strtoupper($interview_labour->passport_table->agent_list_table->name ?? $interview_labour->passport_table->local_agent_name) }}
                                    </td>

                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreLabourManagement', '#create-form') !!}
@endsection
