<?php
namespace content\register\camera;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;

class model extends \mvc\model
{
	public function post_camera()
	{
		$webcam  = utility::post('webcam');
		$barcode = utility::post('barcode');
		$id      = $this->sql()->tableUsers()->whereUser_barcode($barcode)->select()->assoc('id');

		if(!isset($webcam) || empty($webcam) || empty($barcode))
		{
			debug::warn(T_("You must fill all require fileds"));
			return;
		}
		if(empty($id))
		{
			debug::error(T_("this card number does not exist").$id);
			return;
		}
		

		define('Upload', root.'upload/');
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
		if($result)
			debug::true(T_("Your avatar register successfully"));
		else
			debug::warn(T_("Error on write webcam picture to server"));


		// sleep(3);
	}
}
?>