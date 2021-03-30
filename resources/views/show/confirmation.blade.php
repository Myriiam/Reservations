<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Confirmation') }}
        </h2>
    </x-slot>
    
    <div class="p-10">
        <h3><b>Votre réservation:</b></h3>
        <p>Vous avez réservé(e) avec succès {{ $request->qty }} place{{ ($request->qty>1) ? "s" : "" }} pour la pièce de théatre {{ $show->title }} qui aura lieu le {{ $request->date }}.</p>
        <p>Le total de la réservation s'élève à {{ $request->price }}€. Vous recevrez un e-mail contenant vos tickets qu'il vous faudra présenter à l'accueil du théatre.</p>
        <a href = "#"><b class="text-red-700">Télécharger votre reservation</b></a>
    </div>
</x-app-layout>
