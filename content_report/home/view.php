<?php
namespace content_report\home;

class view extends \mvc\view
{
	function config()
	{
		$this->data->list = $this->model()->get_list();
		// var_dump($this->data->list);
	}
}
?>