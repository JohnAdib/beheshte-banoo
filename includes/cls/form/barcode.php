<?php
namespace cls\form;

class barcode extends \lib\form
{
	function __construct()
	{
		$this->barcode = $this->make("number")->name("barcode")->required()
						// ->type("number")
						->type("tel")
						->min(10000)->max(99999)->value(\lib\utility::get('barcode'))
						->pattern('.{5,}')->class('row')
						->tabindex(1)->autofocus()->pl(T_('Please Scan or enter barcode'));


		$this->submit	= $this->make('submit')->value(T_('Check'))->title(T_('Click to check'))
						->tabindex(2)
						->class('button primary row-clear row');
	}
}
?>