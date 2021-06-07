<x-app-layout>
    <x-slot name="header">
        <h2 class="px-12 font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Représentation d\'un spectacle') }}
        </h2>
    </x-slot>

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
</x-app-layout>