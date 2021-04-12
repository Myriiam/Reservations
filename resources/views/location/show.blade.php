<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Fiche d\'un lieu de spectacle') }}
        </h2>
    </x-slot>

    <article class="pb-0 mb-0">
        <div class="flex pb-0 mb-0">
            <div class="p-20 w-1/3">
                <h1 class="text-3xl font-black text-gray-800 pb-5">{{ $location->designation }}</h1>
                <address>
                    <p>{{ $location->address }}</p>
                    <p>{{ $location->locality->postal_code }} 
                    {{ $location->locality->locality }}
                    </p>
        
                    @if($location->website)
                    <p><a href="{{ $location->website }}" target="_blank" class="hover:text-red-800">{{ $location->website }}</a></p>
                    @else
                    <p>Pas de site web</p>
                    @endif
                    
                    @if($location->phone)
                    <p><a href="tel:{{ $location->phone }}" class="hover:text-red-800">{{ $location->phone }}</a></p>
                    @else
                    <p>Pas de téléphone</p>
                    @endif
                </address>
            </div>
            <div class="flex bg-gradient-to-r from-gray-100 to-gray-500 flex-grow w-2/3">
                <div class="rounded-xl overflow-hidden">
                    <img class="rounded-3xl overflow-hidden mb-10 mr-10 ml-10" src="{{ asset('images/public.jpeg') }}" alt="logo du site">
                </div>
            </div>
        </div>
        <div class="bg-gray-500 text-white p-8">
            <h2 class="text-3xl p-5">Les spectacles à cet endroit</h2>
            <div class="flex">
                <div class="bg-gray-500 text-white p-2">
                    <ul>
                    @foreach($location->shows as $show)
                        <a href="{{ route('show_show', $location->id) }}" class=" hover:text-red-800"><li>{{ $show->title }}</li></a>
                    @if($loop->index % 8 == 0 && $loop->index!=0)
                    </ul>
                </div>
                <div class="bg-gray-500 text-white p-8">
                    <ul>
                    @endif
                    @endforeach
                </div>
            </div>
        </div>
</article>
    <div class="m-0 p-0" id="mapid"></div>
</x-app-layout>

<script>
    /**
     * Script to show map on homepage with Leaflet JS
     */
    let geolocation = []; 
    geolocation.push( <?= $location->latitude ?> ); 
    geolocation.push( <?= $location->longitude ?> ); 
    console.log(geolocation);
    var mymap = L.map('mapid').setView(geolocation, 12);

     L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
         maxZoom: 18,
         attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, ' +
             'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
         id: 'mapbox/streets-v11',
         tileSize: 512,
         zoomOffset: -1
     }).addTo(mymap);
 

     var popup = L.popup()
     .setLatLng(geolocation)
     .setContent("<img src='/images/logo.png'>Le théatre choisi se situe <b>ici</b>.<br><p>Ce beau théatre est situé à une latitude de:"+<?= $location->latitude ?>+" et une lontitude de :"+<?= $location->longitude ?>+".</p>")
     .openOn(mymap);
</script>


