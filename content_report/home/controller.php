<?php
namespace content_report\home;


class controller extends \mvc\controller
{
	public function config()
	{
		// $mymodule = $this->module();
		// $this->post('report')->ALL();
		$this->get()->ALL();
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