<?php
namespace mvc;

class view extends \lib\mvc\view
{
	function _construct()
	{
		// define default value for global

		$this->data->site['title']   = T_("Behsht Banoo");
		$this->data->site['desc']    = T_("Behsht Banoo for children");
		$this->data->site['slogan']  = T_("Behsht Banoo");

		$this->data->page['desc']    = T_("Behsht Banoo is good");
		// add language list for use in display
		$this->global->langlist		  = array(
												'fa_IR' => 'فارسی',
												'en_US' => 'English'
												);
		$this->include->fontawesome  = true;
		$this->include->barcode      = true;
		$this->data->bodyclass       = 'unselectable';
		$this->data->permission      = $this->login('permission_id');

		// if you need to set a class for body element in html add in this value
		// $this->data->bodyclass      = null;

		if (locale_emulation())
			$this->include->phpgettext = true;


		if(method_exists($this, 'options')){
			$this->options();
		}
		
		$this->data->display['account'] = "content_account/main/layout.html";
	}

	function pushState()
	{
		$this->data->display['account'] = "content_account/main/xhr-layout.html";
		$this->data->display['cp']      = "content_cp/main/xhr-layout.html";
	}
}
?>