<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un lieu de spectacle') }}
        </h2>
    </x-slot>

    <article>
   
        <h1>{{ $location->designation }}</h1>
        <address>
            <p>{{ $location->address }}</p>
            <p>{{ $location->locality->postal_code }} 
               {{ $location->locality->locality }}
            </p>

            @if($location->website)
            <p><a href="{{ $location->website }}" target="_blank">{{ $location->website }}</a></p>
            @else
            <p>Pas de site web</p>
            @endif
            
            @if($location->phone)
            <p><a href="tel:{{ $location->phone }}">{{ $location->phone }}</a></p>
            @else
            <p>Pas de téléphone</p>
            @endif
        </address>

<!-- show is undefined, rien ne s'affiche dans le navigateur !!! -->
    <h2>Liste des spectacles</h2>
        <ul>
        @foreach($location->shows as $show)
            <li>{{ $show->title }}</li>
        @endforeach
        </ul>
</x-app-layout>


