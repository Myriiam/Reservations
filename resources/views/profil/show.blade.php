<x-app-layout>
    <x-slot name="header"></x-slot>
    <h2 class="font-semibold text-5xl text-center text-red-600 leading-tight">
            {{ __('Profile Page') }}
    </h2>
    <main class= "content">
        <div class= 'flex items-center justify-center'>
            <div class= 'bg-white w-2/3 mt-10 mb-10 rounded-lg border-2 border-red-600'>
                @if(Session::has('message'))
                    <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative" role="alert"> <p>{{ Session::get('success') }}</p>
                        <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
                            <svg class="fill-current h-6 w-6 text-red-500" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>Close</title><path d="M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z"/></svg>
                        </span>
                    </div>
                @endif
                <div class= 'flex items-center justify-center pt-10 pb-14 flex-col shadow-2xl'>
                    <img src="{{ asset('images/profil.png') }}" alt="avatar par défaut de chaque profile" class= "rounded-full w-40">

                    <h1 class= 'text-gray-800 font-bold text-4xl mt-5'> {{ $user->firstname }} {{ $user->lastname }}</h1><br>
                    <div class= 'text-gray-600 font-semibold text-xl text-center mt-5'>
                        <p> Mon pseudo : {{ $user->name }}</p>
                        <p> Mon email : {{ $user->email }}</p>
                        <p> Langue : {{ $user->langue }}</p>
                        <p class="mt-5 mb-2 text-red-600 underline"> Mes spectacles : </p>
                        @if (count($user->representations) == 0)
                        <p>Acune représentation pour le moment</p>
                        @else
                            <p>Représentation passée :</p>
                                <ul class="list-disc list-inside">
                                        @foreach ($user->representations as $allShows)
                                            @if ($allShows->when < $today)
                                                <li>show: {{ $allShows->show->title }} - date: {{ $allShows->when }}</li>
                                            @endif      
                                        @endforeach
                                </ul>
                            <p>Représentation à venir :</p>
                            <ul class="list-disc list-inside">
                                    @foreach ($user->representations as $allShows)
                                        @if ($allShows->when > $today)
                                            <li>show: {{ $allShows->show->title }} - date: {{ $allShows->when }}</li>
                                        @endif
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
