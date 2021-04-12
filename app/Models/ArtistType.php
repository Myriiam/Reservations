<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ArtistType extends Model
{
    use HasFactory;

    protected $fillable = [
        'artist_id', 'type_id',
    ];

    protected $table = 'artist_type';
  
    public $timestamps = false;

    
    /**
     * Get the show of the performance (artist in a type of collaboration for a show)
     */
    public function shows()
    {
        return $this->belongsToMany('App\Models\Show');
    }

    /**
     * Get the artist for that association.
     */
    public function artist()
    {
        return $this->belongsTo('App\Models\Artist');
    }
    
    /**
     * Get the type for that association.
     */
    public function type()
    {
        return $this->belongsTo('App\Models\Type');
    }

}
