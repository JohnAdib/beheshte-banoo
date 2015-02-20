<?php
namespace content\point;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;

class model extends \mvc\model
{
	public function post_point()
	{
		// read barcode and check it
		$barcode =  utility::post('barcode');
		$id      = $this->checkBarcode($barcode);
		if(!$id)
		{
			debug::error(T_("This card number does not exist"));
			return;
		}

		$qry       = $this->sql()->tableGames()->whereUser_id($id)->select();
		$datatable = $qry->allassoc();
		$totalpoint = 0;

		foreach ($datatable as $key => $value)
		{
			$totalpoint += $value['game_prize'];
		}
		
		debug::true(T_("No of games").' '. $qry->num());
		debug::true(T_("Total of points").' '.$totalpoint);
	}
}
?>