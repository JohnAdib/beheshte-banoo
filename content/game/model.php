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
		$barcode = utility::post('barcode');
		$id      = $this->checkBarcode($barcode);
		// **************************** check for barcode of user exist in this day
		if(!$id)
		{
			debug::error(T_("This card number does not exist"));
			return;
		}
		$booth_id  = $this->login('booth_id');
		// **************************** disallow register user duplicate in kids
		$qry       = $this->sql()->tableGames  ()
												->whereUser_id     ($id)
												->andBooth_id      ($booth_id)
												->andGame_date     (date('Y-m-d'))
												->andGame_endtime  ('#NULL')
												->select();
		if($qry->num()>0)
		{
			debug::error(T_("This kid is already in Time!"));
			return;
		}


		// **************************** Add user in time for play game
		$qry       = $this->sql()->tableGames ()
									->setUser_id            ($id)
									->setBooth_id           ($booth_id)
									->setGame_date          (date('Y-m-d'))
									->setGame_regtime       (date('Y-m-d H:i:s'))
									->setGame_status        ('time');

		$qry = $qry->insert();

		$this->commit(function()   { debug::true(T_("register in queue successfully")); });
		$this->rollback(function() { debug::error(T_("register in queue failed!"));     });
	}


	public function get_list()
	{
		$qry = $this->sql()->tableGames()->whereGame_date(date('Y-m-d'))->groupOpen('start')
									->andGame_status('start')->orGame_status('time')->groupClose('close')
									->orderGame_regtime('Asc');

		$qry->joinUsers()->whereId        ('#games.user_id')
								->fieldUser_firstname ("firstname")
								->fieldUser_lastname  ("lastname")
								->fieldUser_barcode   ("barcode");
		$qry = $qry->select();
		// var_dump($qry->string());

		return $qry->allassoc();
	}


	public function post_absent()
	{
		$myid = utility::post('id');
		$qry  = $this->sql()->tableGames()->setGame_status('absent')
																				->setGame_endtime(date('Y-m-d H:i:s'))
																				->whereId($myid)->update();

		$this->commit(function()   { });
		$this->rollback(function() { });
	}

	public function post_start()
	{
		sleep (20);
		$myid = utility::post('id');
		$qry  = $this->sql()->tableGames()->setGame_status('start')
																				->setGame_starttime(date('Y-m-d H:i:s'))
																				->whereId($myid)->update();

		$this->commit(function()   { });
		$this->rollback(function() { });
	}

	public function post_win()
	{
		sleep (20);
		$myid = utility::post('id');
		$qry  = $this->sql()->tableGames()->setGame_status('win')
																				->setGame_endtime(date('Y-m-d H:i:s'))
																				->whereId($myid)->update();

		$this->commit(function()   { });
		$this->rollback(function() { });
	}

	public function post_loose()
	{
		$myid = utility::post('id');
		$qry  = $this->sql()->tableGames()->setGame_status('loose')
																				->setGame_endtime(date('Y-m-d H:i:s'))
																				->whereId($myid)->update();

		$this->commit(function()   { });
		$this->rollback(function() { });
	}
}
?>