<?php
namespace content_account\home;

class controller extends \mvc\controller
{
	function _route()
	{
		$mymodule = $this->module();
		$islogin	 = $this->login();
		switch ($mymodule) 
		{
			case 'home':
				$this->redirector()->set_url("login")->redirect();
				break;

			case 'login':
			case 'signup':
			case 'recovery':
			case 'verificationsms':
				if(!$islogin)
				{
					$this->model_name	= 'content_account\\'.$mymodule.'\model';
					$this->display_name	= 'content_account\\'.$mymodule.'\display.html';
					$this->post($mymodule)->ALL($mymodule);
					$this->get()->ALL($mymodule);
				}
				else
				{
					$this->redirector()->set_domain()->set_url()->redirect();
					\lib\debug::true(T_("you are logined to system!"));
				}
				break;


			case 'changepass':
				if(!$islogin)
				{
					\lib\http::access(T_("you can't access to this page!"));
				}

			case 'verification':
				$this->model_name	= 'content_account\\'.$mymodule.'\model';
				$this->display_name	= 'content_account\\'.$mymodule.'\display.html';
				$this->put($mymodule)->ALL($mymodule);
				$this->get()->ALL($mymodule);
				break;

			// logout user from system then redirect to ermile
			case 'logout':
				$this->model_name	= 'mvc\model';
				$this->model()->put_logout();
				$this->redirector()->set_domain()->set_url()->redirect();
				break;

			// if user add another address show 404
			default:
				\lib\http::page();
				break;
		}
	}
}
?>