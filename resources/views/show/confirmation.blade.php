<x-app-layout>
    <x-slot name="header">
        <h2 class="px-12 text-transparentfont-semibold text-xl text-gray-800 leading-tight">
            {{ __('Conffirmation') }}
        </h2>
    </x-slot>
    
    <div class="bg-contain bg-no-repeat bg-left-bottom h-screen" style="background-image: url({{ asset('images/congrats.png') }});">
        <div class="flex items-center justify-center">
            <div class="p-10 mt-20 mx-8 sm:w-4/5 md:w-3/5 lg:w-2/5 bg-white rounded-lg shadow-lg overflow-hidden">
                <h3 class="mb-2"><b>Votre réservation:</b></h3>
                @if(!empty( $date ))
                <p>Vous avez réservé(e) avec succès {{ $qty }} place{{ ($qty>1) ? "s" : "" }} pour la pièce de théatre <b>{{ $title }}</b> qui aura lieu le {{ $date }}.</p>
                @else 
                <p>Vous avez réservé(e) avec succès votre pré-commande de {{ $qty }} place{{ ($qty>1) ? "s" : "" }} pour la pièce de théatre <b>{{ $title }}</b>. Vous serez informé(e) par email quand une date de représentation sera disponible.</p>
                @endif
                <p>Le total de la réservation s'élève à <b>{{ $price }}€</b>. {{ $noLocation ? ("Vous recevrez les informations concernant la salle qui sera attribuée au spectacle par email sur : ".auth()->user()->email) : ("Vous recevrez un e-mail sur ".auth()->user()->email.", celui-ci contiendra vos tickets qu'il vous faudra présenter à l'accueil du théatre.") }} </p>
                <a class="pt-4" href = "#"><b class="text-red-700">Télécharger votre reservation</b></a>
            </div>
        </div>
    </div>
    <script src="{{ asset('js/congratulation.js') }}"></script>
</x-app-layout>
