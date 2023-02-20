@extends('layouts.main')
@section('content')
    <div class="row justify-content-center py-3">
        <div class="col-xl-8">

            <h6 class="text-muted">
                Add New Passport
            </h6>
            <div class="nav-align-top mb-4">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab"
                            data-bs-target="#navs-top-home" aria-controls="navs-top-home" aria-selected="true">
                            Single entry
                        </button>
                    </li>
                    <li class="nav-item">
                        <button type="button" class="nav-link" role="tab" data-bs-toggle="tab"
                            data-bs-target="#navs-top-profile" aria-controls="navs-top-profile" aria-selected="false">
                            Import Excel
                        </button>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="navs-top-home" role="tabpanel">
                        <h5 class="card-header mb-4">
                            Add New Passport (Single entry)
                        </h5>
                        <form action="{{ route('passport.store') }}" method="POST" autocomplete="off" id="create-form"
                            role="form" enctype="multipart/form-data">
                            @csrf

                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">Name</label>
                                <div class="col-md-9">
                                    <input class="form-control @error('name') is-invalid @enderror" type="text"
                                        name="name" value="{{ old('name') }}" placeholder="Name" />
                                    @error('name')
                                        <div class="invalid-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Gender
                                </label>
                                <div class="col-md-9">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="male" value="male" name="gender"
                                            class="form-check-input" checked>
                                        <label class="form-check-label" for="male">Male</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="female" value="female" name="gender"
                                            class="form-check-input">
                                        <label class="form-check-label" for="female">Female</label>
                                    </div>
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    NRC
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="nrc" placeholder="NRC">
                                    @error('nrc')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Date of Birth
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="date_of_birth"
                                        placeholder="Date of Birth">
                                    @error('date_of_birth')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>



                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Father Name
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="father_name" placeholder="Father Name">
                                    @error('father_name')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Mother Name
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="mother_name" placeholder="Mother Name">
                                    @error('mother_name')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Passport
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="passport" placeholder="Passport">
                                    @error('passport')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Date of Passport
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="passport_date"
                                        placeholder="Date of Passport">
                                    @error('passport_date')
                                        <div class="form-control-feedback"> {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Place of Passport
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="place_of_passport"
                                        placeholder="Place of Passport">
                                    @error('place_of_passport')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>



                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Nation / Religion
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="nation_religion"
                                        placeholder="Nation / Religion">
                                    @error('nation_religion')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Address
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="address" placeholder="Address">
                                    @error('address')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Region / State
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="region_state"
                                        placeholder="Region & State">
                                    @error('region_state')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Phone
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="phone" placeholder="Phone">
                                    @error('phone')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <hr>
                            <p style="font-weight: bold;">
                                If you have an OWIC, you can add it.
                            </p>
                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    OWIC
                                </label>
                                <div class="col-md-9">
                                    <input type="text"
                                        class="form-control @error('owic') form-control-danger @enderror" name="owic"
                                        value="{{ old('owic') }}" placeholder="OWIC">
                                    @error('owic')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    OWIC Date
                                </label>
                                <div class="col-md-9">
                                    <input type="text"
                                        class="form-control @error('owic_date') form-control-danger @enderror"
                                        name="owic_date" value="{{ old('owic_date') }}" placeholder="OWIC Date">
                                    @error('owic_date')
                                        <div class="form-control-feedback"> {{ $message }} </div>
                                    @enderror
                                </div>
                            </div>



                            <hr>
                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Go Date
                                    (သွားရောက်လိုသည့်နေ့ရက်)
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="go_date">
                                    @error('go_date')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Reason
                                    (သွားရောက်လိုသည့်အကြောင်းအရာ)
                                </label>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="go_reason">
                                    @error('go_reason')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Date
                                </label>
                                <div class="col-md-9">
                                    <input type="date" class="form-control" name="entry_date"
                                        value="{{ date('Y-m-d') }}">
                                    @error('entry_date')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>

                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Agents
                                </label>
                                <div class="col-md-9">
                                    <select class="form-control form-select" name="agent_list_id">
                                        <option value="">--Select Agent--</option>
                                        @foreach ($agent_lists as $agent_list)
                                            <option value="{{ $agent_list->id }}">
                                                {{ $agent_list->name ?? '' }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('agent_list_id')
                                        <div class="form-control-feedback" style="color: red;">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-text-input" class="col-md-3 col-form-label">
                                    Remark
                                </label>
                                <div class="col-md-9">
                                    <textarea class="form-control" name="remark" id="" cols="30" rows="5"></textarea>
                                    @error('remark')
                                        <div class="form-control-feedback">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>


                            <div class="mb-3 row">
                                <label for="html5-search-input" class="col-md-3 col-form-label"></label>
                                <div class="col-md-9">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="navs-top-profile" role="tabpanel">
                        <h5 class="card-header mb-4">
                            Add New Passport (Import Excel)
                        </h5>

                        <form action="{{ route('passport_import') }}" method="post" autocomplete="off"
                            enctype="multipart/form-data" id="create-import-form">
                            @csrf
                            <div class="input-group">
                                <span class="input-group-text" style="background-color: #4D84EC; color: white;">
                                    Import Excel File
                                </span>
                                <input type="file" class="form-control" name="file">
                            </div>
                            <br>
                            <a href="{{ asset('data/passport_import.xlsx') }}" class="btn btn-success">
                                Download Simple Import File
                            </a>
                            <input type="submit" class="create-new btn btn-primary" value="Upload">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StorePassport', '#create-form') !!}
    {!! JsValidator::formRequest('App\Http\Requests\PassportImportFile', '#create-import-form') !!}
@endsection
