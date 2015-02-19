<?php
namespace content\game;

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