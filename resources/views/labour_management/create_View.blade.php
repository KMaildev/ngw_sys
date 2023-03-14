@extends('layouts.main')
@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">
                <div class="card-body">

                    <div
                        class="d-flex justify-content-between flex-xl-row flex-md-column flex-sm-row flex-column p-sm-3 p-0">
                        <div class="col-md-8 col-lg-8">
                            <h4>
                                {{ $interview->interview_title ?? '' }}
                            </h4>
                            <div class="mb-2">
                                <span class="me-1">
                                    Overseas Company Name:
                                </span>
                                <span class="fw-semibold">
                                    {{ $contract->demands_table->overseas_agencies_table->company_name ?? '' }}
                                </span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Contract Date:</span>
                                <span class="fw-semibold">
                                    {{ $contract->contract_date ?? '' }}
                                </span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Contract Male:</span>
                                <span class="fw-semibold">
                                    {{ number_format($contract->contract_male) }}
                                </span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Contract Female:</span>
                                <span class="fw-semibold">
                                    {{ number_format($contract->contract_female) }}
                                </span>
                            </div>
                            <div class="mb-2">
                                <span class="me-1">Contract Total:</span>
                                <span class="fw-semibold">
                                    {{ number_format($contract->contract_male + $contract->contract_female) }}
                                </span>
                            </div>
                        </div>
                    </div>

                </div>

                <form action="" style="padding: 20px;">
                    <table id="interview_labour" class="display" style="width:100%">
                        <thead>
                            <tr>
                                <th class="text-center text-white" style="background-color: #296166;">
                                </th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Interview
                                </th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Interview Date
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
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Contract Status
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($interview_labours as $key => $interview_labour)
                                <tr class="tableCheck">
                                    <td>
                                        <input type="hidden" name="passport_id[]"
                                            value="{{ $interview_labour->passport_table->id ?? '' }}">
                                        {{ $key + 1 }}
                                    </td>

                                    <td class="text-center">
                                        {{ $interview_labour->interviews_table->interview_title ?? '' }}
                                    </td>

                                    <td class="text-center">
                                        {{ $interview_labour->interviews_table->interview_date ?? '' }}
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
                                        {{ $interview_labour->passport_table->agent_list_table->name ?? $interview_labour->passport_table->local_agent_name }}
                                    </td>

                                    <td class="text-center">
                                        @if ($interview_labour->labour_management_table->id ?? '')
                                            <span class="badge bg-primary">
                                                Contract
                                            </span>
                                        @else
                                            <span class="badge bg-danger">
                                                Pending
                                            </span>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    <button id="submitToContract" type="submit" class="btn btn-primary">
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
            // var events = $('#events');
            // var table = $('#interview_labour').DataTable({
            //     select: true
            // });
        });

        $(document).ready(function() {
            var table = $('#interview_labour').DataTable();

            $('#interview_labour tbody').on('click', 'tr', function() {
                $(this).toggleClass('selected');
            });

            $('#submitToContract').click(function(e) {
                e.preventDefault();
                var selectedRowInputs = $('.selected input');
                var contract_id = '{{ $contract->id }}';
                var passports = selectedRowInputs.serialize();
                if (passports === '' || passports == null || contract_id === '' || contract_id == null) {
                    return false;
                }
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: `/sbumit_to_contract?contract_id=${contract_id}`,
                    data: passports,
                    success: function(data) {
                        toastr.remove();
                        toastr.success("Your processing has been completed.");
                    },
                });
            });
        });
    </script>
@endsection
