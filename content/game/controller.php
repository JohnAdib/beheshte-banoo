<?php
namespace content\game;


class controller extends \content\home\controller
{
	public function config()
	{
		$this->post('game')->ALL();

	}
}
?>