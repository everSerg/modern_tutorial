<?php

use Illuminate\Database\Seeder;

class AdminTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = new \App\Admin();
        $admin->email = "admin@admin.com";
        $admin->password = bcrypt("vcxz1234");
        $admin->save();
    }
}
