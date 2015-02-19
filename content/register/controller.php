<?php
namespace content\register;
use \lib\saloos;

class controller extends \mvc\controller
{
	public function config()
	{
		$this->post('register')->ALL();
	}

	// for routing check
	function _route()
	{
		// if user dont login redirect to root and don't show this page
		if(!$this->login())
		{
			$this->model()->logger('access');
			$this->model()->_processor();
			\lib\error::access();
			$this->redirector()->set_domain()->set_url();
		}
	}
}
?>