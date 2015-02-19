<?php
namespace mvc;

class model extends \lib\mvc\model
{
	function _construct()
	{

	}

	public function logger($_type, $_module = null, $_value = null, $_priority = null)
	{
		if($_priority === null)
		{
			switch ($_type)
			{
				case 'login':
				case 'select':
				case 'insert':
					$_priority = 'low';
					break;

				case 'delete':
				case 'access':
					$_priority = 'high';
					break;

				case 'signup':
				case 'error':
					$_priority = 'critical';
					break;

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
					->whereUser_barcode($_barcode)->andUser_exitdatetime('#NULL')->select();
		
		$datatable = $qry->allassoc();
		$myuser_id = null;
		foreach ($datatable as $key => $value)
		{
			$mydate = strtotime($value['user_enterdatetime']);
			$mydate = date('Y-m-d',$mydate);
			if($mydate === date('Y-m-d'))
				$myuser_id = $value['id'];

		}


		return $myuser_id;
	}
}
?>