@extends('layouts.main')
@section('content')
    <div class="row justify-content-center">
        <div class="col-xl-8">
            <div class="card mb-4">
                <h5 class="card-header">
                    Edit Passport
                </h5>
                <div class="card-body">

                    <form action="{{ route('passport.update', $passport->id) }}" method="POST" autocomplete="off"
                        id="create-form" role="form" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <input type="hidden" name="reject_status" value="">

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Name</label>
                            <div class="col-md-9">
                                <input class="form-control @error('name') is-invalid @enderror" type="text"
                                    name="name" value="{{ $passport->name ?? '' }}" placeholder="Name" />
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
                                        class="form-check-input" @if ($passport->gender == 'male') checked @endif>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="female" value="female" name="gender"
                                        class="form-check-input" @if ($passport->gender == 'female') checked @endif>
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                NRC
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="nrc" value="{{ $passport->nrc ?? '' }}"
                                    placeholder="NRC">
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
                                    value="{{ $passport->date_of_birth ?? '' }}" placeholder="Date of Birth">
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
                                <input type="text" class="form-control" name="father_name"
                                    value="{{ $passport->father_name ?? '' }}" placeholder="Father Name">
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
                                <input type="text" class="form-control" name="mother_name" placeholder="Mother Name"
                                    value="{{ $passport->mother_name ?? '' }}">
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
                                <input type="text" class="form-control" name="passport"
                                    value="{{ $passport->passport ?? '' }}" placeholder="Passport">
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
                                    value="{{ $passport->passport_date ?? '' }}" placeholder="Date of Passport">
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
                                    value="{{ $passport->place_of_passport ?? '' }}" placeholder="Place of Passport">
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
                                    placeholder="Nation / Religion" value="{{ $passport->nation_religion ?? '' }}">
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
                                <input type="text" class="form-control" name="address" placeholder="Address"
                                    value="{{ $passport->address ?? '' }}">
                                @error('address')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Region & State
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="region_state"
                                    placeholder="Region & State" value="{{ $passport->region_state ?? '' }}">
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
                                <input type="text" class="form-control" name="phone"
                                    value="{{ $passport->phone ?? '' }}" placeholder="Phone">
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
                                <input type="text" class="form-control @error('owic') form-control-danger @enderror"
                                    name="owic" value="{{ $passport->owic ?? '' }}" placeholder="OWIC">
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
                                    name="owic_date" value="{{ $passport->owic_date ?? '' }}" placeholder="OWIC Date">
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
                                <input type="text" class="form-control" name="go_date"
                                    value="{{ $passport->go_date ?? '' }}">
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
                                <input type="text" class="form-control" name="go_reason"
                                    value="{{ $passport->go_reason ?? '' }}">
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
                                    value="{{ $passport->entry_date ?? '' }}">
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
                                        <option value="{{ $agent_list->id }}"
                                            @if ($agent_list->id == $passport->agent_list_id) selected @endif>
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
                                <textarea class="form-control" name="remark" id="" cols="30" rows="5">{{ $passport->remark ?? '' }}</textarea>
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
            </div>
        </div>
    </div>
@endsection
@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StorePassport', '#create-form') !!}
@endsection
