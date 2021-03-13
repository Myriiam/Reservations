<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Liste des lieux de spectacle') }}
        </h2>
    </x-slot>

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
</x-app-layout>
