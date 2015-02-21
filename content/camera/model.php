<?php
namespace content\camera;
use \lib\debug;
use \lib\utility;
use \lib\utility\File;
use \lib\utility\Image;

class model extends \mvc\model
{
	public function post_camera()
	{
		$webcam  = utility::post('webcam');
		$barcode = utility::post('barcode');
		$id      = $this->checkBarcode($barcode);

		if(!isset($webcam) || empty($webcam) || empty($barcode))
		{
			debug::warn(T_("You must fill all require fileds"));
			return;
		}
		if(!$id)
		{
			debug::error(T_("This card number does not exist"));
			return;
		}
		

		define('Upload', root.'public_html/s-up/');
		$folder_name = Upload . ceil($id/1000)*1000 . '/';
		$file_ext    = '.jpg';

		if(!is_dir($folder_name))
			File::makeDir($folder_name, 0775, true);

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
		{
			Image::load($file_name.$file_ext);
			Image::thumb(120, 120);
			Image::save($file_name.'-thumb'.$file_ext);

			debug::true(T_("Your avatar register successfully"));
		}
		else
			debug::warn(T_("Error on write webcam picture to server"));


		// sleep(3);
	}
}
?>