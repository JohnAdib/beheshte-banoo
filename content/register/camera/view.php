<?php
namespace content\register\camera;

class view extends \mvc\view
{
	function config()
	{
		$myform = $this->createform('.barcode');
		$myform->white("user_barcode, submit");
	}
}
?>