<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ResultTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('results')->truncate();

        DB::table('results')->insert([
            0 => [
                'gpa' => '3.22',
                'student_id' => 1,
                'academic_decision' => 'pass',
            ],

            1 => [
                'gpa' => '2.69',
                'student_id' => 2,
                'academic_decision' => 'pass',
            ]
        ]);

        DB::table('result_details')->truncate();

        DB::table('result_details')->insert([
            0 => [
                'course_name' => 'network advance',
                'course_points' => 3.11,
                'course_appreciation' => 'B+',
                'result_id' => 1
            ],

            1 => [
                'course_name' => 'java programming lang',
                'course_points' => 2.99,
                'course_appreciation' => 'B',
                'result_id' => 1
            ],

            2 => [
                'course_name' => 'AI',
                'course_points' => 3.55,
                'course_appreciation' => 'A',
                'result_id' => 1
            ],

            3 => [
                'course_name' => 'web technologies',
                'course_points' => 3.19,
                'course_appreciation' => 'B+',
                'result_id' => 1
            ],

            4 => [
                'course_name' => 'network advance',
                'course_points' => 3.00,
                'course_appreciation' => 'B+',
                'result_id' => 2
            ],

            5 => [
                'course_name' => 'java programming lang',
                'course_points' => 2.55,
                'course_appreciation' => 'B',
                'result_id' => 2
            ],

            6 => [
                'course_name' => 'AI',
                'course_points' => 3.50,
                'course_appreciation' => 'A',
                'result_id' => 2
            ],

            7 => [
                'course_name' => 'web technologies',
                'course_points' => 2.12,
                'course_appreciation' => 'B',
                'result_id' => 2
            ],
        ]);
    }
}
