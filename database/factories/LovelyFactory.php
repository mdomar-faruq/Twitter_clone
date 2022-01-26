<?php

namespace Database\Factories;

use App\Models\Lovely;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class LovelyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            "user_id" => $this->factoryForModel(User::class),
            "body" => $this->faker->sentence,
        ];
    }
}