<?php
namespace database\city;
class kindergartens 
{
	public $id                     = array('null' =>'NO',  'show' =>'NO',  'label'=>'Id',            'type' => 'int@10',                                      );
	public $user_id                = array('null' =>'NO',  'show' =>'NO',  'label'=>'User',          'type' => 'int@6',                                       'foreign'=>'users@id!user_nickname');
	public $token_id               = array('null' =>'NO',  'show' =>'YES', 'label'=>'Token',         'type' => 'smallint@3',                                  'foreign'=>'tokens@id!token_title');
	public $kindergarten_date      = array('null' =>'NO',  'show' =>'YES', 'label'=>'Date',          'type' => 'date@',                                       );
	public $kindergarten_starttime = array('null' =>'YES', 'show' =>'YES', 'label'=>'Starttime',     'type' => 'datetime@',                                   );
	public $kindergarten_endtime   = array('null' =>'YES', 'show' =>'YES', 'label'=>'Endtime',       'type' => 'datetime@',                                   );
	public $kindergarten_status    = array('null' =>'NO',  'show' =>'YES', 'label'=>'Status',        'type' => 'enum@in,out,babylost,parentlost,awaiting!in', );
	public $date_modified          = array('null' =>'YES', 'show' =>'NO',  'label'=>'Modified',      'type' => 'timestamp@',                                  );


	//------------------------------------------------------------------ id - primary key
	public function id() {$this->validate()->id();}
	public function user_id() {$this->validate()->id();}

	//------------------------------------------------------------------ id - foreign key
	public function token_id() 
	{
		$this->form("select")->name("token_")->min(0)->max(999)->required()->type("select")->validate()->id();
		$this->setChild();
	}
	public function kindergarten_date() 
	{
		$this->form("text")->name("date")->required();
	}
	public function kindergarten_starttime() 
	{
		$this->form("text")->name("starttime");
	}
	public function kindergarten_endtime() 
	{
		$this->form("text")->name("endtime");
	}

	//------------------------------------------------------------------ select button
	public function kindergarten_status() 
	{
		$this->form("select")->name("status")->type("select")->required()->validate();
		$this->setChild();
	}
	public function date_modified() {}
}
?>