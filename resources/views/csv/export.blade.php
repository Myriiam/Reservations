<x-app-layout>
    <x-slot name="header">
        <h2 class="px-12 font-semibold text-xl text-gray-800 leading-tight">
            Liste des fichiers csv
        </h2>
    </x-slot>
    
    <h1>
        <span class="mt-2 mb-4 block text-3xl text-center leading-8 font-extrabold tracking-tight text-gray-900 sm:text-4xl">Import / export fichiers CSV</span>
    </h1>
    <div class="flex justify-center mb-2">
        <div class="content-center">
            <h5>Données des représentations</h5>
            <a href="{{ route('export_shows_csv') }}" onclick="showsCsv(event.target);" id="export" class="mt-8 whitespace-nowrap inline-flex justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-red-800 hover:bg-red-700">
                Exporter le CSV
            </a>
        </div>
        <div class="w-8"></div>
        <div class="content-center">
            <h5>Données des utilisateurs</h5>
            <a href="{{ route('export_users_csv') }}" onclick="usersCsv(event.target);" id="export" class="mt-8 whitespace-nowrap inline-flex justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-red-800 hover:bg-red-700">
                Exporter le CSV
            </a>
        </div>
    </div>
    <div>
        <form action="{{ route('file-import') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="mb-4" style="max-width: 500px; margin: 0 auto;">
                <div class="custom-file text-left">
                    <input type="file" name="file" class="custom-file-input" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <button class="mt-8 whitespace-nowrap inline-flex justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-red-800 hover:bg-red-700">Importez CSV</button>
        </form>
    </div>

</x-app-layout>



