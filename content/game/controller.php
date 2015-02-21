<?php
namespace content\game;


class controller extends \content\home\controller
{
	public function config()
	{
		$this->post('game')->ALL('game');
		$this->post('absent')->ALL('game/absent');
		$this->post('start')->ALL('game/start');
		$this->post('win')->ALL('game/win');
		$this->post('loose')->ALL('game/loose');
	}

	// for routing check
	function _route()
	{
		if($this->login('permission_id') === '1')
			return;

		// if user dont login redirect to root and don't show this page
		if(!$this->login() && $this->module() !=='home' || $this->login('permission_id') !== '3')
		{
			$this->model()->logger('access');
			$this->model()->_processor();
			\lib\error::access();
			$this->redirector()->set_domain()->set_url();
		}
	}
}
?>