<x-app-layout>
    <x-slot name="header">
        <h2 class="px-12 font-semibold text-xl text-gray-800 leading-tight">
            Liste des {{ $resource }}
        </h2>
    </x-slot>
    


    <span data-href="route('export_csv')" id="export" class="btn" onclick="exportTasks(event.target);">Exporter le CSV</span>

</x-app-layout>



