<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StudentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('students')->truncate();

        DB::table('students')->insert([
            0 => [
                'name' => 'Omer Khalid',
                'stdID' => '1',
                'password' => bcrypt('password'),
                'email' => 'omer-khalid@gmail.com',
                'phone' => '0920733301',
                'department_id' => 1
            ],
            1 => [
                'name' => 'Ali Hassan',
                'stdID' => '2',
                'password' => bcrypt('password'),
                'email' => 'ali-hassan@gmail.com',
                'phone' => '0912606039',
                'department_id' => 1
            ],
            2 => [
                'name' => 'Mohammed Awad',
                'stdID' => '3',
                'password' => bcrypt('password'),
                'email' => 'moh-awad@gmail.com',
                'phone' => '0924070016',
                'department_id' => 1
            ],
        ]);
    }
}
