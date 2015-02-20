<?php
namespace content\home;


class controller extends \mvc\controller
{
	// for routing check
	function _route()
	{
		if($this->login('permission_id') === '1')
			return;

		if($this->module() ==='home')
			return;

		// if user dont login redirect to root and don't show this page
		if(!$this->login() || $this->login('permission_id') !== '2')
		{
			$this->model()->logger('access');
			$this->model()->_processor();
			\lib\error::access();
			$this->redirector()->set_domain()->set_url();
		}
	}
}
?>