<x-app-layout>
    <x-slot name="header">
        <h2 class="px-12 font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Réservation de vos tickets') }}
        </h2>
    </x-slot>
    @php
        //dd($price);    
    @endphp
    <div class="bg-no-repeat bg-contain bg-left-bottom h-screen" style="background-image: url({{ asset('images/tickets.png') }});">
        <div class="flex items-center justify-center">
            <div class="p-10 mt-20 sm:w-4/5 md:w-3/5 lg:w-2/5 bg-white rounded-lg shadow-lg overflow-hidden">
                <p>Vous allez réserver <b>{{ $qty }}</b> {{ ($qty>1) ? "places" : "place" }} pour le spectacle <b>{{ $show->title }}</b>. 
                    @if(!empty($price))Le montant total de votre réservation s'élève à <b class="text-red-800">{{ $price }}€.</b>
                    @else Le montant total de votre réservation sera à payer sur place, le prix sera mis à jour prochainement. @endif 
                    @if(!empty($date))La pièce est prévue pour le {{ $date }} à {{ $hour ? $hour : "l'heure définie" }}.
                    @else La pièce ne dispose pas de date de représentation actuellement, celle-ci vous sera communiquer par email.
                    @endif 
                    @if(!empty($place[0]->designation)) Le spectacle aura lieu dans le théâtre <b>{{ $place[0]->designation ? $place[0]->designation : 'choisi' }}</b>. @endif</p>
                <div id="app3">
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
        </div>
    </div>
</x-app-layout>


