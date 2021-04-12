<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Liste des {{ $resource }}
        </h2>
    </x-slot>
    <div class="inline-flex">
      <div class="w-1/2">

    <p class="mt-10 ml-20">Les lieux de nos salles de <strong>spectacle</strong> sont divers et variés. <br>Faites votres choix parmis les salles ci-dessous:</p>
    <ul class="mt-24 mb-20">
    @foreach($locations as $location)
    <li class="py-2"><a href="{{ route('location_show', $location->id) }}"><b class="text-red-900 text-2xl pl-20 hover:text-red-600">{{ $location->designation }}</b></a>
        @if($location->website)
        - <a href="{{ $location->website }}">{{ $location->website }}</a>
        @endif
    </li>
    @endforeach
    </ul>
    
  </div>
  <div class="w-1/2 mt-16 mr-10 rounded-xl overflow-hidden">
    <img src="{{ asset('images/reve.jpg') }}" alt="le theatre de reve" class="object-cover lg:h-full lg:w-full">
  </div>
  </div>

    <!--content back-->

    <div class="pt-32 lg:py-24">
        <div class="pb-16 bg-gray-300 lg:pb-0 lg:z-10 lg:relative">
          <div class="lg:mx-auto lg:max-w-7xl lg:px-8 lg:grid lg:grid-cols-3 lg:gap-8">
            <div class="relative lg:-my-8">
              <div aria-hidden="true" class="absolute inset-x-0 top-0 h-1/2 bg-white lg:hidden"></div>
              <div class="mx-auto max-w-md px-4 sm:max-w-3xl sm:px-6 lg:p-0 lg:h-full">
                <div class="aspect-w-10 aspect-h-6 rounded-xl shadow-xl overflow-hidden sm:aspect-w-16 sm:aspect-h-7 lg:aspect-none lg:h-full">
                  <img class="object-cover lg:h-full lg:w-full" src="{{ asset('images/spectator.jpg') }}" alt="">
                </div>
              </div>
            </div>
            <div class="mt-12 lg:m-0 lg:col-span-2 lg:pl-8">
              <div class="mx-auto max-w-md px-4 sm:max-w-2xl sm:px-6 lg:px-0 lg:py-20 lg:max-w-none">
                <blockquote>
                  <div>
                    <p class="mt-6 text-2xl font-medium text-white">
                      “Nous sommes dans un monde où les expériences à vivre ensemble deviennent de plus en plus rares. Ce qui rend le spectacle vivant encore plus précieux.”
                    </p>
                  </div>
                  <footer class="mt-6">
                    <p class="text-base font-medium text-white">Sam Fairires</p>
                    <p class="text-base font-medium text-red-600">Réalisateur
                  </footer>
                </blockquote>
              </div>
            </div>
          </div>
        </div>
      </div>
</x-app-layout>
                