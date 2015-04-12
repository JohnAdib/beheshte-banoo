<?php
namespace content_report\home;


class model extends \mvc\model
{
	// SELECT DATE_FORMAT(`user_enterdatetime`,'%Y-%m-%d'), count(*) 
	// FROM `users` group by `user_enterdatetime`
	// 
	// 
	// select date_format(`users`.`user_enterdatetime`,'%Y-%m-%d') AS
	// `date`,`user_gender` AS 'value', count(*) from `users` 
	// group by `users`.`user_enterdatetime`, `user_gender`

	// get a list of data for create a chart
	public function mylist_users()
	{
		$mymodule  = $this->module();
		$mychild   = $this->child();
		$qry       = $this->sql()->tableUsers();

		if($mymodule === 'date')
		{
			// $qry = $qry->field('#user_enterdatetime as date','#count(*) as value');
			$qry = $qry->groupbyUser_enterdatetime('@DAY');
		}

		if($mychild === 'country')
		{
			$qry          = $qry->groupbyCountry_id();

			$qry = $qry->field("#date_format(user_enterdatetime,'%Y-%m-%d') as date",
													'#count(*) as value',
													"#$mychild"."_id as $mychild"
												);
		}
		elseif($mychild)
		{
			$groupbychild = 'groupbyUser_'.$mychild;
			$qry          = $qry->$groupbychild();

			$qry = $qry->field("#date_format(user_enterdatetime,'%Y-%m-%d') as date",
													'#count(*) as value',
													"#user_$mychild as $mychild"
												);
			if($mychild === 'birthyear')
			{
				$qry = $qry->whereUser_birthyear("IS", "#not null");
			}
			elseif($mychild === 'province')
			{
				$qry = $qry->whereUser_province("IS", "#not null");
			}
			elseif($mychild === 'status')
			{
				$qry = $qry->whereUser_barcode("IS", "#not null");
			}
			elseif($mychild === 'regid')
			{
				$qry = $qry->whereUser_regid("IS", "#not null");
			}
		}
		else
		{
			$qry = $qry->field("#date_format(user_enterdatetime,'%Y-%m-%d') as date",'#count(*) as value');
		}
		$qry = $qry->orderUser_enterdatetime('asc')->select();
		// var_dump($qry->string());

		return $qry->allassoc();
	}

	// return count of the days in table
	public function mydateCount()
	{
		$qry = $this->sql()->tableUsers()->groupbyUser_enterdatetime('@DAY')->select();
		return $qry->num();
	}

	// return the name of user
	public function myuserName($id)
	{
		$qry = $this->sql()->tableUsers()->whereId($id)->select();
		$datarow = $qry->assoc();
		
		// $fullname = $qry->assoc('user_firstname') . " ". $qry->assoc('user_lastname');
		$fullname = $datarow['user_firstname'].' '.$datarow['user_lastname'];

		return $fullname!==" "? $fullname: $id.'-'.$datarow['user_mobile'];
	}

	// return the name of province
	public function mycountryName($id)
	{
		$qry = $this->sql()->tableCountrys()->whereId($id)->select();
		return $qry->assoc('country_namefa');
	}

	// return the name of province
	public function myprovinceName($id)
	{
		$qry = $this->sql()->tableProvinces()->whereId($id)->select();
		return $qry->assoc('province_name');
	}

	public function mylist_booths()
	{
		$qry       = $this->sql()->tableGames()
								->field("#game_date as date",'#count(*) as value',"#booth_id as booth")
								->groupbyGame_date()->groupbyBooth_id()->select();

		// var_dump($qry->string());
		return $qry->allassoc();
	}

	// return the name of province
	public function myboothName($id)
	{
		$qry = $this->sql()->tableBooths()->whereId($id)->select();
		return $qry->assoc('booth_title');
	}

	public function mylist_kids()
	{
		$qry       = $this->sql()->tableKids()
								->field("#kid_date as date",'#count(*) as value')
								->groupbyKid_date()->select();

		// var_dump($qry->string());
		// var_dump($qry->num());
		return $qry->allassoc();
	}
}
?>