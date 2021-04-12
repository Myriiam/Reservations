<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un spectacle') }}
        </h2>
    </x-slot>
    
    <div class="flex mb-4">
      <div class="w-1/4 px-20">
        <h2 class="py-5"><b class="text-2xl">Infos billeterie</b></h2>
        <p><strong>Prix:</strong> {{ $show->price }} €</p>

        @if($show->bookable)
        <p><em>Réservable</em></p>
        @else
        <p><em>Non réservable</em></p>
        @endif

        <h2 class="py-5"><b class="text-2xl">Liste des représentations</b></h2>
        @if($show->representations->count()>=1)
        <ul>
            @foreach ($show->representations as $representation)
                <li>{{ $representation->when }}</li>              
            @endforeach
        </ul>
        @else
        <p class="text-gray-600">Aucune représentation</p>
        @endif

        <h2 class="py-5"><b class="text-2xl">Liste des artistes</b></h2>
        <p><strong>Auteur:</strong>
        @foreach ($collaborateurs['auteur'] as $auteur)
            {{ $auteur->firstname }} 
            {{ $auteur->lastname }}@if($loop->iteration == $loop->count-1) et 
            @elseif(!$loop->last), @endif
        @endforeach
        </p>
        <p><strong>Metteur en scène:</strong>
        @foreach ($collaborateurs['scénographe'] as $scenographe)
            {{ $scenographe->firstname }} 
            {{ $scenographe->lastname }}@if($loop->iteration == $loop->count-1) et 
            @elseif(!$loop->last), @endif
        @endforeach
        </p>
        <p><strong>Distribution:</strong>
        @foreach ($collaborateurs['comédien'] as $comedien)
            {{ $comedien->firstname }} 
            {{ $comedien->lastname }}@if($loop->iteration == $loop->count-1) et 
            @elseif(!$loop->last), @endif
        @endforeach
        </p>

      </div>
      <div class="w-2/4 px-10 flex justify-center">
        <div>
          <h1 class="text-4xl font-black mb-5">{{ $show->title }}</h1>
          @if($show->poster_url)
          <img class="object-contain shadow-md" src="{{ asset('images/'.$show->poster_url) }}" alt="{{ $show->title }}" min-width="200">
          @else
          <canvas width="200" height="100" style="border:1px solid #000000;"></canvas>
          @endif
        </div>
      </div>
      <div class="w-1/4">
        <div class="pl-5 pb-10">
          <p class="my-5 text-2xl font-black"><b>Lieu de représentation</b></p>
          @if($show->location)
          <p><b>Lieu de création:</b> {{ $show->location->designation }}</p>
          @endif

          <p><b>Prix:</b> {{ $show->price }} €</p>
        </div>

          @if($show->bookable)
          <div class="bg-white rounded-xl p-5 shadow-md">
          <p class="my-5 text-3xl font-black"><b>Réserver des places</b></p>
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
              <button type="submit" class="mt-5 bg-red-800 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">
                  Réserver
              </button>
          </form>
          @else
          <p><em class="text-red-700 pl-5 text-2xl">Non réservable</em></p>
          @endif
          @php
          if(!empty($message)){echo("<p class='my-5 text-red-800'>".$message."</p>");}
          if(!empty($message2)){echo("<p class='my-5 text-red-800'>".$message2."</p>");}
          @endphp
          </div>
          <div class="mt-10">
            <a href={{ route('show') }} class="px-5 py-4 bg-gray-400 text-center rounded-md text-white text-sm focus:border-transparent hover:bg-gray-700">Retour vers les spectacles</a>
          </div>
      </div>
    </div>

</x-app-layout>

