<?php
namespace content\change;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;

class model extends \mvc\model
{
	public function post_change()
	{
		// read barcode and check it
		$barcode = utility::post('barcode');
		$id      = $this->checkBarcode($barcode);
		if(!$id)
		{
			debug::error(T_("This card number does not exist"));
			return;
		}

		$qry        = $this->sql()->tableGames()->whereUser_id($id)->select();
		$datatable  = $qry->allassoc();
		$totalpoint = 0;

		foreach ($datatable as $key => $value)
		{
			$totalpoint += $value['game_prize'];
		}
		
		$changevalue  = $this->sql()->tableOptions()
											->whereOption_cat('change')
											->select()->assoc('option_value');
		if(!$changevalue)
			$changevalue = 100;

		debug::true(T_("No of games").' '. $qry->num());
		debug::true(T_("Total of points").' '.$totalpoint);
		debug::true(T_("Total of Cash").' '.$totalpoint*$changevalue.' '.T_("Toman"));

		$qry  = $this->sql()->tableUsers()
						->setUser_status('deactive')
						->setUser_exitdatetime(date('Y-m-d H:i:s'))
						->whereId($id)->update();

		$this->commit(function()   { debug::true(T_("We hope see you again!")); });
		$this->rollback(function() { debug::error(T_("Change to money failed!"));     });
	}
}
?>