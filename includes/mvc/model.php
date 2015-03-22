<?php
namespace mvc;

class model extends \lib\mvc\model
{
	function _construct()
	{

	}

	public function logger($_type, $_module = null, $_value = null, $_priority = null)
	{
		if($_module ==='favicon.ico'){
			// var_dump(11111111);
			return;
		}

		if($_priority === null)
		{
			switch ($_type)
			{
				case 'login':
				case 'select':
					$_priority = 'low';
					break;

				case 'signup':
				case 'delete':
					$_priority = 'high';
					break;

				case 'error':
					$_priority = 'critical';
					break;

				case 'access':
				case 'insert':
				case 'update':
				default:
					$_priority = 'medium';
					break;
			}
		}

		$_module = $_module === null? $this->module(): $_module;
		$myid    = $this->login('id');

		$qry		= $this->sql()->tableUserlogs ()
						->setUserlog_type          ($_type)
						->setUserlog_module        ($_module)
						->setUserlog_value         ($_value)
						->setUserlog_priority      ($_priority)
						->setUserlog_ip            (ClientIP)
						->setUserlog_time          (date('Y-m-d H:i:s'))
						->setUser_id               ($myid)
						->setUserlog_status        ('enable');
		$sql		= $qry->insert();

		$this->commit();
		$this->rollback();
	}


	public function checkBarcode($_barcode)
	{
		if(!is_numeric($_barcode))
			return null;

		$qry = $this->sql()->tableUsers()
					->whereUser_barcode($_barcode)
					->andUser_status('active')
					->andUser_exitdatetime('#NULL')->select();
		
		$datatable = $qry->allassoc();
		$myuser_id = null;
		foreach ($datatable as $key => $value)
		{
			$mydate = strtotime($value['user_enterdatetime']);
			$mydate = date('Y-m-d',$mydate);
			if($mydate === date('Y-m-d'))
				$myuser_id = $value['id'];

		}

		// if(DEBUG)
		// 	$myuser_id = 5;


		return $myuser_id;
	}
}
?>