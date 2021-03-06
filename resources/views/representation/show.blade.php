@extends('layouts.app')

@section('title', 'Fiche d\'une représentation')

@section('content')
    <article>
        <h1>Représentation du {{ $date }} à {{ $heure }}</h1>
        <p><strong>Spectacle:</strong> {{ $representation->show->title }}</p>

        <p><strong>Lieu:</strong> 
        @if($representation->location)
        {{ $representation->location->designation }}
        @elseif($representation->show->location)
        {{ $representation->show->location->designation }}
        @else
        <em>à déterminer</em>
        @endif
        </p>
@endsection
