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
                <!-- Navbar -->
                @include('partials.navbar')

                <!-- Page Heading -->
                <header class="bg-white shadow">
                    <div class="container mx-auto px-4">
                    <!--header here-->
                    </div>  
                </header>
                <!-- Page Content -->
                <main class="pt-5">
                <!--content here-->
                <section class="p-32">
                    <!--welcome to user-->
                    <div id="app3"></div>
                </section>
            </div>
                <section>
                    <div>
                        <h2 class="m-20 text-center text-3xl">Le plus beau théatre d'Europe !</h2>
                        <p class="text-center">Et c'est peu dire ...</p>
                    </div>
                </section>
            </main>
        </div>
    </body>
</html>
