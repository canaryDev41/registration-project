<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AccountsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('accounts')->truncate();

        DB::table('accounts')->insert([
            0 => [
                'value' => 13000,
                'student_id' => 1
            ],

            1 => [
                'value' => 8000,
                'student_id' => 2
            ]
        ]);
    }
}
