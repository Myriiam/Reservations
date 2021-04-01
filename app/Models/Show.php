<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Show extends Model
{
    
    use HasFactory;
        /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'slug',
        'title',
        'description',
        'poster_url',
        'location_id',
        'bookable',
        'price',
    ];

   /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'shows';

   /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
    
    /**
     * Get the location of the show - relationship
     */
    public function location()
    {
        //return $this->hasMany('App\Models\Location');
        return $this->belongsTo('App\Models\Location');
    }

    /**
     * Get the representations of this show - relationship
     */
    public function representations()
    {
        return $this->hasMany('App\Models\Representation');
    }

    /**
     * Get the performance (artist in a type of collaboration) for the show - relashionship
     */
    public function artistTypes()
    {
        return $this->belongsToMany('App\Models\ArtistType');
    }
}
