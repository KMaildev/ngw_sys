<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateSending extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'demand_id' => 'required',
            'contract_id' => 'required',
            'sending_date' => 'required',
            'sending_male' => 'numeric',
            'sending_female' => 'numeric',
        ];
    }
}
