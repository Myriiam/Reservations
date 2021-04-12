<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Liste des localités') }}
        </h2>
    </x-slot>

    <h1>{{ $locality->postal_code }} {{ $locality->locality }}</h1>
    
    <ul>
    <li><a href="{{ route('locality_index') }}">retour</a></li>
    @foreach($locality->location as $location)
        <li>{{ $location->designation }}</li>
    @endforeach
    </ul>
</x-app-layout>

