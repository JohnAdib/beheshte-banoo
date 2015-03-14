<?php
namespace content\camera;

class view extends \mvc\view
{
	function config()
	{
		$this->global->js       = array($this->url->static.'js/webcam/webcam.min.js');
		$this->include->barcode = true;
		$myform                 = $this->createform('.barcode');
		$myform->white("user_barcode, submit");
	}
}
?>