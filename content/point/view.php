<?php
namespace content\point;

class view extends \mvc\view
{
	function config()
	{
		$this->include->barcode = true;
		$myform                 = $this->createform('.barcode');
		$myform->white("user_barcode, submit");
	}
}
?>