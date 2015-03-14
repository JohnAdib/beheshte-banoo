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
		$barcode = utility::post('barcode');
		$id      = $this->checkBarcode($barcode);
		if(!$id)
		{
			debug::error(T_("This card number does not exist"));
			return;
		}

		$qry        = $this->sql()->tableGames()->whereUser_id($id)->select();
		$datatable  = $qry->allassoc();
		$usertable  = $this->sql()->tableUsers()->whereId($id)->select()->assoc();
		$totalpoint = 0;
		$finalprize = null;

		foreach ($datatable as $key => $value)
			$totalpoint += $value['game_prize'];

		$prizetable  = $this->sql()->tableOptions()->whereOption_cat('game')->select()->allassoc();
		$prizelist   = array();
		foreach ($prizetable as $row)
			$prizelist[$row['option_value']] = $row['option_name'];

		ksort($prizelist);
		foreach ($prizelist as $key => $value)
			if($totalpoint >= $key)
				$finalprize = $value;


		debug::msg('code', $id);
		debug::msg('name', $usertable['user_firstname'].' '.$usertable['user_lastname']);
		debug::msg('game', T_("no of games")  .' '. $qry->num());
		debug::msg('prize', T_("your prize is bon").' <b>'.T_($finalprize).'</b>');
		debug::msg('medal', $finalprize);
	}
}
?>