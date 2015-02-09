<?php
namespace database\city;
class barcodes 
{
	public $barcode_id    = array('null' =>'NO',  'show' =>'YES', 'label'=>'Barcode',       'type' => 'int@6',      'foreign'=>'barcodes@id!barcode_title');
	public $user_id       = array('null' =>'NO',  'show' =>'NO',  'label'=>'User',          'type' => 'int@6',      'foreign'=>'users@id!user_nickname');
	public $barcode_enter = array('null' =>'NO',  'show' =>'YES', 'label'=>'Enter',         'type' => 'datetime@',  );
	public $barcode_exit  = array('null' =>'YES', 'show' =>'YES', 'label'=>'Exit',          'type' => 'datetime@',  );
	public $date_modified = array('null' =>'YES', 'show' =>'NO',  'label'=>'Modified',      'type' => 'timestamp@', );


	//------------------------------------------------------------------ id - foreign key
	public function barcode_id() 
	{
		$this->form("select")->name("barcode_")->min(0)->max(99999)->required()->type("select")->validate()->id();
		$this->setChild();
	}
	public function user_id() {$this->validate()->id();}
	public function barcode_enter() 
	{
		$this->form("text")->name("enter")->required();
	}
	public function barcode_exit() 
	{
		$this->form("text")->name("exit");
	}
	public function date_modified() {}
}
?>