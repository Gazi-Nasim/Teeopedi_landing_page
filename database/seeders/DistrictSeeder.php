<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\District;

class DistrictSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        District::truncate();
        $district = [
            [
               'name' => 'Dhaka',
               'division_id' => '1',
            ],
            [
               'name' => 'Gazipur',
               'division_id' => '1',
            ],
            [
               'name' => 'Kishoreganj',
               'division_id' => '1',
            ],
            [
               'name' => 'Manikganj',
               'division_id' => '1',
            ],
            [
               'name' => 'Munshiganj',
               'division_id' => '1',
            ],
            [
               'name' => 'Narayanganj',
               'division_id' => '1',
            ],
            [
               'name' => 'Narsingdi',
               'division_id' => '1',
            ],
            [
               'name' => 'Tangail',
               'division_id' => '1',
            ],
            [
               'name' => 'Faridpur',
               'division_id' => '1',
            ],
            [
               'name' => 'Gopalganj',
               'division_id' => '1',
            ],
            [
               'name' => 'Madaripur',
               'division_id' => '1',
            ],
            [
               'name' => 'Rajbari',
               'division_id' => '1',
            ],
            [
               'name' => 'Shariatpur',
               'division_id' => '1',
            ],
            [
               'name' => 'Chittagong',
               'division_id' => '2',
            ],
            [
               'name' => 'Noakhali',
               'division_id' => '2',
            ],
            [
               'name' => 'Feni',
               'division_id' => '2',
            ],
            [
               'name' => 'Brahmanbaria',
               'division_id' => '2',
            ],
            [
               'name' => 'Comilla',
               'division_id' => '2',
            ],
            [
               'name' => 'Chandpur',
               'division_id' => '2',
            ],
            [
               'name' => 'Lakshmipur',
               'division_id' => '2',
            ],
            [
               'name' => 'Khagrachhari',
               'division_id' => '2',
            ],
            [
               'name' => 'Rangamati',
               'division_id' => '2',
            ],
            [
               'name' => 'Bandarban',
               'division_id' => '2',
            ],
            [
               'name' => 'Cox\'s Bazar',
               'division_id' => '2',
            ],
            [
               'name' => 'Bagerhat',
               'division_id' => '3',
            ],
            [
               'name' => 'Chuadanga',
               'division_id' => '3',
            ],
            [
               'name' => 'Jessore',
               'division_id' => '3',
            ],
            [
               'name' => 'Jhenaidah',
               'division_id' => '3',
            ],
            [
               'name' => 'Khulna',
               'division_id' => '3',
            ],
            [
               'name' => 'Kushtia',
               'division_id' => '3',
            ],
            [
               'name' => 'Magura',
               'division_id' => '3',
            ],
            [
               'name' => 'Meherpur',
               'division_id' => '3',
            ],
            [
               'name' => 'Narail',
               'division_id' => '3',
            ],
            [
               'name' => 'Satkhira',
               'division_id' => '3',
            ],
            [
                'name' => 'Habiganj',
                'division_id' => '4',
            ],
            [
               'name' => 'Moulvibazar',
               'division_id' => '4',
            ],
            [
               'name' => 'Sunamganj',
               'division_id' => '4',
            ],
            [
               'name' => 'Sylhet',
               'division_id' => '4',
            ],
            [
               'name' => 'Mymensingh',
               'division_id' => '5',
            ],
            [
               'name' => 'Netrokona',
               'division_id' => '5',
            ],
            [
               'name' => 'Jamalpur',
               'division_id' => '5',
            ],
            [
               'name' => 'Sherpur',
               'division_id' => '5',
            ],
            [
               'name' => 'Rajshahi',
               'division_id' => '6',
            ],
            [
               'name' => 'Natore',
               'division_id' => '6',
            ],
            [
               'name' => 'Naogaon',
               'division_id' => '6',
            ],
            [
               'name' => 'Sirajganj',
               'division_id' => '6',
            ],
            [
               'name' => 'Pabna',
               'division_id' => '6',
            ],
            [
               'name' => 'Bogura',
               'division_id' => '6',
            ],
            [
               'name' => 'Chapainawabganj',
               'division_id' => '6',
            ],
            [
               'name' => 'Joypurhat',
               'division_id' => '6',
            ],
            [
               'name' => 'Barisal',
               'division_id' => '7',
            ],
            [
               'name' => 'Barguna',
               'division_id' => '7',
            ],
            [
               'name' => 'Bhola',
               'division_id' => '7',
            ],
            [
               'name' => 'Jhalokati',
               'division_id' => '7',
            ],
            [
               'name' => 'Patuakhali',
               'division_id' => '7',
            ],
            [
               'name' => 'Pirojpur',
               'division_id' => '7',
            ],
            [
               'name' => 'Rangpur',
               'division_id' => '8',
            ],
            [
               'name' => 'Dinajpur',
               'division_id' => '8',
            ],
            [
               'name' => 'Kurigram',
               'division_id' => '8',
            ],
            [
               'name' => 'Nilphamari',
               'division_id' => '8',
            ],
            [
               'name' => 'Gaibandha',
               'division_id' => '8',
            ],
            [
               'name' => 'Thakurgaon',
               'division_id' => '8',
            ],
            [
               'name' => 'Panchagarh',
               'division_id' => '8',
            ],
            [
               'name' => 'Lalmonirhat',
               'division_id' => '8',
            ],
        ];
        foreach($district as $dist){
            District::create($dist);
        }
    }
}
