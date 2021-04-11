<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Confirmation') }}
        </h2>
    </x-slot>
    
    <div class="p-10">
        <h3><b>Votre réservation:</b></h3>
        <p>Vous avez réservé(e) avec succès {{ $qty }} place{{ ($qty>1) ? "s" : "" }} pour la pièce de théatre {{ $title }} qui aura lieu le {{ $date }}.</p>
        <p>Le total de la réservation s'élève à {{ $price }}€. Vous recevrez un e-mail contenant vos tickets qu'il vous faudra présenter à l'accueil du théatre.</p>
        <a href = "#"><b class="text-red-700">Télécharger votre reservation</b></a>
    </div>
</x-app-layout>
