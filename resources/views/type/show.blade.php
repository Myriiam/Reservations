<x-app-layout>
    <x-slot name="header">
        <h1 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un type') }}
        </h1>
    </x-slot>

        <h1>{{ $type->type }}</h1>
            
        <h2><strong>Liste des artistes</strong></h2>
        <ul>
            @forelse($type->artists as $artist)
                <li>{{ $artist->firstname }} {{ $artist->lastname }}</li>
            @empty
                <p>Aucun artiste n'a cette fonction.</p>
            @endforelse
        </ul>

</x-app-layout>

