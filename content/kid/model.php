<?php
namespace content\kid;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;

class model extends \mvc\model
{
	public function post_kid()
	{
		// read barcode and check it
		$mybarcode =  utility::post('barcode');
		$mycolor   =  utility::post('color');
		$mynumber  =  utility::post('number');
		$myid        = $this->checkBarcode($mybarcode);
		// **************************** check for barcode of user exist in this day
		if(!$myid)
		{
			debug::error(T_("This card number does not exist"));
			return;
		}

		// **************************** disallow register duplicate color and number
		$qry       = $this->sql()->tableKids  ()
												->whereKid_color  ($mycolor)
												->andKid_number   ($mynumber)
												->andKid_date     (date('Y-m-d'))
												->andKid_endtime  ('#NULL')
												->select();
		if($qry->num()>0)
		{
			debug::error(T_("This color is in use!"));
			return;
		}

		// **************************** disallow register user duplicate in kids
		$qry       = $this->sql()->tableKids  ()
												->whereUser_id    ($myid)
												->andKid_date     (date('Y-m-d'))
												->andKid_endtime  ('#NULL')
												->select();
		if($qry->num()>0)
		{
			debug::error(T_("This user kid is in kindergartens!"));
			return;
		}

		// $booth_id  = $this->login('booth_id');
		// **************************** Register user in kids
		$qry       = $this->sql()->tableKids  ()
												->setUser_id      ($myid)
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
									->orderKid_status('Desc');
									// ->orderKid_regtime('Asc');

		$qry->joinUsers()->whereId('#kids.user_id')
								->fieldUser_firstname("firstname")
								->fieldUser_lastname("lastname")
								->fieldUser_mobile("mobile")
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
																				->setKid_endtime(date('Y-m-d H:i:s'))
																				->whereId($myid)->update();

		$this->commit(function()   { });
		$this->rollback(function() { });
	}
}
?>