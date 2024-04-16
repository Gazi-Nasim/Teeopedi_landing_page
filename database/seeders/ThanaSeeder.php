<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Thana;

class ThanaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Thana::truncate();
        $all_thana = [
            [
                'name' => 'Adabor',
                'district_id' => 1,
            ],
            [
                'name' => 'Airport',
                'district_id' => 1,
            ],
            [
                'name' => 'Badda',
                'district_id' => 1,
            ],
            [
                'name' => 'Banani',
                'district_id' => 1,
            ],
            [
                'name' => 'Bangshal',
                'district_id' => 1,
            ],
            [
                'name' => 'Bhashantek',
                'district_id' => 1,
            ],
            [
                'name' => 'Cantonment',
                'district_id' => 1,
            ],
            [
                'name' => 'Chackbazar',
                'district_id' => 1,
            ],
            [
                'name' => 'Darussalam',
                'district_id' => 1,
            ],
            [
                'name' => 'Daskhinkhan',
                'district_id' => 1,
            ],
            [
                'name' => 'Demra',
                'district_id' => 1,
            ],
            [
                'name' => 'Dhamrai',
                'district_id' => 1,
            ],
            [
                'name' => 'Dhanmondi',
                'district_id' => 1,
            ],
            [
                'name' => 'Dohar',
                'district_id' => 1,
            ],
            [
                'name' => 'Gandaria',
                'district_id' => 1,
            ],

            [
                'name' => 'Gulshan',
                'district_id' => 1,
            ],
            [
                'name' => 'Hazaribag',
                'district_id' => 1,
            ],

            [
                'name' => 'Jatrabari',
                'district_id' => 1,
            ],

            [
                'name' => 'Kafrul',
                'district_id' => 1,
            ],
            [
                'name' => 'Kalabagan',
                'district_id' => 1,
            ],

            [
                'name' => 'Kamrangirchar',
                'district_id' => 1,
            ],
            [
                'name' => 'Keraniganj',
                'district_id' => 1,
            ],
            [
                'name' => 'Khilgaon',
                'district_id' => 1,
            ],

            [
                'name' => 'Khilkhet',
                'district_id' => 1,
            ],
            [
                'name' => 'Kotwali',
                'district_id' => 1,
            ],

            [
                'name' => 'Lalbag',
                'district_id' => 1,
            ],
            [
                'name' => 'Mirpur Model',
                'district_id' => 1,
            ],
            [
                'name' => 'Mohammadpur',
                'district_id' => 1,
            ],
            [
                'name' => 'Motijheel',
                'district_id' => 1,
            ],

            [
                'name' => 'Mugda',
                'district_id' => 1,
            ],
            [
                'name' => 'Nawabganj',
                'district_id' => 1,
            ],
            [
                'name' => 'New Market',
                'district_id' => 1,
            ],
            [
                'name' => 'Pallabi',
                'district_id' => 1,
            ],
            [
                'name' => 'Paltan',
                'district_id' => 1,
            ],
            [
                'name' => 'Ramna',
                'district_id' => 1,
            ],
            [
                'name' => 'Rampura',
                'district_id' => 1,
            ],

            [
                'name' => 'Rupnagar',
                'district_id' => 1,
            ],

            [
                'name' => 'Sabujbag',
                'district_id' => 1,
            ],
            [
                'name' => 'Savar',
                'district_id' => 1,
            ],

            [
                'name' => 'Shah Ali',
                'district_id' => 1,
            ],

            [
                'name' => 'Shahbag',
                'district_id' => 1,
            ],
            [
                'name' => 'Shahjahanpur',
                'district_id' => 1,
            ],

            [
                'name' => 'Sherebanglanagar',
                'district_id' => 1,
            ],
            [
                'name' => 'Shyampur',
                'district_id' => 1,
            ],


            [
                'name' => 'Sutrapur',
                'district_id' => 1,
            ],

            [
                'name' => 'Tejgaon',
                'district_id' => 1,
            ],
            [
                'name' => 'Tejgaon I/A',
                'district_id' => 1,
            ],

            [
                'name' => 'Turag',
                'district_id' => 1,
            ],

            [
                'name' => 'Uttara',
                'district_id' => 1,
            ],
            [
                'name' => 'Uttara West',
                'district_id' => 1,
            ],

            [
                'name' => 'Uttarkhan',
                'district_id' => 1,
            ],

            [
                'name' => 'Vatara',
                'district_id' => 1,
            ],
            [
                'name' => 'Wari',
                'district_id' => 1,
            ],
            [
                'name' => 'Gazipur Sadar-Joydebpur',
                'district_id' => 2,
            ],

            [
                'name' => 'Kaliakior',
                'district_id' => 2,
            ],
            [
                'name' => 'Kapasia',
                'district_id' => 2,
            ],

            [
                'name' => 'Sripur',
                'district_id' => 2,
            ],

            [
                'name' => 'Kaliganj',
                'district_id' => 2,
            ],
            [
                'name' => 'Tongi',
                'district_id' => 2,
            ],
            
        ];
        foreach($all_thana as $thana){
            Thana::create($thana);
        }
    }
}
