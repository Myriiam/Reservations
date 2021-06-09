<x-app-layout>
    <x-slot name="header"></x-slot>
    <h2 class="font-semibold text-5xl text-center text-red-600 leading-tight">
            {{ __('Edit Profile Page') }}
    </h2>
    @php
        $dataTypeContent = $user;
        $dataType = $user;
    @endphp

    <main class= "content">
        <div class= 'flex items-center justify-center'>
            <div class= 'bg-white w-2/3 mt-10 mb-10 rounded-lg border-2 border-red-600'>
                <div class= 'flex items-center justify-center pt-10 pb-14 flex-col shadow-2xl'>
                    <div class= 'text-gray-600 font-semibold text-xl text-center mt-5'>
                        <form class="form-edit-add" role="form"
                            action="@if(!is_null($dataTypeContent->getKey())){{ route('voyager.users.update', $dataTypeContent->getKey()) }}@else{{ route('voyager.'.$dataType->slug.'.store') }}@endif"
                            method="POST" enctype="multipart/form-data" autocomplete="off">
                            <!-- PUT Method if we are editing -->
                            @if(isset($dataTypeContent->id))
                                {{ method_field("PUT") }}
                            @endif
                            {{ csrf_field() }}

                            <div class="row">
                                <div class="col-md-8">
                                    <div class="panel panel-bordered">
                                    {{-- <div class="panel"> --}}
                                        @if (count($errors) > 0)
                                            <div class="alert alert-danger">
                                                <ul>
                                                    @foreach ($errors->all() as $error)
                                                        <li>{{ $error }}</li>
                                                    @endforeach
                                                </ul>
                                            </div>
                                        @endif

                                        <div class="panel-body">
                                            <div class="form-group">
                                                <input type="text" class="mb-5 font-bold border-2 border-gray-700" id="firstname" name="firstname" placeholder="{{ __('voyager::generic.firstname') }}"
                                                    value="{{ old('firstname', $dataTypeContent->firstname ?? '') }}" readonly>
                                                <input type="text" class="mb-5 font-bold border-2 border-gray-700" id="lastname" name="lastname" placeholder="{{ __('voyager::generic.lastname') }}"
                                                    value="{{ old('lastname', $dataTypeContent->lastname ?? '') }}" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="name">{{ __('voyager::generic.name') }}</label>
                                                <input type="text" class="mb-5 border-2 border-gray-700" id="name" name="name" placeholder="{{ __('voyager::generic.name') }}"
                                                    value="{{ old('name', $dataTypeContent->name ?? '') }}">
                                            </div>

                                            <div class="form-group">
                                                <label for="email">{{ __('voyager::generic.email') }}</label>
                                                <input type="email" class="mb-5 border-2 border-gray-700" id="email" name="email" placeholder="{{ __('voyager::generic.email') }}"
                                                    value="{{ old('email', $dataTypeContent->email ?? '') }}">
                                            </div>

                                            <div class="form-group">
                                                <label for="password">{{ __('voyager::generic.password') }}</label>
                            
                                                <input type="password" class="mb-0.5 border-2 border-gray-700" id="password" name="password" value="" autocomplete="new-password">
                                                @if(isset($dataTypeContent->password)) 
                                                    <br>
                                                    <small class="text-red-600 text-xs">*{{ __('voyager::profile.password_hint') }}</small>
                                                @endif
                                            </div>

                                            @can('editRoles', $dataTypeContent)
                                                <div class="form-group">
                                                    <label for="default_role">{{ __('voyager::profile.role_default') }}</label>
                                                    @php
                                                        $dataTypeRows = $dataType->{(isset($dataTypeContent->id) ? 'editRows' : 'addRows' )};

                                                        $row     = $dataTypeRows->where('field', 'user_belongsto_role_relationship')->first();
                                                        $options = $row->details;
                                                    @endphp
                                                    @include('voyager::formfields.relationship')
                                                </div>
                                                <div class="form-group">
                                                    <label for="additional_roles">{{ __('voyager::profile.roles_additional') }}</label>
                                                    @php
                                                        $row     = $dataTypeRows->where('field', 'user_belongstomany_role_relationship')->first();
                                                        $options = $row->details;
                                                    @endphp
                                                    @include('voyager::formfields.relationship')
                                                </div>
                                            @endcan
                                            @php
                                            if (isset($dataTypeContent->locale)) {
                                                $selected_locale = $dataTypeContent->locale;
                                            } else {
                                                $selected_locale = config('app.locale', 'en');
                                            }

                                            @endphp
                                            <div class="form-group mt-7">
                                                <label for="locale">{{ __('voyager::generic.locale') }}</label>
                                                <select class="form-control select2 border-2 border-gray-700" id="locale" name="locale">
                                                    @foreach (Voyager::getLocales() as $locale)
                                                    <option value="{{ $locale }}"
                                                    {{ ($locale == $selected_locale ? 'selected' : '') }}>{{ $locale }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="panel panel panel-bordered panel-warning">
                                        <div class="panel-body mt-5">
                                            <div class='flex items-center justify-center'>
                                                @if(isset($dataTypeContent->avatar))
                                                    <img classs='' src="{{ filter_var($dataTypeContent->avatar, FILTER_VALIDATE_URL) ? $dataTypeContent->avatar : Voyager::image( $dataTypeContent->avatar ) }}" style="width:200px; height:auto; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:10px;" />
                                                @endif
                                            </div>
                                            <input type="file" data-name="avatar" name="avatar">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="mt-5 focus:outline-none text-white text-xl py-2.5 px-5 border-b-4 border-red-600 rounded-md bg-red-500 hover:bg-red-400">
                                {{ __('voyager::generic.save') }}
                            </button>
                        </form>

                        <iframe id="form_target" name="form_target" style="display:none"></iframe>
                        <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
                            {{ csrf_field() }}
                            <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
                            <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                        </form>
                        
                        <form action="{{ route('delete_profil', $user->id) }}" method="DELETE">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="mt-5 focus:outline-none text-white text-xl py-2.5 px-5 border-b-4 border-blue-600 rounded-md bg-blue-900 hover:bg-blue-400">
                                Supprimer mon profil
                            </button>                
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
</x-app-layout>



