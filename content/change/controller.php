<?php
namespace content\change;


class controller extends \content\home\controller
{
	public function config()
	{
		$this->post('change')->ALL();
	}

	// for routing check
	function _route()
	{
		
	}
}
?>