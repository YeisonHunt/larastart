<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class IdeasRequest extends FormRequest
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
             'ideatxt' => 'required',
             'bugorfeaturetxt' => 'required',
             
        ];
    }


    public function messages()
    {
        return [
            'ideatxt.required' => 'The idea field  is required!',
            'bugorfeaturetxt.required' => 'The bug or feature field is required!',
            
        ];
    }
}
