<?php
namespace content\report;


class controller extends \content\home\controller
{
	public function config()
	{
		$this->post('report')->ALL();
	}

	// for routing check
	function _route()
	{
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