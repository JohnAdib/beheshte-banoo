<?php
namespace content\point;


class controller extends \content\home\controller
{
	public function config()
	{
		$this->post('point')->ALL();
	}

	// for routing check
	function _route()
	{
		
	}
}
?>