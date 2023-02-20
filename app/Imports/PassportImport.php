<?php

namespace App\Imports;

use App\Models\Passport;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class PassportImport implements ToCollection, WithHeadingRow
{

    public function collection(Collection $rows)
    {
        Validator::make($rows->toArray(), [
            '*.name' => 'required',
        ])->validate();

        foreach ($rows as $row) {
            Passport::create([
                'name'  => strval($row['name']),
                'father_name'  => strval($row['father_name']),
                'mother_name'  => strval($row['mother_name']),
                'nrc'  => strval($row['nrc']),
                'date_of_birth'  => strval($row['date_of_birth']),
                'passport'  => strval($row['passport_no']),
                'passport_date'  => strval($row['date_of_passport']),
                'local_agent_name'  => strval($row['agent_name']),
                'phone'  => strval($row['phone_no']),
                'address'  => strval($row['address']),
                'gender'  => strval($row['gender']),
                'remark'  => strval($row['remark']),
                'owic'  => strval($row['owic']),
                'owic_date'  => strval($row['owic_date']),
                'place_of_passport'  => strval($row['place_of_passport']),
                'go_date'  => strval($row['go_date']),
                'go_reason'  => strval($row['reason']),
                'nation_religion'  => strval($row['nation_religion']),
                'region_state'  => strval($row['region_state']),

                'created_at'  => now(),
                'updated_at'  => now(),
                'join_date'  => date("Y-m-d"),
                'entry_date'  => date("Y-m-d"),

                'agent_list_id'  => null,
                'reject_status'  => null,
                'reject_date'  => null,
                'reject_reason'  => null,
            ]);
        }
    }

    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    // public function model(array $row)
    // {
    //     Validator::make($row->toArray(), [
    //         '*.name' => 'required',
    //     ])->validate();

    //     return new Passport([
    //         'name'  => strval($row['name']),
    //         'father_name'  => strval($row['father_name']),
    //         'mother_name'  => strval($row['mother_name']),
    //         'nrc'  => strval($row['nrc']),
    //         'date_of_birth'  => strval($row['date_of_birth']),
    //         'passport'  => strval($row['passport_no']),
    //         'passport_date'  => strval($row['date_of_passport']),
    //         'local_agent_name'  => strval($row['agent_name']),
    //         'phone'  => strval($row['phone_no']),
    //         'address'  => strval($row['address']),
    //         'gender'  => strval($row['gender']),
    //         'remark'  => strval($row['remark']),
    //         'owic'  => strval($row['owic']),
    //         'owic_date'  => strval($row['owic_date']),
    //         'place_of_passport'  => strval($row['place_of_passport']),
    //         'go_date'  => strval($row['go_date']),
    //         'go_reason'  => strval($row['reason']),
    //         'nation_religion'  => strval($row['nation_religion']),
    //         'region_state'  => strval($row['region_state']),

    //         'created_at'  => now(),
    //         'updated_at'  => now(),
    //         'join_date'  => date("Y-m-d"),
    //         'entry_date'  => date("Y-m-d"),

    //         'agent_list_id'  => null,
    //         'reject_status'  => null,
    //         'reject_date'  => null,
    //         'reject_reason'  => null,
    //     ]);
    // }
}
