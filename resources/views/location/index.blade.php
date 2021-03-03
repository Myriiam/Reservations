@extends('layouts.app')

@section('title', 'Liste des lieux de spectacle')

@section('content')
    <h1>Liste des {{ $resource }}</h1>

    <ul>
    @foreach($locations as $location)
    <li>{{ $location->designation }}
        @if($location->website)
        - <a href="{{ $location->website }}">{{ $location->website }}</a>
        @endif
    </li>
    @endforeach
    </ul>
@endsection
