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
                    <td>{{ $locality->postal_code }}</td>
                    <td>{{ $locality->locality }}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
@endsection
