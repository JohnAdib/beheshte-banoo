<?php
namespace content_report\home;

class view extends \mvc\view
{
	function config()
	{
		$this->include->chart = true;
		$this->global->title  = T_('Reports');
		$this->data->list     = $this->model()->get_list();
		var_dump($this->data->list);
	}
}
?>