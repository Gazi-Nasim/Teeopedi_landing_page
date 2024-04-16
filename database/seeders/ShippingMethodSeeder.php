<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ShippingMethod;

class ShippingMethodSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ShippingMethod::truncate();
            $shipping_method = [
                [
                   'title' => 'Flat Rate',
                   'fee' => 0,
                ],
                [
                    'title' => 'Free Shipping',
                    'fee' => 0,
                ],
                [
                    'title' => 'Local Delivery',
                    'fee' => 0,
                ],
            ];
            foreach($shipping_method as $shipping){
                ShippingMethod::create($shipping);
            }
    }
}
