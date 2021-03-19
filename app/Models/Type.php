<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    use HasFactory;

    protected $fillable = ['type'];

    protected $table = 'types';

    /**
     * Retrieves all artists of this type.
     */
    public function artists() {
        return $this->belongsToMany(Artist::class);
    }
}
