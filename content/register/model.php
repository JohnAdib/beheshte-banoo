<?php
namespace content\register;
use \lib\debug;

class model extends \mvc\model
{
	public function get_test($object)
	{
		return 1;
	}

	public function post_test($object)
	{
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