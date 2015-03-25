<?php
namespace content\register;

class view extends \mvc\view
{
	function config()
	{
		$submit_value = T_('Register');
		// if($this->login('permission_id') == 5)
			// $submit_value = T_('Next: Take Picture');

		$this->include->barcode = true;
		$myform                 = $this->createform('@'.db_name.'.users','add', $submit_value);
		$myform->white("user_gender, user_firstname, user_lastname, user_mobile, user_barcode, user_birthyear, country_id, user_province, user_nationalcode, user_passport, submit");
	}
}
?>