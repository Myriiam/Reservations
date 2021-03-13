<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Shows List') }}
        </h2>
    </x-slot>

    <div>
        <h1>Liste des {{ $resource }}</h1>

        <ul>
        @foreach($shows as $show)
        <li>
            {{ $show->title }}
            @if($show->bookable)
            <span>{{ $show->price }} €</span>
            @endif
        </li>
        @endforeach
        </ul>
    </div>
</x-app-layout>