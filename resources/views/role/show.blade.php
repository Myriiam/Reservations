<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un rôle') }}
        </h2>
    </x-slot>

    <h1>{{ $role->role }}</h1>
</x-app-layout>

