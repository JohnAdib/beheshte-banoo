<?php
namespace content\kid;


class controller extends \content\home\controller
{
	public function config()
	{
		$this->post('kid')->ALL('kid');
		$this->post('call')->ALL('kid/call');
		$this->post('delivery')->ALL('kid/delivery');
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
			$this->redirector()->set_domain()->set_url();
			\lib\debug::error('eee');
			$this->model()->_processor(array('force_stop' => true));
		}
	}
}
?>