<?php
namespace cls\form;

class barcode extends \lib\form
{
	function __construct()
	{
		$this->barcode = $this->make("number")->name("barcode")->required()
						// ->type("number")
						->type("tel")
						// ->min(10000)->max(99999)
						->pattern('.{5,}')->class('span8')
						->tabindex(1)->autofocus()->title(T_('Please Scan or enter barcode'));


		$this->submit	= $this->make('submit')->value(T_('Check'))->title(T_('Click to check'))
						->tabindex(2)
						->class('span4');
	}
}
?>