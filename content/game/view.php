<?php
namespace content\game;

class view extends \mvc\view
{
	function config()
	{
		$this->include->barcode = true;
		$myform                 = $this->createform('.barcode');
		$myform->white("user_barcode, submit");

		$this->data->list       = $this->model()->get_list();
	}
}
?>