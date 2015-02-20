<?php
namespace content\game;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;

class model extends \mvc\model
{
	public function post_game()
	{
		// read barcode and check it
		$barcode =  utility::post('barcode');
		$id      = $this->checkBarcode($barcode);
		if(!$id)
		{
			debug::error(T_("This card number does not exist"));
			return;
		}

		$qry       = $this->sql()->tableGames  ()
									->setUser_id      ($id)
									->setBooth_id     (1)
									->setGame_regtime (date('Y-m-d H:i:s'))
									->setGame_status  ('time');

		$qry = $qry->insert();

		$this->commit(function()   { debug::true(T_("register successfully")); });
		$this->rollback(function() { debug::error(T_("register failed!"));     });
	}
}
?>