<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Liste des {{ $resource }}
        </h2>
    </x-slot>
    
    <div class="p-10">
        <div class="flex flex-row justify-between">
            <form class="ml-20" method="GET" action={{ route('sort_show') }}>
                <label for="sortType">Trier par:</label>
                <select name="sortType" id="sortType" >
                    <option value="">- Choisir -</option>
                    <option value="price_asc">Prix croissant</option>
                    <option value="price_desc">Prix décroissant</option>
                    <option value="title_asc">Titre A-Z</option>
                    <option value="title_desc">Titre Z-A</option>
                </select>
                <input type="submit" value="Envoyer">
            </form>

            <form class="mb-10 mr-20" method="GET" action={{ route('show') }}>
                <div class="pt-2 relative text-gray-600">
                    <input class="border-2 border-gray-300 bg-white h-10 px-5 pr-16 rounded-lg text-sm focus:outline-none"
                      type="search" name="title" placeholder="Rechercher">
                    <button type="submit" class="absolute right-0 top-0 mt-5 mr-4">
                      <svg class="text-gray-600 h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px"
                        viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve"
                        width="512px" height="512px">
                        <path
                          d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z" />
                      </svg>
                    </button>
                  </div>
            </form>
        </div>

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

        <div class="flex flex-row justify-center mt-7 p-7">
            {{ ($shows->onEachSide(1)->links()) }}
        </div>
    </div>
</x-app-layout>
