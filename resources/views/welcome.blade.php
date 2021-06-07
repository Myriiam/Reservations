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
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>
    </head>
    <body class="font-sans antialiased">
        <main>
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
                    <section class="bg-opacity-0">
                        <!--welcome to user-->
                        <div id="app">

                            <div class="text-center" style="color:white; font-size:2.5em; margin-top: 35vh; transform: translateY(-40%);">
                                <hello-world/>
                            </div>
 
                        </div>
                        <div style="position: absolute; bottom: 20px; margin-left:49%;">
                            <img class="arrow animate-bounce w-12 h-12" style="margin:auto;" src="{{ asset('images/arrow.svg') }}" alt="arrow picto">
                        </div>
                    </section>
                </div>
                <section>
                    <div>
                        <h2 class="m-20 text-center text-3xl">Le plus beau théatre d'Europe !</h2>
                        <p class="text-center">Et c'est peu dire ...</p>
                    </div>
                </section>
                <section class="flex bg-gray-900 mt-16">
                    <div class="w-1/2">
                        <video autoplay muted loop id="video">
                            <source src="{{ asset('images/show.mp4') }}" type="video/mp4">
                        </video>
                    </div>
                    <div class="w-1/2 bg-gray-900 text-center text-white">
                        <h3 class="font-bold text-3xl pt-20 pb-10">Une expérience unique !</h3>
                        <p>Assistez aux meilleures pièces d'Europe !</p>
                        <button class="mt-10 bg-gray-200 hover:bg-gray-500 hover:text-white text-gray-900 font-bold py-2 px-4 rounded-full">
                            En savoir plus
                        </button>   
                    </div>
                </section>
                <div class="flex justify-center pt-20 pb-10">
                    <img class="w-1/4 justify-center" src="{{ asset('images/logo.png') }}" alt="logo du site de theatre Reservation">
                </div>
            </div>
        </main>
        @include('partials.footer')
    </body>
</html>
