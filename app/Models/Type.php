<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    use HasFactory;

    protected $fillable = ['type'];

    protected $table = 'types';

    public $timestamps = false;

    /**
     * Retrieves all artists of this type = The artists that are defined by the type
     */
    public function artists() {
        return $this->belongsToMany(Artist::class);
        return $this->belongsToMany('App\Models\Artist');
    }
}
