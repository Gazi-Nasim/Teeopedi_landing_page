<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Division;

class DivisionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Division::truncate();
        $division = [
            [
               'name' => 'Dhaka',
               'country_id' => '1',
            ],
            [
               'name' => 'Chittagong',
               'country_id' => '1',
            ],
            [
               'name' => 'Khulna',
               'country_id' => '1',
            ],
            [
               'name' => 'Sylhet',
               'country_id' => '1',
            ],
            [
               'name' => 'Mymensingh',
               'country_id' => '1',
            ],
            [
               'name' => 'Rajshahi',
               'country_id' => '1',
            ],
            [
               'name' => 'Barisal',
               'country_id' => '1',
            ],
            [
               'name' => 'Rangpur',
               'country_id' => '1',
            ],
        ];
        foreach($division as $div){
            Division::create($div);
        }
    }
}
