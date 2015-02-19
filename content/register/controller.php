<?php
namespace content\register;
use \lib\saloos;

class controller extends \mvc\controller
{
	public function config()
	{
		$mychild	 = $this->child();
		if($mychild === 'camera')
		{
			$this->display_name	= 'content\register\camera\display.html';
			// $this->model_name	= 'content\register\camera\model';
			$this->post('camera')->ALL();
			$this->get(null, 'camera')->ALL();
		}
		else
		{
			$this->post('register')->ALL();
		}

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