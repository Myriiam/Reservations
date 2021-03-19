<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un type') }}
        </h2>
    </x-slot>

    <h1>{{ $type->type }}</h1>
@forelse($type->artists as $artist)
    <p>{{ $artist->firstname }} {{ $artist->lastname }}</p>
@empty
    <p>Aucun artiste n'a cette fonction.</p>
@endforelse
</x-app-layout>

