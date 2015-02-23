<?php
namespace content\home;
use \lib\debug;

class model extends \mvc\model
{
	function get_testupdate()
	{
		$qry     = $this->sql()->tableUsers()->setUser_enterdatetime(date('Y-m-d H:i:s'))
								->whereId("<", "#13")->update();

		$qry     = $this->sql()->tableGames()->setGame_date(date('Y-m-d'))->setGame_status('time')
								->whereUser_id("<", "#13")->update();

		$this->commit(function()   { $this->redirector()->set_domain()->set_url(); });
		$this->rollback(function() { });
	}
}
?>