<x-app-layout>
    <x-slot name="header"></x-slot>
    <h2 class="font-semibold text-5xl text-center text-red-600 leading-tight">
            {{ __('Profile Page') }}
    </h2>
    @php
        $dataTypeContent = $user;
        $dataType = $user;
    @endphp

    <main class= "content">
        <div class= 'flex items-center justify-center'>
            <div class="bg-white shadow-md rounded mt-6 px-8 pt-6 pb-8 mb-4 flex flex-col my-2 w-2/3 mx-auto">
                <div class="page-content container-fluid">
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
                                            <label for="name">{{ __('voyager::generic.name') }}</label>
                                            <input type="text" class="form-control" id="name" name="name" placeholder="{{ __('voyager::generic.name') }}"
                                                   value="{{ old('name', $dataTypeContent->name ?? '') }}">
                                        </div>

                                        <div class="form-group">
                                            <label for="email">{{ __('voyager::generic.email') }}</label>
                                            <input type="email" class="form-control" id="email" name="email" placeholder="{{ __('voyager::generic.email') }}"
                                                   value="{{ old('email', $dataTypeContent->email ?? '') }}">
                                        </div>

                                        <div class="form-group">
                                            <label for="password">{{ __('voyager::generic.password') }}</label>
                                            @if(isset($dataTypeContent->password))
                                                <br>
                                                <small>{{ __('voyager::profile.password_hint') }}</small>
                                            @endif
                                            <input type="password" class="form-control" id="password" name="password" value="" autocomplete="new-password">
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
                                        <div class="form-group">
                                            <label for="locale">{{ __('voyager::generic.locale') }}</label>
                                            <select class="form-control select2" id="locale" name="locale">
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
                                    <div class="panel-body">
                                        <div class="form-group">
                                            @if(isset($dataTypeContent->avatar))
                                                <img src="{{ filter_var($dataTypeContent->avatar, FILTER_VALIDATE_URL) ? $dataTypeContent->avatar : Voyager::image( $dataTypeContent->avatar ) }}" style="width:200px; height:auto; clear:both; display:block; padding:2px; border:1px solid #ddd; margin-bottom:10px;" />
                                            @endif
                                            <input type="file" data-name="avatar" name="avatar">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary pull-right save">
                            {{ __('voyager::generic.save') }}
                        </button>
                    </form>

                    <iframe id="form_target" name="form_target" style="display:none"></iframe>
                    <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
                        {{ csrf_field() }}
                        <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
                        <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
                    </form>
                </div>
            </div>
        </div>

    </main>
</x-app-layout>



