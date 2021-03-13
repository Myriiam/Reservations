<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Liste des représentations') }}
        </h2>
    </x-slot>
    
    <h1>Liste des {{ $resource }}</h1>

    <ul>
    @foreach($representations as $representation)
    <li>{{ $representation->show->title }}
        @if($representation->location)
        - <span>{{ $representation->location->designation }}</span>
        @endif
        - <datetime>{{ substr($representation->when,0,-3) }}</datetime>
    </li>
    @endforeach
    </ul>
</x-app-layout>

