<?php
namespace content\register;
use \lib\debug;
use \lib\utility;

class model extends \mvc\model
{
	public function post_register()
	{
		$qry     = $this->sql()->tableUsers();
		$fields  = array( 'gender','firstname','lastname','mobile',
								'birthdate','codemelli','passport','country','province', 'barcode');

		foreach ($fields as $value)
		{
			$post    =  utility::post($value);
			$tmp_set = 'setUser_'.$value;
			$qry     = $qry->$tmp_set($post);
		}
		$qry    = $qry->setPermission_id(4)->setUser_enterdatetime(date('Y-m-d H:i:s'));
		$qry    = $qry->insert();

		$this->commit(function()   { debug::true(T_("register successfully")); });
		$this->rollback(function() { debug::error(T_("register failed!"));     });
	}
}
?>