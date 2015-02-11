<?php
namespace cls\form;

class register extends \lib\form
{
	function __construct()
	{

		$this->mobile	 = $this->make('mobile')->label(null)->desc(T_("Enter your registered mobile"))
							 ->value(((isset($_COOKIE["mobile"]))?htmlspecialchars('+'.$_COOKIE["mobile"]):null));
		$this->password = $this->make('#password')->name('password')->label(null)->pl(T_('Password'))->desc(T_("Enter your password"));
		$this->submit	 = $this->make('submit')->value(T_('Login'))->title(T_('Login'));
	}
}
?>