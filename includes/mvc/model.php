<?php
namespace mvc;

class model extends \lib\mvc\model
{
	function _construct()
	{

	}

	function logger($_type, $_module = null, $_value = null, $_priority = null)
	{
		if($_priority === null)
		{
			switch ($_type)
			{
				case 'select':
				case 'insert':
					$_priority = 'low'
					break;

				case 'delete':
					$_priority = 'high'
					break;

				case 'error':
					$_priority = 'critical'
					break;

				case 'update':
				default:
					$_priority = 'medium'
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
}
?>