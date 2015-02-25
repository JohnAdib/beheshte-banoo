<?php
namespace database\city;
class kindergartens 
{
	public $id                     = array('null' =>'NO',  'show' =>'NO',  'label'=>'Id',            'type' => 'int@10',                                        );
	public $user_id                = array('null' =>'NO',  'show' =>'NO',  'label'=>'User',          'type' => 'int@6',                                         'foreign'=>'users@id!user_nickname');
	public $kindergarten_color     = array('null' =>'NO',  'show' =>'YES', 'label'=>'Color',         'type' => 'enum@Red,Green,Blue,Black,White,Yellow,Purple', );
	public $kindergarten_number    = array('null' =>'NO',  'show' =>'YES', 'label'=>'Number',        'type' => 'tinyint@2',                                     );
	public $kindergarten_date      = array('null' =>'NO',  'show' =>'YES', 'label'=>'Date',          'type' => 'date@',                                         );
	public $kindergarten_starttime = array('null' =>'YES', 'show' =>'YES', 'label'=>'Starttime',     'type' => 'datetime@',                                     );
	public $kindergarten_endtime   = array('null' =>'YES', 'show' =>'YES', 'label'=>'Endtime',       'type' => 'datetime@',                                     );
	public $kindergarten_status    = array('null' =>'NO',  'show' =>'YES', 'label'=>'Status',        'type' => 'enum@in,out,babylost,parentlost,awaiting!in',   );
	public $date_modified          = array('null' =>'YES', 'show' =>'NO',  'label'=>'Modified',      'type' => 'timestamp@',                                    );


	//------------------------------------------------------------------ id - primary key
	public function id() {$this->validate()->id();}
	public function user_id() {$this->validate()->id();}
	public function kindergarten_color() 
	{
		$this->form("text")->name("color")->required()->type('select');
	}
	public function kindergarten_number() 
	{
		$this->form("text")->name("number")->min(0)->max(99)->required()->type('number');
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