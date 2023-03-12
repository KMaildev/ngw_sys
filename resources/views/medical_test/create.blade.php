@extends('layouts.main')
@section('content')
    <div class="row">
        <div class="col-md-6 col-sm-6 col-lg-6">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Medical Test
                        </h5>
                    </div>
                </div>

                <div class="table-responsive text-nowrap" style="padding: 20px;">
                    <table id="datatable" class="table table-bordered table-sm yajra-datatable">
                        @include('medical_test.table_shared.thead_tfooter')
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        $(function() {
            var table = $('#datatable').DataTable({
                orderCellsTop: true,
                processing: true,
                serverSide: true,
                ordering: false,
                fixedHeader: true,
                scrollY: 500,
                scrollX: true,
                language: {
                    "processing": "<img src='/loading.gif' style='width:50px'/><p class='my-3'>... Loading ...</p>",
                },
                ajax: {
                    url: "{{ route('get_passport_datatable') }}",
                },
                lengthMenu: [20, 50, 100, 250, 350, 450, 550, 650, 750, 850, 950, 1100, 1200, 1300, 1500,
                    1700,
                    1900, 2000
                ],
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex',
                    },
                    {
                        data: 'agent_name',
                        name: 'agent_name',
                    },
                    {
                        data: 'name',
                        name: 'name',
                    },
                    {
                        data: 'passport',
                        name: 'passport',
                    },
                    {
                        data: 'nrc',
                        name: 'nrc',
                    },
                    {
                        data: 'action',
                        name: 'action',
                    },
                ],
            });

            $(document).ready(function() {
                $('#datatable thead th').each(function() {
                    var title = $('#datatable thead th').eq($(this).index()).text();
                });
                var table = $('#datatable').DataTable();

                table.columns().eq(0).each(function(colIdx) {
                    $('input', table.column(colIdx).footer()).on('change', function() {
                        table
                            .column(colIdx)
                            .search(this.value)
                            .draw();
                    });
                });
            });


            $('body').on('click', '#addToMedicalTest', function(e) {
                e.preventDefault();
                passportId = $(this).data('id');
                var url = '{{ url('add_medical_test_temp_list') }}';
                $.ajax({
                    url: url,
                    data: {
                        id: passportId,
                    },
                    method: 'GET',
                    success: function(result) {
                        console.log(result);
                    }
                });
            });
        });
    </script>
@endsection
