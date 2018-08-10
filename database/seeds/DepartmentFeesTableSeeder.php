<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepartmentFeesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('department_fees')->truncate();

        DB::table('department_fees')->insert([
            0 => [
                'cost' => 10000,
                'year'=> '2017-5-4',
                'department_id' => 1
            ],
            1 => [
                'cost' => 12000,
                'year'=> '2017-4-7',
                'department_id' => 2
            ]
        ]);
    }
}
