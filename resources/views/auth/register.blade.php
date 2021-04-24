<x-guest-layout>
    <x-auth-card>
        <x-slot name="logo">
            <div class="flex justify-center py-5">
                <div>
                <a href="/">
                    <x-application-logo class=" text-gray-500" />
                </a>
                </div>
            </div>
        </x-slot>

        <!-- Validation Errors -->
        <x-auth-validation-errors class="mb-4" :errors="$errors" />

        <form method="POST" action="{{ route('register') }}">
            @csrf

            <!-- Login -->
            <div class="mt-4">
                <x-label for="login" :value="__('Login')" />

                <x-input id="login" class="block mt-1 w-full" type="login" name="login" :value="old('login')" required autofocus />
            </div>

            <!-- Firstname -->
            <div class="mt-4">
                <x-label for="firstname" :value="__('Prénom')" />

                <x-input id="firstname" class="block mt-1 w-full" type="text" name="firstname" :value="old('firstname')" required />
            </div>

             <!-- Lastname -->
             <div class="mt-4">
                <x-label for="lastname" :value="__('Nom de famille')" />

                <x-input id="lastname" class="block mt-1 w-full" type="lastname" name="lastname" :value="old('lastname')" required />
            </div>

            <!-- Email Address -->
            <div class="mt-4">
                <x-label for="email" :value="__('Email')" />

                <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>

            <!-- Password -->
            <div class="mt-4">
                <x-label for="password" :value="__('Mot de passe')" />

                <x-input id="password" class="block mt-1 w-full"
                                type="password"
                                name="password"
                                required autocomplete="new-password" />
            </div>

            <!-- Confirm Password -->
            <div class="mt-4">
                <x-label for="password_confirmation" :value="__('Confirmation mot de passe')" />

                <x-input id="password_confirmation" class="block mt-1 w-full"
                                type="password"
                                name="password_confirmation" required />
            </div>

            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                    {{ __('Déjà enregistré ?') }}
                </a>

                <x-button class="ml-4">
                    {{ __('S\'enregistrer') }}
                </x-button>
            </div>
        </form>
    </x-auth-card>
</x-guest-layout>
