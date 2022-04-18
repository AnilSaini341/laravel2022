<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class TestSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //php artisan make:seeder TestSeeder  -create Seeder cmd
        //php artisan db:seed --class=TestSeeder -Run Seeder cmd

        DB::table('test')->insert([
            'name'=>Str::random('10'),
            'email'=>Str::random('7').'@gmail.com'
        ]);
    }
}
