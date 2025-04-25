<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TourSuggestionRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'tour_country'     => 'required|string|max:255',
            'tour_time'        => 'required|string|max:100',
            'difficulty'       => 'required|string|max:50',
            'bike_type'        => 'required|string|max:100',
            'route_name'       => 'required|string|max:255',
            'tour_description' => 'required|string',
        ];
    }

    public function messages()
    {
        return [
            'tour_country.required'     => 'Kérlek add meg a megyét!',
            'tour_time.required'        => 'Kérlek add meg a túra idejét!',
            'difficulty.required'       => 'Kérlek add meg a nehézségi szintet!',
            'bike_type.required'        => 'Kérlek add meg a bicikli típusát!',
            'route_name.required'       => 'Kérlek add meg az útvonal nevét!',
            'tour_description.required' => 'Kérlek írj egy rövid leírást a túráról!',
        ];
    }
}