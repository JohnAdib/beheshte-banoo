<?php
namespace content\home;
use \lib\debug;

class model extends \mvc\model
{
	function get_testupdate()
	{
		$qry     = $this->sql()->tableUsers()->setUser_enterdatetime(date('Y-m-d H:i:s'))
								->whereId("<", "#11")->update();

		$qry     = $this->sql()->tableGames()->setGame_date(date('Y-m-d'))
								->whereUser_id("<", "#11")->update();

		$this->commit(function()   { var_dump('updates for test'); });
		$this->rollback(function() { });
	}
}
?>