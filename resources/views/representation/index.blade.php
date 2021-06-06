<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Liste des représentations') }}
        </h2>
    </x-slot>

    <ul class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
        @foreach($representations as $representation)

        <li class="col-span-1 flex flex-col text-center bg-white rounded-lg shadow divide-y divide-gray-200">
          <div class="flex-1 flex flex-col p-8">
            <img class="w-32 h-32 flex-shrink-0 mx-auto bg-black object-cover" src="{{ asset('images/'.$representation->show->poster_url) }}" alt="{{ $representation->show->title }}">
            <h3 class="mt-6 text-gray-900 text-xl font-bold">@if($representation->show) {{ $representation->show->title }} @endif</h3>
            <dl class="mt-1 flex-grow flex flex-col justify-between">
              <dt class="sr-only"></dt>
              <dd class="text-gray-500 text-sm">@if($representation->location) <a class="no-underline hover:text-red-700 text-gray-500 text-lg" href="{{ route('location_show', $representation->location->id) }}">{{ $representation->location->designation }}</a> @else Pas de salle assignée @endif</dd>
              <dt class="sr-only"></dt>
              <dd class="text-gray-500 text-sm"><datetime>{{ substr($representation->when,0,-3) }}</datetime></dd>
              <dt class="sr-only">Role</dt>
              <dd class="mt-3">
                @if($representation->show->bookable)
                <span class="px-2 py-1 text-green-800 text-xs font-medium bg-green-100 rounded-full">Disponible</span>
                @else
                <span class="px-2 py-1 text-red-800 text-xs font-medium bg-red-100 rounded-full">Complet</span>
                @endif
              </dd>
              <dt class="sr-only"></dt>
              <dd class="text-gray-500 text-sm">Prix par place: <b>{{ $representation->price }} €</b></dd>
            </dl>
          </div>
          <div>
            <div class="-mt-px flex divide-x divide-gray-200">
              <div class="w-0 flex-1 flex">
                <a href="{{ route('show_show', $representation->show->slug) }}" class="relative -mr-px w-0 flex-1 inline-flex items-center justify-center py-4 text-sm text-gray-700 font-medium border border-transparent rounded-bl-lg hover:text-gray-500">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                  </svg>
                  <span class="ml-3">Je réserve</span>
                </a>
              </div>
              <div class="-ml-px w-0 flex-1 flex">
                <a href="{{ route('show_show', $representation->show->slug) }}" class="pointer-events-auto relative w-0 flex-1 inline-flex items-center justify-center py-4 text-sm text-gray-700 font-medium border border-transparent rounded-br-lg hover:text-gray-500">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 hover:text-red-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
                  </svg>
                  <span class="ml-3">Favoris</span>
                </a>
              </div>
            </div>
          </div>
        </li>

        @endforeach
      </ul>
</x-app-layout>

