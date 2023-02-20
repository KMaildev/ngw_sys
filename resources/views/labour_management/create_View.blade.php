@extends('layouts.main')
@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card shadow-none border mb-3">
                <div class="card-header border-bottom">
                    <ul class="nav nav-tabs card-header-tabs" role="tablist">
                        <li class="nav-item">
                            <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab"
                                data-bs-target="#navs-within-card-active" aria-controls="navs-within-card-active"
                                aria-selected="true">
                                View Labour
                            </button>
                        </li>

                        <li class="nav-item">
                            <button type="button" class="nav-link" role="tab" data-bs-toggle="tab"
                                data-bs-target="#navs-within-card-link" aria-controls="navs-within-card-link"
                                aria-selected="false">
                                Import Labour
                            </button>
                        </li>

                    </ul>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="navs-within-card-active" role="tabpanel">
                        <div class="col-md-12">
                            <a href="{{ route('contract_labour_passport_export', $contract->id) }}" class="btn btn-success">
                                Export Excel
                            </a>
                        </div>
                        @include('components.passport_lists')
                    </div>

                    <div class="tab-pane fade" id="navs-within-card-link" role="tabpanel">
                        @include('labour_management.form.labour_import_form')
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StoreLabourManagement', '#create-form') !!}
@endsection
