<?php
namespace content\kids;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;

class model extends \mvc\model
{
	public function post_kids()
	{
		// read barcode and check it
		$mybarcode =  utility::post('barcode');
		$mycolor   =  utility::post('color');
		$mynumber  =  utility::post('number');
		$id        = $this->checkBarcode($mybarcode);
		if(!$id)
		{
			debug::error(T_("This card number does not exist"));
			return;
		}
		$booth_id  = $this->login('booth_id');
		$qry       = $this->sql()->tableKids  ()
												->setUser_id      ($id)
												->setKid_color    ($mycolor)
												->setKid_number   ($mynumber)
												->setKid_date     (date('Y-m-d'))
												->setKid_regtime  (date('Y-m-d H:i:s'))
												->setKid_status   ('in');

		$qry = $qry->insert();

		$this->commit(function()   { debug::true(T_("register in queue successfully")); });
		$this->rollback(function() { debug::error(T_("register in queue failed!"));     });
	}


	public function get_list()
	{
		$qry = $this->sql()->tableKids()->whereKid_date(date('Y-m-d'))
									->groupOpen('start')
									->andKid_status('in')->orKid_status('awaiting')->groupClose('close')
									->orderKid_regtime('Asc');

		$qry->joinUsers()->whereId('#kids.user_id')
								->fieldUser_firstname("firstname")
								->fieldUser_lastname("lastname")
								->fieldUser_barcode("barcode");
		$qry = $qry->select();
		// var_dump($qry->string());

		return $qry->allassoc();
	}


	public function post_call()
	{
		$myid = utility::post('id');
		$qry  = $this->sql()->tableKids()->setKid_status('awaiting')
																				->setKid_returntime(date('Y-m-d H:i:s'))
																				->whereId($myid)->update();

		$this->commit(function()   { });
		$this->rollback(function() { });
	}

	public function post_delivery()
	{
		$myid = utility::post('id');
		$qry  = $this->sql()->tableKids()->setKid_status('out')
																				->setKid_exittime(date('Y-m-d H:i:s'))
																				->whereId($myid)->update();

		$this->commit(function()   { });
		$this->rollback(function() { });
	}
}
?>