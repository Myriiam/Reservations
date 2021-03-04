@extends('layouts.app')

@section('title', 'Liste des spectacles')

@section('content')
    <h1>Liste des {{ $resource }}</h1>

    <ul>
    @foreach($shows as $show)
    <li>
        {{ $show->title }}
        @if($show->bookable)
        <span>{{ $show->price }} €</span>
        @endif
    </li>
    @endforeach
    </ul>
@endsection
