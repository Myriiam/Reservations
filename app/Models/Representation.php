<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Representation extends Model
{
    use HasFactory;
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'show_id',
        'when',
        'location_id',
    ];

   /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'representations';

   /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;
    
    /**
     * Get the actual location of the representation
     */
    public function location()
    {
        return $this->belongsTo('App\Models\Location');
    }
    
    /**
     * Get the show of the representation
     */
    public function show()
    {
        return $this->belongsTo('App\Models\Show');
    }


    /**
     * Get the users of the representation
     */
    public function users()
    {
        return $this->belongsToMany('App\Models\User');
    }
}
