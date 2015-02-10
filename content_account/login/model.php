<?php
namespace content_account\login;
use \lib\utility;
use \lib\debug;

class model extends \mvc\model
{
	public function post_login()
	{
		// get parameters and set to local variables
		$mymobile   = str_replace(' ', '', utility::post('mobile'));
		$mymobile   = substr($mymobile, 1);
		$mypass     = utility::post('password');
		// check for mobile exist
		$tmp_result =  $this->sql()->tableUsers()->whereUser_mobile($mymobile)->select();

		// if exist
		if($tmp_result->num() == 1)
		{
			$tmp_result       = $tmp_result->assoc();
			$myhashedPassword = $tmp_result['user_password'];
			// if password is correct. go for login:)
			if (isset($myhashedPassword) && utility::hasher($mypass, $myhashedPassword))
			{
				// you can change the code way easily at any time!
				$qry		= $this->sql()->tableUsers ()
								->setUser_logincounter  ($tmp_result['user_logincounter'] +1)
								->whereId               ($tmp_result['id']);
				$sql		= $qry->update();


				$myfields = array('id',
										'user_gender',
										'user_firstname',
										'user_lastname',
										'user_mobile',
										'user_status',
										'permission_id',
										'booth_id'
										);
				$this->setLoginSession($tmp_result, $myfields);

				// ======================================================
				// you can manage next event with one of these variables,
				// commit for successfull and rollback for failed
				// if query run without error means commit
				$this->commit(function()
				{
					$this->logger('login');
					// create code for pass with get to service home page
					debug::true(T_("login successfully"));

					$this->redirector()->set_domain()->set_url();

				});

				$this->rollback(function() { debug::error(T_("login failed!")); });
			}
				// password is incorrect:(
			else
				debug::error(T_("mobile or password is incorrect"));
		}
		// mobile does not exits
		elseif($tmp_result->num() == 0 )
			debug::error(T_("mobile or password is incorrect"));

		// mobile exist more than 2 times!
		else
			debug::error(T_("please forward this message to administrator"));
	}
}
?>