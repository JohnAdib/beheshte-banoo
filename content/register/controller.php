<?php
namespace content\register;
use \lib\saloos;

class controller extends \mvc\controller
{
	public function config()
	{

	}

	// for routing check
	function _route()
	{
		// if user dont login redirect to root and don't show this page
		if(!$this->login())
		{
			$this->model()->logger('access');
			$this->model()->_processor();
			\lib\http::access(T_("Access Denied!"));
			$this->redirector()->set_domain()->set_url();
		}
	}
}
?>