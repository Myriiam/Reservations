<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserLocation extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'user_id', 
        'location_id',
    ];

    protected $table = 'user_location';
  
    public $timestamps = false;


    /**
     * Get the user(s) for that association.
     */
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    
    /**
     * Get the location(s) for that association.
     */
    public function location()
    {
        return $this->belongsTo('App\Models\Location');
    }
}
