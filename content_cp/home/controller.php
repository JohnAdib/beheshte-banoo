<?php
namespace content_cp\home;

class controller extends \mvc\controller
{
	function _route()
	{
		// if user dont login or dont admin then redirect to root
		if(!$this->login() || $this->login('permission_id') != 1)
		{
			$this->model()->logger('access');
			$this->model()->_processor();
			// $this->redirector()->set_domain()->set_url();
			\lib\error::access();
		}

		$mymodule = $this->module();
		$mychild	 = $this->child();

		// Restrict unwanted child
		if($mychild && !($mychild=='add' || $mychild=='edit' || $mychild=='delete' || $mychild=='options')
			 || !$this->cpModlueList()
			)
			\lib\error::page(T_("Not found!"));


		if( is_file(root.'content_cp/'.$mymodule.'/display.html') )
		{
			$this->display_name	= 'content_cp\\'.$mymodule.'\display.html';
		}
		else
		{
			$this->display_name	= 'content_cp\main\layout.html';
		}

		if($mymodule=='home')
			return;

		// var_dump($this->childparam($mychild));


		// on module root without child like /post
		if($mychild)
		{
			//all("edit=.*")
			if($mychild == 'delete')
			{
				// $this->model()->delete();
				// $controller->route_check_true = true;
				// $this->redirector()->set_url($mymodule); //->redirect();
				$this->get($mychild)->ALL();		// @hasan: regular?
				$this->post($mychild)->ALL();
				// return;
				// $this->redirector()->set_domain('cp.ermile.dev')->set_url('banks');
			}
			if($mychild == 'edit')
			{
				// var_dump($this->model()->datarow());
				$this->get(null, 'child')->ALL();
				$this->post($mychild)->ALL();
			}
			elseif($mychild == 'add')
			{
				$this->get(null, 'child')->ALL();
				$this->post($mychild)->ALL();
			}
			elseif($mychild == 'options')
			{
				$this->post($mychild)->ALL();
			}

		}
		else
		{
			$this->get(null, 'datatable')->ALL();
		}
		// $this->model_name	= 'content_cp\\'.$mymodule.'\model';
		// $this->post($mymodule)->ALL($mymodule);
	}


	// if url is outside of our list, return false else if valid module return true
	public function cpModlueList($_module = null)
	{
		$mylist		= array(
						'barcodes',
						'booths',
						'games',
						'kindergartens',
						'options',
						'permissiondetails',
						'permissions',
						'sections',
						'tokens',
						'userlogs',
						'usermetas',
						'users',
					);
		if($_module == 'all')
			return $mylist;

		$_module 	= $_module? $_module: $this->module();
		if(in_array($_module, $mylist) || $_module == 'home')
			return true;
		else
			return false;
	}
}
?>