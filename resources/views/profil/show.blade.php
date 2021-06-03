<x-app-layout>
    <x-slot name="header"></x-slot>
    <h2 class="font-semibold text-5xl text-center text-red-600 leading-tight">
            {{ __('Profile Page') }}
    </h2>
    <main class= "content">
        <div class= 'flex items-center justify-center'>
            <div class= 'bg-white w-2/3 mt-10 mb-10 rounded-lg border-2 border-red-600'>
                <div class= 'flex items-center justify-center pt-10 pb-14 flex-col shadow-2xl'>
                    <img src="{{ asset('images/profil.png') }}" alt="avatar par défaut de chaque profile" class= "rounded-full w-40">

                    <h1 class= 'text-gray-800 font-bold text-4xl mt-5'> {{ $user->firstname }} {{ $user->lastname }}</h1><br>
                    <div class= 'text-gray-600 font-semibold text-xl text-center mt-5'>
                        <p> Mon login : {{ $user->login }}</p>
                        <p> Mon email : {{ $user->email }}</p>
                        <p> Langue : {{ $user->langue }}</p>
                        <p class="mt-5 mb-2 text-red-600 underline"> Mes spectacles : </p>
                        @if (count($user->representations) == 0)
                        <p>Acune représentation pour le moment</p>
                        @else
                            @foreach($user->representations as $representation)
                                @if($representation->when > $today)
                                    <p>Représentations à venir :</p>
                                @elseif($representation->when < $today)
                                    <p>Représentations passées :</p>
                                @endif
                            @endforeach

                            <ul class="list-disc list-inside">
                            <!-- ajouter le code if(le nombre de spectacle est => 1 alors on affiche les spectacles sinon on écrit aucune repres)-->
                                @foreach ($user->representations as $allShows)
                                    <li>{{ $allShows->show->title }}</li>
                                @endforeach
                            </ul>
                        @endif
                    </div>

                    <a href="{{ route('edit_profil', $user->id) }}" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-red-800 hover:bg-red-700">
                        Modifier mon profil
                    </a>
                </div>
            </div>
        </div>

    </main>
</x-app-layout>
