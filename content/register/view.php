<?php
namespace content\register;

class view extends \mvc\view
{
	function config()
	{
		$myform = $this->createform(".".$this->data->module);
	}
}
?>