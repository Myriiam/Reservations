<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UserResource\Pages;
use App\Filament\Resources\UserResource\RelationManagers;
use App\Filament\Roles;
use Filament\Resources\Forms\Components;
use Filament\Resources\Forms\Form;
use Filament\Resources\Resource;
use Filament\Resources\Tables\Columns;
use Filament\Resources\Tables\Filter;
use Filament\Resources\Tables\Table;

class UserResource extends Resource
{
    public static $icon = 'heroicon-o-user';

    public static function form(Form $form)
    {
        return $form
            ->schema([
                Components\TextInput::make('login')
                    ->autofocus()
                    ->required()
                    ->max(255)
                    ->unique('email', 'login', true),
                Components\TextInput::make('firstname')->required(),
                Components\TextInput::make('lastname')->required(),
                Components\TextInput::make('langue')->required(),
                Components\TextInput::make('email')->required(),
                Components\TextInput::make('password')->required(),
        ]);
    }

    public static function table(Table $table)
    {
        return $table
            ->columns([
                Columns\Text::make('login')->sortable()->primary(),
                Columns\Text::make('firstname')->sortable(),
                Columns\Text::make('lastname')->sortable(),
                Columns\Text::make('langue')->sortable(),
                Columns\Text::make('email')->sortable(),
                Columns\Text::make('password')->sortable(),
            ])
            ->filters([
                //
            ]);
    }

    public static function relations()
    {
        return [
            //
        ];
    }

    public static function routes()
    {
        return [
            Pages\ListUsers::routeTo('/', 'index'),
            Pages\CreateUser::routeTo('/create', 'create'),
            Pages\EditUser::routeTo('/{record}/edit', 'edit'),
        ];
    }
}
