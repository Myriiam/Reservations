@extends('layouts.app')

@section('title', 'Liste des localités')

@section('content')
    <h1>Liste des {{ $resource }}</h1>

    <table>
        <thead>
            <tr>
                <th>Code postal</th>
                <th>Localité</th>
            </tr>
        </thead>
        <tbody>
        @foreach($localities as $locality)
            <tr>
                <td>{{ $locality->postal_code }}</td>
                <td><a href="{{ route('locality_show', $locality->id) }}">{{ $locality->locality }}</a></td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection
