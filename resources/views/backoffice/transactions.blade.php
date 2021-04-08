<x-backoffice-layout>
    <x-slot name="header">
        <h2 class="font-bold text-xl text-gray-800 leading-tight">
            {{ __($resource) }}
        </h2>
    </x-slot>

    <h1>Bienvenue dans le back-office de Reservation</h1>
                    
                        <div class="mt-2 grid grid-cols-1 gap-5 sm:grid-cols-2 lg:grid-cols-3">
                          <!-- Card -->

                          <div class="bg-white overflow-hidden shadow rounded-lg">
                            <div class="p-5">
                              <div class="flex items-center">
                                <div class="flex-shrink-0">
                                  <!-- Heroicon name: outline/scale -->
                                  <svg class="h-6 w-6 text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3" />
                                  </svg>
                                </div>
                                <div class="ml-5 w-0 flex-1">
                                  <dl>
                                    <dt class="text-sm font-medium text-gray-500 truncate">
                                      Total des ventes
                                    </dt>
                                    <dd>
                                      <div class="text-lg font-medium text-gray-900">
@php
$total = "pas de vente";
@endphp


                                        {{ $total }}
                                      </div>
                                    </dd>
                                  </dl>
                                </div>
                              </div>
                            </div>

                          <!-- More items... -->
                        </div>
                      </div>

                      <h2 class="max-w-6xl mx-auto mt-8 px-4 text-lg leading-6 font-medium text-gray-900 sm:px-6 lg:px-8">
                        Dernières ventes
                      </h2>

                      <!-- Activity list (smallest breakpoint only) -->
                      <div class="shadow sm:hidden">
                        <ul class="mt-2 divide-y divide-gray-200 overflow-hidden shadow sm:hidden">
                          <li>
                            <a href="#" class="block px-4 py-4 bg-white hover:bg-gray-50">
                              <span class="flex items-center space-x-4">
                                <span class="flex-1 flex space-x-2 truncate">
                                  <!-- Heroicon name: solid/cash -->
                                  <svg class="flex-shrink-0 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                    <path fill-rule="evenodd" d="M4 4a2 2 0 00-2 2v4a2 2 0 002 2V6h10a2 2 0 00-2-2H4zm2 6a2 2 0 012-2h8a2 2 0 012 2v4a2 2 0 01-2 2H8a2 2 0 01-2-2v-4zm6 4a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd" />
                                  </svg>
                                  <span class="flex flex-col text-gray-500 text-sm truncate">
@php
$customer = "Jean luc";
$date = "6/11/2021";
$price = "124";
@endphp
                                    <span class="truncate">Paiement de {{ $customer }}</span>
                                    <span><span class="text-gray-900 font-medium">{{ $price }}</span> USD</span>
                                    <time datetime="2020-07-11">{{ $date }}</time>
                                  </span>
                                </span>
                                <!-- Heroicon name: solid/chevron-right -->
                                <svg class="flex-shrink-0 h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                  <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" />
                                </svg>
                              </span>
                            </a>
                          </li>

                          <!-- More items... -->
                        </ul>

                        <nav class="bg-white px-4 py-3 flex items-center justify-between border-t border-gray-200" aria-label="Pagination">
                          <div class="flex-1 flex justify-between">
                            <a href="#" class="relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:text-gray-500">
                              Previous
                            </a>
                            <a href="#" class="ml-3 relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:text-gray-500">
                              Next
                            </a>
                          </div>
                        </nav>
                      </div>

                      <!-- Activity table (small breakpoint and up) -->
                      <div class="hidden sm:block">
                        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
                          <div class="flex flex-col mt-2">
                            <div class="align-middle min-w-full overflow-x-auto shadow overflow-hidden sm:rounded-lg">
                              <table class="min-w-full divide-y divide-gray-200">
                                <thead>
                                  <tr>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                      Transaction
                                    </th>
                                    <th class="px-6 py-3 bg-gray-50 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
                                      MONTANT
                                    </th>
                                    <th class="hidden px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider md:block">
                                      Status
                                    </th>
                                    <th class="px-6 py-3 bg-gray-50 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
                                      Date
                                    </th>
                                  </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                  <tr class="bg-white">
                                    <td class="max-w-0 w-full px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                      <div class="flex">
                                        <a href="#" class="group inline-flex space-x-2 truncate text-sm">
                                          <!-- Heroicon name: solid/cash -->
                                          <svg class="flex-shrink-0 h-5 w-5 text-gray-400 group-hover:text-gray-500" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M4 4a2 2 0 00-2 2v4a2 2 0 002 2V6h10a2 2 0 00-2-2H4zm2 6a2 2 0 012-2h8a2 2 0 012 2v4a2 2 0 01-2 2H8a2 2 0 01-2-2v-4zm6 4a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd" />
                                          </svg>
                                          <p class="text-gray-500 truncate group-hover:text-gray-900">
                                            Paiement de {{ $customer }}
                                          </p>
                                        </a>
                                      </div>
                                    </td>
                                    <td class="px-6 py-4 text-right whitespace-nowrap text-sm text-gray-500">
                                      <span class="text-gray-900 font-medium">{{ $price }}</span>
                                      €
                                    </td>
                                    <td class="hidden px-6 py-4 whitespace-nowrap text-sm text-gray-500 md:block">
                                      <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-green-100 text-green-800 capitalize">
                                        success
                                      </span>
                                    </td>
                                    <td class="px-6 py-4 text-right whitespace-nowrap text-sm text-gray-500">
                                      <time>{{ $date }}</time>
                                    </td>
                                  </tr>

                                  <!-- More items... -->
                                </tbody>
                              </table>
                              <!-- Pagination -->
                              <nav class="bg-white px-4 py-3 flex items-center justify-between border-t border-gray-200 sm:px-6" aria-label="Pagination">

                                <div class="flex-1 flex justify-between sm:justify-end">
                                  <a href="#" class="relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
                                    Précédent
                                  </a>
                                  <a href="#" class="ml-3 relative inline-flex items-center px-4 py-2 border border-gray-300 text-sm font-medium rounded-md text-gray-700 bg-white hover:bg-gray-50">
                                    Suivant
                                  </a>
                                </div>
                              </nav>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      </x-backoffice-layout>    