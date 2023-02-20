<table class="table">
    <thead>
        <tr>
            <th class="text-center text-white" style="width: 1vh; text-align: center;">
                #
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Name
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                M/F
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                NRC
            </th>


            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Date of Birth
            </th>


            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Father Name
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Mother Name
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Passport No
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Date of Passport
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Place of Passport
            </th>


            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Nation / Religion
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Address
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Region / State
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Overseas Company
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Contract Date
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                OWIC
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Sending Date
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Phone No
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Agent Name
            </th>

            <th class="text-center text-white" style="width: 3vh; text-align: center;">
                Remark
            </th>
        </tr>
    </thead>
    <tbody>
        @foreach ($passports as $key => $passport)
            <tr>
                <td class="text-center">
                    {{ $key + 1 }}
                </td>

                <td class="text-center">
                    {{ $passport->name ?? '' }}
                </td>

                <td class="text-center">
                    {{ ucfirst($passport->gender ?? '') }}
                </td>

                <td class="text-center">
                    {{ $passport->nrc ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->date_of_birth ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->father_name ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->mother_name ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->passport ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->passport_date ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->place_of_passport ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->nation_religion ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->address ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->region_state ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->labour_management_table->overseas_agency_table->company_name ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->labour_management_table->contract_table->contract_date ?? '' }}
                </td>



                <td class="text-center">
                    {{ $passport->owic ?? '' }}
                </td>

                <td class="text-center">
                    {{ $passport->labour_management_table->sending_table->sending_date ?? '' }}
                </td>


                <td class="text-center">
                    {{ $passport->phone ?? '' }}
                </td>

                <td class="text-center">
                    {{ strtoupper($passport->agent_list_table->name ?? $passport->local_agent_name) }}
                </td>

                <td class="text-center">
                    {{ $passport->remark ?? '' }}
                </td>

            </tr>
        @endforeach
    </tbody>
</table>
