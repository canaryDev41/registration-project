<?php

use App\Account;
use App\DepartmentFees;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(DepartmentsTableSeeder::class);
        $this->call(DepartmentFeesTableSeeder::class);
        $this->call(StudentsTableSeeder::class);
        $this->call(ResultTableSeeder::class);
        $this->call(AccountsTableSeeder::class);

    }
}
