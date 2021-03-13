<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Liste des rôles') }}
        </h2>
    </x-slot>

    <h1>Liste des {{ $resource }}</h1>

    <table>
        <thead>
            <tr>
                <th>Roles</th>
            </tr>
        </thead>
        <tbody>
        @foreach($roles as $role)
            <tr>
                <td>{{ $role->role }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
</x-app-layout>

