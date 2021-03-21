<?php

namespace Database\Factories;

use App\Models\Show;
use App\Models\Location;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ShowFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Show::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $title = $this->faker->unique()->sentence(2, true);
        return [
            'slug' => Str::slug($title),
            'title' => $title,
            'description'=> $this->faker->sentence(15, true),
            'poster_url'=> 'default.jpg',
            'location_id'=> Location::all()->random()->id,
            'bookable'=> $this->faker->boolean(50),
            'price'=> $this->faker->randomFloat(2, 5, 40),
        ];
    }
}
