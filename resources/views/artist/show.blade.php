<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un artiste') }}
        </h2>
    </x-slot>
    <h1>{{ $artist->firstname }} {{ $artist->lastname }}</h1>
   
    <h2>Liste des types</h2>
      <ul>
        @forelse($artist->types as $type)
           <li>{{ $type->type }}</li>
        @empty
            <p>Aucun type pour cet artiste.</p>
        @endforelse
      </ul>
</x-app-layout>
