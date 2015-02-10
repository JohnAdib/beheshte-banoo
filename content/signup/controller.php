<?php
namespace content\login;

class controller extends \mvc\controller
{
	function _route()
	{
		if($this->login())
		{
			$myssid    = isset($_SESSION['ssid'])? '?ssid='.$_SESSION['ssid'].'&from=login': null;
			$this->redirector()->set_domain()->set_url($myssid)->redirect();
			\lib\debug::true(T_("you are logined to system!"));
		}
		else
		{
			$this->post('login')->ALL("/^login$/");
			// $this->get()->ALL("/^login$/");
		}
	}
}
?>