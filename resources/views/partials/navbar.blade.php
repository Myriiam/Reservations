<!-- This example requires Tailwind CSS v2.0+ -->
@if (Auth::check())
     <script>window.authUser={!! json_encode(Auth::user()->role_id); !!};</script>
@else
     <script>window.authUser=null;</script>
@endif
<div class="relative bg-white">
    <div class="max-w-7xl mx-auto px-4 sm:px-6">
      <div class="flex justify-between items-center border-b-2 border-gray-100 py-6 md:justify-start md:space-x-10">
        <div class="flex justify-start lg:w-0 lg:flex-1">
          <a href="{{ route('home') }}">
            <span class="sr-only">Workflow</span>
            <img class="h-14 w-auto sm:h-24" src="{{ asset('images/logo.png') }}" alt="">
          </a>
        </div>

        <div id="app5" class="-mr-2 -my-2 md:hidden">
        <div>
        <mobilebutton>

        </mobilebutton>
        </div>
      </div>
        <nav class="hidden md:flex space-x-10">
        <!-- Dropdown button -->
        <div id="app2">
          <div>
            <navigation>
              <!--The content of this componant will be another one after component chargement-->
              <div class="relative">
                <!-- Item active: "text-gray-900", Item inactive: "text-gray-500" -->
                <button type="button" class="text-gray-500 group bg-white rounded-md inline-flex items-center text-base font-medium hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500" aria-expanded="false">
                  <span>Shows</span>
                  <svg class="text-gray-400 ml-2 h-5 w-5 group-hover:text-gray-500" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                  </svg>
                </button>
              </div>
            </navigation>
          </div>
        </div>
          <a href="/about" class="text-base font-medium text-gray-500 hover:text-gray-900">
            A propos
          </a>
          <a href="#" class="text-base font-medium text-gray-500 hover:text-gray-900">
            Nos tarifs
          </a>
        @auth
          @if(Auth::user()->hasRole('admin'))
            <a href="/admin" class="text-base font-medium text-gray-500 hover:text-gray-900">
              Back office
            </a>
          @endif
        @endauth
           <!-- Lien du menu vers la page Profil d'un user connecté -->
           @if(auth()->user() !== null)
            <a href="{{ route('my_profil') }}" class="text-base font-medium text-gray-500 hover:text-gray-900">
              Mon profil
            </a>
          @endif
        <!-- Login button | logout button -->
        </nav>
        <div class="hidden md:flex items-center justify-end md:flex-1 lg:w-0">
        @auth
          <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-red-800 hover:bg-red-700">
            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
            Déconnexion
          </a>
        <!-- Profile dropdown -->
        <div class="ml-3 relative">
          <div>
            <button type="button" class="bg-gray-800 flex text-sm rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white" id="user-menu" aria-expanded="false" aria-haspopup="true">
              <span class="sr-only">Open user menu</span>
              <img class="h-8 w-8 rounded-full" src="{{ asset('storage/'.auth()->user()->avatar) }}" alt="">
            </button>
          </div>
       @else
          <a href="{{ route('register') }}" class="whitespace-nowrap text-base font-medium text-gray-500 hover:text-gray-900">
            S'enregistrer
          </a>
          <a href="{{ route('login') }}" class="ml-8 whitespace-nowrap inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-red-800 hover:bg-red-700">
            Connexion
          </a>
        @endauth
        </div>
      </div>
    </div>
</div>
