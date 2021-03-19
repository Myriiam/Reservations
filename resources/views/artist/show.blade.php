<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un artiste') }}
        </h2>
    </x-slot>
    <h1>{{ $artist->firstname }} {{ $artist->lastname }}</h1>

@forelse($artist->types as $type)
    <p>{{ $type->type }}</p>
@empty
    <p>Aucun type pour cet artiste.</p>
@endforelse
</x-app-layout>
