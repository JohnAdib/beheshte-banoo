<?php
namespace content\camera;


class controller extends \content\home\controller
{
	public function config()
	{
		$this->post('camera')->ALL();
	}
}
?>