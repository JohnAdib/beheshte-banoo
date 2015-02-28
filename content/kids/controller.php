<?php
namespace content\kids;


class controller extends \content\home\controller
{
	public function config()
	{
		$this->post('kids')->ALL('kids');
		$this->post('call')->ALL('kids/call');
		$this->post('delivery')->ALL('kids/delivery');
	}

	// for routing check
	function _route()
	{
		if($this->login('permission_id') === '1')
			return;

		// if user dont login redirect to root and don't show this page
		if(!$this->login() && $this->module() !=='home' || $this->login('permission_id') !== '5')
		{
			$this->model()->logger('access');
			$this->model()->_processor();
			\lib\error::access();
			$this->redirector()->set_domain()->set_url();
		}
	}
}
?>