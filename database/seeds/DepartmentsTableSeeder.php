<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepartmentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('departments')->truncate();

        DB::table('departments')->insert([
            0 => [
                'name' => 'information technology'
            ],
            1 => [
                'name' => 'computer science'
            ],
            2 => [
                'name' => 'information system'
            ],
            3 => [
                'name' => 'diploma of information technology'
            ]
        ]);
    }
}
