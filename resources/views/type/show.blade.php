<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un type') }}
        </h2>
    </x-slot>

    <h1>{{ $type->type }}</h1>
</x-app-layout>

