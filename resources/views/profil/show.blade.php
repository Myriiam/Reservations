<x-app-layout>
    <x-slot name="header"></x-slot>
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Your Profil Page') }}  
    </h2>
    
    <p>About me...</p><br>
    <p>Mon prénom : {{ $user->firstname }}</p>
    <p> Mon nom : {{ $user->lastname }}</p>
    <p> Mon login : {{ $user->login }}</p>
    <p> Mon email : {{ $user->email }}</p>
   
   
   
</x-app-layout>