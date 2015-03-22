<?php
namespace content\register;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;

class model extends \mvc\model
{
	public function post_register()
	{
		// read barcode and check it
		$barcode =  utility::post('barcode');
		$id      = $this->checkBarcode($barcode);
		if($id)
		{
			debug::error(T_("This card number in use!"));
			return;
		}

		$qry     = $this->sql()->tableUsers();
		$fields  = array( 'gender','firstname','lastname','mobile',
								'birthyear','nationalcode','passport','country_','province', 'barcode');


		foreach ($fields as $value)
		{
			$post    = utility::post($value);

			if($value === 'country_')
				$tmp_set = 'setCountry_id';
			else
				$tmp_set = 'setUser_'.$value;

			$qry     = $qry->$tmp_set($post);
		}
		$qry    = $qry->setPermission_id(4)->setUser_enterdatetime(date('Y-m-d H:i:s'));
		$qry    = $qry->insert();
		$id   = $qry->LAST_INSERT_ID();


		$this->commit(function($id)
		{
			$folder = root.'public_html/s-up/' . ceil($id/1000)*1000;
			if(!File::exists($folder))
			{
				File::makeDir($folder);
			}
			// copy one image as default image for each user
			$to   = $folder . '/'.$id.'-thumb.jpg';
			$from = root.'public_html/static/images/face/'.utility::post('gender').'-'.mt_rand(1,5).'.jpg';
			$a    = File::copy($from , $to);
			// var_dump($a);
			debug::true(T_("register successfully"));
			// if($this->login('permission_id') == 5 )
				// $this->redirector()->set_domain()->set_url('camera');
		},$id);
		$this->rollback(function() { debug::title(T_("transaction error").': ');     });
	}
}
?>