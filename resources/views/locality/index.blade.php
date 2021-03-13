@extends('layouts.app')

@section('title', 'Localités')

@section('content')
<div class="container">
        <h1>Liste des {{ $resource }}</h1>

        <table>
            <thead>
                <tr>
                    <th>Loclity</th>
                </tr>
            </thead>
            <tbody>
            @foreach($localities as $locality)
                <tr>
                    <td><a href="{{ route('locality_show', $locality->id) }}">{{ $locality->postal_code }} {{ $locality->locality }}</a></td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection
