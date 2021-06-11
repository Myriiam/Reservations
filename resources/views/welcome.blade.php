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
                        @if(Session::has('message') || Session::has('success'))
                            @if(Session::has('message'))
                            <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert"> <p>{{ Session::get('message') }}</p>
                            @else 
                            <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative" role="alert"> <p>{{ Session::get('success') }}</p>
                            @endif
                            <span class="absolute top-0 bottom-0 right-0 px-4 py-3">
                                <svg class="fill-current h-6 w-6 text-red-500" role="button" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>Close</title><path d="M14.348 14.849a1.2 1.2 0 0 1-1.697 0L10 11.819l-2.651 3.029a1.2 1.2 0 1 1-1.697-1.697l2.758-3.15-2.759-3.152a1.2 1.2 0 1 1 1.697-1.697L10 8.183l2.651-3.031a1.2 1.2 0 1 1 1.697 1.697l-2.758 3.152 2.758 3.15a1.2 1.2 0 0 1 0 1.698z"/></svg>
                            </span>
                            </div>
                        @endif
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
                        <a href="{{ route('about') }}">
                            <button class="mt-10 bg-gray-200 hover:bg-gray-500 hover:text-white text-gray-900 font-bold py-2 px-4 rounded-full">
                                En savoir plus
                            </button>
                        </a>
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
