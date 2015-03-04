<?php
namespace database\city;
class kids 
{
	public $id             = array('null' =>'NO',  'show' =>'NO',  'label'=>'Id',            'type' => 'int@10',                                        );
	public $user_id        = array('null' =>'NO',  'show' =>'NO',  'label'=>'User',          'type' => 'int@6',                                         'foreign'=>'users@id!user_nickname');
	public $kid_color      = array('null' =>'NO',  'show' =>'YES', 'label'=>'Color',         'type' => 'enum@Red,Green,Blue,Black,White,Yellow,Purple', );
	public $kid_number     = array('null' =>'NO',  'show' =>'YES', 'label'=>'Number',        'type' => 'smallint@1',                                    );
	public $kid_date       = array('null' =>'NO',  'show' =>'YES', 'label'=>'Date',          'type' => 'date@',                                         );
	public $kid_regtime    = array('null' =>'YES', 'show' =>'YES', 'label'=>'Regtime',       'type' => 'datetime@',                                     );
	public $kid_returntime = array('null' =>'YES', 'show' =>'YES', 'label'=>'Returntime',    'type' => 'datetime@',                                     );
	public $kid_endtime    = array('null' =>'YES', 'show' =>'YES', 'label'=>'Endtime',       'type' => 'datetime@',                                     );
	public $kid_status     = array('null' =>'NO',  'show' =>'YES', 'label'=>'Status',        'type' => 'enum@in,out,babylost,parentlost,awaiting!in',   );
	public $date_modified  = array('null' =>'YES', 'show' =>'NO',  'label'=>'Modified',      'type' => 'timestamp@',                                    );


	//------------------------------------------------------------------ id - primary key
	public function id() {$this->validate()->id();}
	public function user_id() {$this->validate()->id();}

	//------------------------------------------------------------------ select button
	public function kid_color() 
	{
		$this->form("select")->name("color")->type("select")->required()->parent('span4')->validate();
		$this->setChild();
	}
	public function kid_number() 
	{
		$this->form("text")->name("number")->min(0)->max(9)->required()->parent('span4 endline')->type('number');
	}
	public function kid_date() 
	{
		$this->form("text")->name("date")->required();
	}
	public function kid_regtime() 
	{
		$this->form("text")->name("regtime");
	}
	public function kid_returntime() 
	{
		$this->form("text")->name("returntime");
	}
	public function kid_endtime() 
	{
		$this->form("text")->name("endtime");
	}

	//------------------------------------------------------------------ select button
	public function kid_status() 
	{
		$this->form("select")->name("status")->type("select")->required()->validate();
		$this->setChild();
	}
	public function date_modified() {}
}
?>