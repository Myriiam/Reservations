@extends('layouts.app')

@section('title', 'Liste des rôles')

@section('content')
    <h1>Liste des {{ $resource }}</h1>

    <table>
        <thead>
            <tr>
                <th>Roles</th>
            </tr>
        </thead>
        <tbody>
        @foreach($roles as $role)
            <tr>
                <td>{{ $role->role }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
@endsection
