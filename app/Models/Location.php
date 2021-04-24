<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;
        /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'slug',
        'designation',
        'address',
        'locality_id',
        'website',
        'phone',
        'geolocation',
    ];

   /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'locations';

   /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
    
    /**
     * Get the locality of the location - relationship
     */
    public function locality()
    {
        return $this->belongsTo('App\Models\Locality');
    }

    /**
     * Get the show of the location - relationship
     */
    public function shows()
    {
        //return $this->belongsTo('App\Models\Show');
        return $this->hasMany('App\Models\Show');
    }


    /**
     * Get the representations in this location - relationship
     */
    public function representations()
    {
        return $this->hasMany('App\Models\Representation');
    }


}
