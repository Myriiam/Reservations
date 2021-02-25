@extends('layouts.app')

@section('title', 'Liste des localités')

@section('content')
    <h1>{{ $locality->postal_code }} {{ $locality->locality }}</h1>
    
    <ul>
  
    @foreach($locality->location as $location)
        <li>{{ $location->designation }}</li>
    @endforeach
    </ul>
@endsection
