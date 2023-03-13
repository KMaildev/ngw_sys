@extends('layouts.main')
@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Interview Labour
                        </h5>
                    </div>
                </div>
                <form action="">
                    <div id="events"></div>
                    <table id="interview_labour" class="display" style="width:100%">
                        <thead>
                            <tr>
                                <th class="text-center text-white" style="background-color: #296166;">
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
                                    Passport
                                </th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Phone
                                </th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Agent
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($interview_labours as $key => $interview_labour)
                                <tr class="tableCheck">
                                    <td>
                                        {{ $interview_labour->passport_table->id ?? '' }}
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

                    <button type="submit" class="btn btn-primary">
                        <span class="fa fa-arrow-right"></span>&nbsp;
                        Submit to Contract List
                    </button>
                </form>
            </div>
        </div>
    </div>
@endsection
@section('script')
    <script>
        $(document).ready(function() {
            var events = $('#events');
            var table = $('#interview_labour').DataTable({
                select: true
            });

            var data = table.rows({
                selected: true
            }).data();


            var newarray = [];
            table
                .on('select', function(e, dt, type, indexes) {
                    var rowData = table.rows(indexes).data().toArray();
                    for (var i = 0; i < rowData.length; i++) {
                        newarray.push(rowData[i][0]);
                    }
                    console.log(newarray);
                    events.prepend(JSON.stringify(rowData));
                })
                .on('deselect', function(e, dt, type, indexes) {
                    var rowData = table.rows(indexes).data().toArray();
                    events.prepend(JSON.stringify());
                });
        });
    </script>
@endsection
