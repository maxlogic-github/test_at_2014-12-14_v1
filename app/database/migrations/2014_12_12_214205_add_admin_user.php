<?php


use Illuminate\Database\Migrations\Migration;


class AddAdminUser extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
            $user = Sentry::createUser(array(
                'email'     => 'admin@gmail.com',
                'password'  => 'password',
                'activated' => true,
            ));
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
	}

}
