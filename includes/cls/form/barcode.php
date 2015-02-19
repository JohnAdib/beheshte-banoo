<?php
namespace cls\form;

class barcode extends \lib\form
{
	function __construct()
	{
		$this->barcode = $this->make("number")->name("barcode")->type("number")
						->min(10000)->max(99999)->pattern('.{5,}')->class('span8')
						->tabindex(1)->autofocus()
						->pos('hint-bottom hint-always')->desc(T_('Please Scan or enter barcode'));


		$this->submit	= $this->make('submit')->value(T_('Check'))->title(T_('Check'))
						->tabindex(2)
						->class('span4');
	}
}
?>