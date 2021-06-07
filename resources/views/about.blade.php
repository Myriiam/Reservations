<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Reservations') }}</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">
        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">
        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>
    </head>
    <body class="font-sans antialiased">
      <div class="min-h-screen bg-gray-100">
        <div class="bg-cover bg-center" style="height:100vh; background-image: url('/images/theatre.jpeg');">
            <!-- Page Heading -->
            <header class="bg-opacity-0 shadow">
                <!-- Navbar -->
                @include('partials.navbar')
                <div class="container mx-auto px-4">
                <!--header here-->
                </div>
            </header>
            <!-- Page Content -->
        <main>
            <div class="relative pt-16 bg-white overflow-hidden">

                <div class="relative">
                    <div class="text-lg max-w-prose mx-auto my-20">
                        <h1>
                        <span class="mt-2 block text-3xl text-center leading-8 font-extrabold tracking-tight text-gray-900 sm:text-4xl">A propos de nous</span>
                        </h1>
                        <p class="mt-8 text-xl text-gray-500 leading-8">Le théatre est un art du spectacle parmis les plus vieux au monde et des plus divertissants. Le spectacle <b><a href="{{ route('representation_index') }}">commence par une réservation</a></b>, notre but est de vous fournir les deux ! Voila déjà longtemps que Réservations travaille de concert avec les plus grands théâtres d'Europe afin de vous proposer les meilleure pièces du monde. Bienvenue chez <b>Réservations</b>.</p>
                    </div>
                    <div class="mt-6 prose prose-indigo prose-lg text-gray-500 mx-auto">
                        <figure>
                        <img class="w-full" src="{{ asset('images/show.png') }}" alt="" width="100%">
                    </div>
                </div>
            </div>
        </main>
        @include('partials.footer')
    </body>
</html>
