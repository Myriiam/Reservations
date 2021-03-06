@extends('layouts.app')
<!-- Afficher un lieu de spectacle et tous les spectacles qui s’y trouvent -->
@section('title', 'Fiche d\'un lieu de spectacle')

@section('content')
    <article>
   
        <h1>{{ $location->designation }}</h1>
        <address>
            <p>{{ $location->address }}</p>
            <p>{{ $location->locality->postal_code }} 
               {{ $location->locality->locality }}
            </p>

            @if($location->website)
            <p><a href="{{ $location->website }}" target="_blank">{{ $location->website }}</a></p>
            @else
            <p>Pas de site web</p>
            @endif
            
            @if($location->phone)
            <p><a href="tel:{{ $location->phone }}">{{ $location->phone }}</a></p>
            @else
            <p>Pas de téléphone</p>
            @endif
        </address>

<!-- show is undefined, rien ne s'affiche dans le navigateur !!! -->
    <h2>Liste des spectacles</h2>
        <ul>
        @foreach($location->shows as $show)
            <li>{{ $show->title }}</li>
        @endforeach
        </ul>
@endsection

