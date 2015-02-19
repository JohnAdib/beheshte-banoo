<?php
namespace content\register;

class view extends \mvc\view
{
	function config()
	{
		$this->include->barcode = true;
		$myform                 = $this->createform('@'.db_name.'.users','add');
		$myform->white("user_gender, user_firstname, user_lastname, user_mobile, user_birthdate, country_id, user_province, user_codemelli, user_passport, user_barcode, submit");
	}
}
?>