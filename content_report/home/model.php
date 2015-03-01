<?php
namespace content_report\home;


class model extends \mvc\model
{
	// SELECT DATE_FORMAT(`user_enterdatetime`,'%d/%m/%Y'), count(*) 
	// FROM `users` group by `user_enterdatetime`
	// 
	// 
	// select date_format(`users`.`user_enterdatetime`,'%d/%m/%Y') AS
	// `date`,`user_gender` AS 'value', count(*) from `users` 
	// group by `users`.`user_enterdatetime`, `user_gender`

	public function get_list()
	{
		$mymodule = $this->module();
		$mychild  = $this->child();
		if(!$mychild)
			\lib\error::access();

		$mytable  = 'tableRpt_'.$mymodule.'_'.$mychild;
		$qry      = $this->sql()->$mytable()->select();

		return $qry->allassoc();
	}
}
?>