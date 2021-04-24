<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Booking') }}
        </h2>
    </x-slot>

    <div class="p-10">
        <p>Vous allez réserver <b>{{ $qty }}</b> {{ ($qty>1) ? "places" : "place" }} pour le spectacle <b>{{ $show->title }}</b> . Le montant total de votre réservation s'élève à <b class="text-red-800">{{ $price }}€.</b> La pièce aura lieu le <b>{{ $date }}</b></p>
        <div id="app4"> 
            <h2 class="mt-5 mb-2"><b>Confirmez votre réservation ?</b></h2>
            <p class="mt-5 mb-2">Je valide ma réservation et je passe au paiement.</p> 
            <form action="{{ route('purchase', $show->id) }}" method="post">
                @method("POST")
                @csrf
                <input type="hidden" name="qty" value="{{ $qty }}">
                <input type="hidden" name="date" value="{{ $date }}">
                <input type="hidden" name="price" value="{{ $price }}">
                
                <div style="display:flex">
                    <!--<button type="submit" class="items-start bg-transparent hover:bg-green-500 text-green-700 font-semibold hover:text-white py-2 px-4 border border-green-500 hover:border-transparent rounded">Accepter</button>-->
                    <a class="items-start bg-transparent hover:bg-green-500 text-green-700 font-semibold hover:text-white py-2 px-4 border border-green-500 hover:border-transparent rounded" href="{{ route('purchase',$show->id) }}">Passer au paiement</a>
                    <booking class="mx-3 bg-transparent hover:bg-red-700 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500 hover:border-transparent rounded">
                        <div class="relative" style="cursor: pointer;">
                            <p aria-expanded="false">
                            <span>Annuler</span>
                            </p>
                        </div>
                    </booking>
                </div>
            </form>
            
        </div>
    </div>
</x-app-layout>


