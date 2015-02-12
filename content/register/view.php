<?php
namespace content\register;

class view extends \mvc\view
{
	function config()
	{
		// $myform = $this->createform(".".$this->data->module);

		$myform = $this->createform('@'.db_name.'.users','add');
	}
}
?>