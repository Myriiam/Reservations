<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Booking') }}
        </h2>
    </x-slot>

    <div class="p-10">
        <p>Vous allez réserver <b>{{ $qty }}</b> {{ ($qty>1) ? "places" : "place" }} pour le spectacle <b>{{ $show->title }}</b> , le montant total s'élève à <b class="text-red-800">{{ $price }}€</b></p>
        <div id="app4">
            <booking></booking>
        </div>
    </div>
</x-app-layout>


