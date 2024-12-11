<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'studentNo' => fake()->randomNumber(7),
            'firstName' => fake()->firstName(),
            'lastName' => fake()->lastName(),
            'courseID' => fake()->numberBetween(1, 4),
            'yearLevelID' => fake()->numberBetween(1, 4),
            'contactNo' => fake()->randomNumber(9),
            'photo' => null,
        ];
    }
}
