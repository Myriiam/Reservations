<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Liste des artistes') }}
        </h2>
    </x-slot>

    <h1>Liste des {{ $resource }}</h1>
    <table>
        <thead>
            <tr>
                <th>Firstname</th>
                <th>Lastname</th>
            </tr>
        </thead>
        <tbody>
        @foreach($artists as $artist)
            <tr>
                <td>{{ $artist->firstname }}</td>
                <td>{{ $artist->lastname }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
</x-app-layout>
