<?php
namespace content_report\home;


class controller extends \mvc\controller
{
	public function config()
	{
		$this->get()->ALL();
	}

	// for routing check
	function _route()
	{
		$mymodule = $this->module();
		$mychild  = $this->child();

		// if user dont login redirect to root and don't show this page
		if(!$this->login() || $this->login('permission_id') !== '1')
		{
			$this->model()->logger('access');
			$this->model()->_processor();
			\lib\error::access();
			$this->redirector()->set_domain()->set_url();
		}
	}
}
?>