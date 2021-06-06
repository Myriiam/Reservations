<x-app-layout>
  <script src="{{ asset('js/api.js') }}" defer></script>
  <x-slot name="header">
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
          Collecter les données de l'API
      </h2>
  </x-slot>
  
  <div class="pl-8">
    @if ($shows)
      <form action="{{ route('show_fill') }}" method="POST">
        @csrf
        <table class="table-auto">
          <thead>
            <tr>
              <th>Titre</th>
              <th>Slug</th>
              <th>Poster</th>
              <th>Description</th>
              <th>Localisation</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
          @foreach ($shows as $show)
            <tr class="text-center">
              <td>{{$show->title}}</td>
              <td class="p-6">{{$show->slug}}</td>
              <td>{{$show->poster}}</td>
              <td class="p-6">{{substr($show->description, 0, 100) . '...'}}</td>
              <td>{{$show->location->designation}}</td>
              <td class="p-6"><input type="checkbox" id="{{$show->slug}}" name="{{$show->slug}}" ></td>
            </tr>
          @endforeach
          </tbody>
        </table>
        <input type="submit"  class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 block mt-10 mx-auto rounded" value="Ajouter les spectacles"/>
      </form>
    @endif
  </div>
</x-app-layout>
