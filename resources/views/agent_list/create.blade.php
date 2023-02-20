@extends('layouts.main')
@section('content')
    <div class="row justify-content-center">
        <div class="col-xl-8">
            <div class="card mb-4">
                <h5 class="card-header">
                    Add New Agent
                    (Sub Agent)
                </h5>
                <hr>
                <div class="card-body">

                    <form action="{{ route('agent_list.store') }}" method="POST" autocomplete="off" id="create-form"
                        role="form" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Agent Code
                            </label>
                            <div class="col-md-9">
                                <input class="form-control @error('agent_code') is-invalid @enderror" type="text"
                                    name="agent_code" value="{{ old('agent_code') }}" />
                                @error('agent_code')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Name</label>
                            <div class="col-md-9">
                                <input class="form-control @error('name') is-invalid @enderror" type="text"
                                    name="name" value="{{ old('name') }}" />
                                @error('name')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                NRC
                            </label>
                            <div class="col-md-9">
                                <input class="form-control @error('nrc') is-invalid @enderror" type="text" name="nrc"
                                    value="{{ old('nrc') }}" />
                                @error('nrc')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Photo
                            </label>
                            <div class="col-md-9">
                                <input class="form-control @error('photo') is-invalid @enderror" type="file"
                                    name="photo" value="{{ old('photo') }}" />
                                @error('photo')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                NRC Front Photo
                            </label>
                            <div class="col-md-9">
                                <input class="form-control @error('nrc_front') is-invalid @enderror" type="file"
                                    name="nrc_front" value="{{ old('nrc_front') }}" />
                                @error('nrc_front')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                NRC Back Photo
                            </label>
                            <div class="col-md-9">
                                <input class="form-control @error('nrc_back') is-invalid @enderror" type="file"
                                    name="nrc_back" value="{{ old('nrc_back') }}" />
                                @error('nrc_back')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Household Members List
                            </label>
                            <div class="col-md-9">
                                <input class="form-control @error('members_list_files') is-invalid @enderror" type="file"
                                    name="members_list_files[]" value="{{ old('members_list_files') }}" multiple />
                                @error('members_list_files')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Phone</label>
                            <div class="col-md-9">
                                <input class="form-control @error('phone') is-invalid @enderror" type="text"
                                    name="phone" value="{{ old('phone') }}" />
                                @error('phone')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Email</label>
                            <div class="col-md-9">
                                <input class="form-control @error('email') is-invalid @enderror" type="email"
                                    name="email" value="{{ old('email') }}" />
                                @error('email')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Regions
                            </label>
                            <div class="col-md-9">
                                <select name="region_id" id="regionId" class="form-control select2">
                                    <option value="">
                                        --Please Select Region--
                                    </option>
                                    @foreach ($regions as $region)
                                        <option value="{{ $region->id }}">
                                            {{ $region->region ?? '' }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('region_id')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Township
                            </label>
                            <div class="col-md-9">
                                <select class="select2 form-control form-select" name="township_id">
                                </select>
                                @error('township_id')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Address</label>
                            <div class="col-md-9">
                                <textarea name="address" id="" cols="20" rows="5"
                                    class="form-control @error('address') is-invalid @enderror">{{ old('address') }}</textarea>
                                @error('address')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Remark
                            </label>
                            <div class="col-md-9">
                                <textarea name="remark" id="" cols="20" rows="5"
                                    class="form-control @error('remark') is-invalid @enderror">{{ old('remark') }}</textarea>
                                @error('remark')
                                    <div class="invalid-feedback"> {{ $message }} </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Join Date
                            </label>
                            <div class="col-md-9">
                                <input class="form-control @error('join_date') is-invalid @enderror date_picker"
                                    type="text" name="join_date" value="{{ old('join_date') }}" />
                                @error('join_date')
                                    <div class="invalid-feedback">
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
    {!! JsValidator::formRequest('App\Http\Requests\StoreAgentList', '#create-form') !!}
    <script>
        $('select[id="regionId"]').on("change", function() {
            var region_id = $(this).val();
            if (region_id) {
                $.ajax({
                    url: `/get_by_region_id/${region_id}`,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        console.log(data)
                        $('select[name="township_id"]').empty();
                        $.each(data, function(key, value) {
                            $('select[name="township_id"]').append(
                                '<option value="' + value.id + '">' +
                                value.township +
                                "</option>"
                            );
                        });
                    },
                });
            }
        });
    </script>
@endsection
