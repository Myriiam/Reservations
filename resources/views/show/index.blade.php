<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Liste des {{ $resource }}
        </h2>
    </x-slot>
    
    <div class="p-10"></div>
        <form class="mb-10 ml-12" method="GET" action={{ route('sort_show') }}>
            <label for="sortType">Trier par:</label>
            <select name="sortType" id="sortType" >
                <option value="">- Choisir -</option>
                <option value="priceAsc">Prix croissant</option>
                <option value="priceDesc">Prix décroissant</option>
                <option value="titleAsc">Titre A-Z</option>
                <option value="titleDesc">Titre Z-A</option>
            </select>
            <input type="submit" value="Envoyer">
        </form>

        <div class="flex flex-row flex-wrap justify-around">
            @foreach($shows as $show)
                <div class="flex flex-col justify-between bg-white m-2 p-8 rounded-xl xl:w-1/4 sm:w-5/12 w-full shadow-md">
                    <h3 class="text-center font-serif font-bold text-gray-900 text-xl">{{ $show->title }}</h3>
                    <img class="object-scale-down rounded-md max-h-60" src={{ asset('images/'.$show->poster_url) }} alt="Photo du spectacle {{ $show->title }}" />
                    <p class="text-center leading-relaxed">{{ $show->description }}</p>
                    
                    <span class="text-center">{{ $show->price }}€</span>
                    <a href={{ route('show_show', $show->slug) }} class="px-5 py-4 bg-gray-400 text-center rounded-md text-white text-sm focus:border-transparent hover:bg-red-700">Plus d'infos</a>
                </div>
            @endforeach
        </div>

        <div class="flex flex-row justify-center m-7">
            {{ ($shows->onEachSide(1)->links()) }}
        </div>
    </div>
</x-app-layout>
