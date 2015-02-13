<?php
namespace cls\form;

class register extends \lib\form
{
	function __construct()
	{
		$this->gender   =  $this->make("radio")->name("gender")->type("radio");
		$this->gender   =  $this->child()->value($value)->label($value)->id($value);


		$this->mobile	 = $this->make('mobile')->label(null)->desc(T_("Enter your registered mobile"))
							 ->value(((isset($_COOKIE["mobile"]))?htmlspecialchars('+'.$_COOKIE["mobile"]):null));


		$this->submit	 = $this->make('submit')->value(T_('Register'))->title(T_('Register'));
	}
}
?>