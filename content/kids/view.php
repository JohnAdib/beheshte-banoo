<?php
namespace content\kids;

class view extends \mvc\view
{
	function config()
	{
		$this->include->barcode = true;
		$myform                 = $this->createform('@'.db_name.'.kids','add', T_('Register kid'));
		$myform->white("kid_color, kid_number, submit");


		$this->data->list 	   = $this->model()->get_list();
	}
}
?>