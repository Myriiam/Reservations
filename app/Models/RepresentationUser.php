<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RepresentationUser extends Model
{
    use HasFactory;

    protected $fillable = [
        'places',
        'representation_id',
        'user_id',
    ];

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'representation_user';

    
    /**
     * Get all about the purchases of the user - relationship
     */
    public function ruUser()
    {
        return $this->belongsTo('App\Models\User');
    }

    /**
     * Get all about the purchases of the representation - relationship
     */
    public function ruRepresentation()
    {
        return $this->belongsTo('App\Models\Representation');
    }
}
