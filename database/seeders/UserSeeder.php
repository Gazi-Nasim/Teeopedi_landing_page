<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Seeder;
use App\Models\User;
class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::truncate();
        $user = [
            [
               'name' => 'admin',
               'username' => 'admin',
               'email' => 'admin@admin.com',
               'password' =>Hash::make('A989898k'),
               'avatar' =>'',
               'gender' =>0,
               'phone'=>'01715587496',
               'address' =>'',
               'zip' =>NULL,
               'city' =>'',
               'state/district' =>'',
               'country' =>'',
               'role' =>1,
               'account_type' =>1,
               'provider_id' =>'',

            ],
            [
                'name' => 'user',
                'username' => 'hello.user',
                'email' => 'user@gmail.com',
                'password' =>Hash::make('A989898k'),
                'avatar' =>'',
                'gender' =>0,
                'phone'=>'01715587497',
                'address' =>'',
                'zip' =>NULL,
                'city' =>'',
                'state/district' =>'',
                'country' =>'',
                'role' =>2,
                'account_type' =>1,
                'provider_id' =>'',
 
             ],
        ];
        foreach($user as $us){
            User::create($us);
        }
    }
    
}
