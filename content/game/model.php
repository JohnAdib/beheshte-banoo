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
									->setGame_date    (date('Y-m-d'))
									->setGame_regtime (date('Y-m-d H:i:s'))
									->setGame_status  ('time');

		$qry = $qry->insert();

		$this->commit(function()   { debug::true(T_("register in queue successfully")); });
		$this->rollback(function() { debug::error(T_("register in queue failed!"));     });
	}


	public function get_list()
	{
		// $qry       = $this->sql()->tableGames()->whereGame_date(date('Y-m-d'))->select();
		// $qry = $this->sql()->tableGames()->whereGame_date(date('Y-m-d'));
		// $qry->joinUsers()->whereId('#games.user_id')->fieldUser_mobile("mobile");
		// $qry = $qry->select();

		$qry = $this->sql()->tableGames()->whereGame_date(date('Y-m-d'));
		$qry->joinUsers()->whereId('#games.user_id')
								->fieldUser_firstname("firstname")
								->fieldUser_lastname("lastname")
								->fieldUser_barcode("barcode");
		$qry = $qry->select();


		$datatable = $qry->allassoc();

		// var_dump($datatable);

		return $datatable;
	}
}
?>