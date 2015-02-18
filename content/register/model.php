<?php
namespace content\register;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;

class model extends \mvc\model
{
	public function get_test($object)
	{
		return 1;
	}

	public function post_register()
	{
		$qry      = $this->sql()->tableUsers();

		$fields  = array( 'gender','firstname','lastname','mobile',
								'birthdate','codemelli','passport','country','province'
							 );

		foreach ($fields as $value)
		{
			$post =  utility::post($value);
			$tmp_set = 'setUser_'.$value;
			$qry     = $qry->$tmp_set($post);
		}
		$qry     = $qry->setPermission_id(4)->setUser_createdate(date('Y-m-d H:i:s'));
		$qry->insert();
		
		
		$webcam = utility::post('webcam');
		if(isset($webcam))
		{
			define('Upload', root.'upload/');

			// give max id from table ** tomarrow
			// $qry = $this->sql()->tableUsers()->max('id')->select()->assoc();
			$id          = 1;
			$folder_name = Upload . ceil($id/1000)*1000 . '/';
			$file_ext    = '.jpg';

			if(!is_dir($folder_name))
				File::makeDir($folder_name, 0777, true);

			$file_name = $folder_name.$id;

			if(File::exists($file_name.$file_ext))
			{
				$cond    = true;
				$counter = 1;
				while ($cond)
				{
					$file_name_new = $file_name.'('.$counter.')';
					if(File::exists($file_name_new.$file_ext))
					{
						// this file exist
						$counter ++;
					}
					else
					{
						// this file name not exist, move to this name! file(x)
						File::rename($file_name.$file_ext, $file_name_new.$file_ext);
						$cond = false;
					}
				}
			}

			$result = File::write($file_name.$file_ext, base64_decode($webcam));
			// on error show it for user
			if(!$result)
				debug::warn(T_("Error on write webcam picture to server"));
		}

		$this->commit(function() { debug::true(T_("register successfully")); });
		$this->rollback(function() { debug::error(T_("register failed!")); } );
	}
}
?>