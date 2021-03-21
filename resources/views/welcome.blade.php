<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">
        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">

        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>
    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-100">
            {{-- @include('layouts.navigation') --}}

            <!-- Navbar -->
            @include('partials.navbar')    
            <!-- Page Heading -->
            <header class="bg-white shadow">
                <div class="container mx-auto px-4">
                <!--header here-->
                </div>  
            </header>
            <!-- Page Content -->
            <main class="pt-5 pl-10">
            <!--content here-->
                <h2>Welcome</h2>
                <div id="app" style="text-align:left;margin-top:2%;margin-bottom:2%;">
                    <face text="Welcome to the theater | by Vue Js"></face>
                </div>
                <div id="app2"></div>
                <div id="app3"></div>
            </main>
        </div>
    </body>
</html>
