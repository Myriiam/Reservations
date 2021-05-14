<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ShowResource\Pages;
use App\Filament\Resources\ShowResource\RelationManagers;
use App\Filament\Roles;
use Filament\Resources\Forms\Components;
use Filament\Resources\Forms\Form;
use Filament\Resources\Resource;
use Filament\Resources\Tables\Columns;
use Filament\Resources\Tables\Filter;
use Filament\Resources\Tables\Table;

class ShowResource extends Resource
{
    public static $icon = 'heroicon-o-collection';

    public static function form(Form $form)
    {
        return $form
            ->schema([
                Components\TextInput::make('title')
                    ->autofocus()
                    ->required()
                    ->max(255)
                    ->unique('slug', 'title', true),
                Components\Textarea::make('description'),
                Components\Checkbox::make('bookable')
                    ->autofocus() // Autofocus the field.
                    ->inline(), // Render the checkbox inline with its label.
                Components\TextInput::make('price')->required(),
                Components\TextInput::make('poster_url')->required(),
                Components\TextInput::make('location_id')->required(),
                Components\TextInput::make('slug')->required(),
        ]);
    }

    public static function table(Table $table)
    {
        return $table
            ->columns([
                Columns\Text::make('title')->sortable()->primary(),
                Columns\Text::make('location_id')->sortable(),
                Columns\Text::make('bookable')->sortable(),
                Columns\Text::make('price')->sortable(),
                Columns\Text::make('slug')->sortable(),
                Columns\Text::make('description')->sortable(),
                Columns\Text::make('poster_url')->sortable(),
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
            Pages\ListShows::routeTo('/', 'index'),
            Pages\CreateShow::routeTo('/create', 'create'),
            Pages\EditShow::routeTo('/{record}/edit', 'edit'),
        ];
    }
}
