<?php
namespace content_report\summary;


class model extends \mvc\model
{
	// return count of the days in table
	public function user_days()
	{
		$qry = $this->sql()->tableUsers()->groupbyUser_enterdatetime('@DAY')->select();
		return $qry->num();
	}

	// return the total of rows
	public function total($_table)
	{
		$_table = 'table'.ucfirst($_table);
		return $this->sql()->$_table()->select()->num();
	}

	// return the total of rows
	public function total_Type($_permission)
	{
		return $this->sql()->tableUsers()->wherePermission_id($_permission)->select()->num();
	}

	// return the name of province
	public function total_points()
	{
		return $this->sql()->tableGames()->field('#sum(game_prize) as prizes')->select()->assoc('prizes');
	}

	public function average_points()
	{
		return $this->sql()->tableGames()->field('#avg(game_prize) as prizes')->select()->assoc('prizes');
	}

	// return the name of province
	public function max_point()
	{
		// SELECT sum(`game_prize`) as prizes, `user_id` FROM `games` group by `user_id`
		$qry = $this->sql()->tableGames()
							->field('#sum(game_prize) as prizes', 'user_id')
							->groupbyUser_id()->orderGame_prize('asc');

		$qry->joinUsers()->whereId        ('#games.user_id')
								->fieldUser_firstname ("firstname")
								->fieldUser_lastname  ("lastname")
								->fieldUser_barcode   ("barcode");

		$sql = $qry->select();
		// var_dump($sql->string());
		return $sql->assoc();
	}

}
?>