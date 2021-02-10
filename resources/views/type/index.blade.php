@extends('layouts.app')

@section('title', 'Liste des types')

@section('content')
    <h1>Liste des {{ $resource }}</h1>

    <table>
        <thead>
            <tr>
                <th>Types</th>
            </tr>
        </thead>
        <tbody>
        @foreach($types as $type)
            <tr>
                <td>{{ $type->type }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection
