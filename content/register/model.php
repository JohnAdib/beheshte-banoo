<?php
namespace content\register;
use \lib\debug;

class model extends \mvc\model
{
	public function get_test($object)
	{
		return 1;
	}

	public function post_register()
	{
		$name      = utility::post('name');
		$family    = utility::post('family');
		$mobile    = utility::post('mobile');
		$birthdate = utility::post('birthdate');
		$country   = utility::post('country');
		$province  = utility::post('province');
		$codemelli = utility::post('codemelli');
		$passport  = utility::post('passport');

		debug::true('Test');
		return 2;
	}

// webcam example ********************************************************888
//     $encoded_data = $_POST['mydata'];
//     $binary_data = base64_decode( $encoded_data );

//     // save to server (beware of permissions)
//     $result = file_put_contents( 'webcam.jpg', $binary_data );
//     if (!$result) die("Could not save image!  Check file permissions.");

}
?>