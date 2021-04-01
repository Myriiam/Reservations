<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'role', 
    ];

   /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'roles';

   /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    
     /**
     * The user's role(s) - relationship.
     */
    public function users()
    {
        return $this->belongsToMany('App\Models\User');
    }
}
