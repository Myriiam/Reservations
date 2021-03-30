<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un spectacle') }}
        </h2>
    </x-slot>

    <article>
         
    <div class="flex mb-4">
        <div class="w-1/3 px-20">
            <h1>{{ $show->title }}</h1>
            @if($show->poster_url)
            <p><img src="{{ asset('images/'.$show->poster_url) }}" alt="{{ $show->title }}" width="200"></p>
            @else
            <canvas width="200" height="100" style="border:1px solid #000000;"></canvas>
            @endif
        </div>
        <div class="w-1/3">
            @if($show->location)
            <p><b>Lieu de création:</b> {{ $show->location->designation }}</p>
            @endif
    
            <p><b>Prix:</b> {{ $show->price }} €</p>
            
            @if($show->bookable)
            <p class="my-5"><b>Réserver des places</b></p>
            <form action="{{ route('show_booking', $show->id) }}" method="post">
                @method("POST")
                @csrf
                <select type="select" id="date" name="date">
                    @if(!empty($representations))
                        <option value="">--Choisir une date--</option>
                        @foreach ($representations as $representation)
                            <option value="{{ !empty($representation->when) ? $representation->when : "" }}">{{ !empty($representation->when) ? $representation->when : "Pas de date disponible" }}</option>
                        @endforeach
                    @endif
                </select>
                <label for="quantity">Quantité :</label>
                <input type="number" id="quantity" name="quantity" min="1" max="50" placeholder="0">
                <button type="submit" class="bg-red-800 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">
                    Réserver
                </button>
            </form>
            @else
            <p><em>Non réservable</em></p>
            @endif
            @php
            if(!empty($message)){echo("<p class='my-5 text-red-800'>".$message."</p>");}
            if(!empty($message2)){echo("<p class='my-5 text-red-800'>".$message2."</p>");}
            @endphp
        </div>
    </div>

</x-app-layout>

