<?php

namespace App\Filament\Resources\UsersResource\Pages;

use App\Filament\Resources\UsersResource;
use Filament\Resources\Pages\ListRecords;

class ListUsers extends ListRecords
{
    public static $resource = UsersResource::class;
}
