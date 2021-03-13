<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un spectacle') }}
        </h2>
    </x-slot>

    <article>
        <h1>{{ $show->title }}</h1>
            
        @if($show->poster_url)
        <p><img src="{{ asset('images/'.$show->poster_url) }}" alt="{{ $show->title }}" width="200"></p>
        @else
        <canvas width="200" height="100" style="border:1px solid #000000;"></canvas>
        @endif
     
        @if($show->location)
        <p><strong>Lieu de création:</strong> {{ $show->location->designation }}</p>
        @endif

        <p><strong>Prix:</strong> {{ $show->price }} €</p>
        
        @if($show->bookable)
        <p><em>Réservable</em></p>
        @else
        <p><em>Non réservable</em></p>
        @endif
</x-app-layout>

