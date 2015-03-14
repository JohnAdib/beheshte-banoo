<?php
namespace database\city;
class games 
{
	public $id             = array('null' =>'NO',  'show' =>'NO',  'label'=>'id',            'type' => 'int@10',                                       );
	public $user_id        = array('null' =>'NO',  'show' =>'NO',  'label'=>'user',          'type' => 'int@6',                                        'foreign'=>'users@id!user_nickname');
	public $booth_id       = array('null' =>'NO',  'show' =>'YES', 'label'=>'booth',         'type' => 'smallint@3',                                   'foreign'=>'booths@id!booth_title');
	public $game_prize     = array('null' =>'NO',  'show' =>'NO',  'label'=>'prize',         'type' => 'smallint@5',                                   );
	public $game_date      = array('null' =>'NO',  'show' =>'NO',  'label'=>'date',          'type' => 'date@',                                        );
	public $game_regtime   = array('null' =>'YES', 'show' =>'NO',  'label'=>'regtime',       'type' => 'datetime@',                                    );
	public $game_starttime = array('null' =>'YES', 'show' =>'NO',  'label'=>'starttime',     'type' => 'datetime@',                                    );
	public $game_endtime   = array('null' =>'YES', 'show' =>'NO',  'label'=>'endtime',       'type' => 'datetime@',                                    );
	public $game_status    = array('null' =>'NO',  'show' =>'YES', 'label'=>'status',        'type' => 'enum@time,start,win,loose,absent,delete!time', );
	public $date_modified  = array('null' =>'YES', 'show' =>'NO',  'label'=>'modified',      'type' => 'timestamp@',                                   );


	//------------------------------------------------------------------ id
	public function id() {$this->validate()->id();}

	//------------------------------------------------------------------ user_id
	public function user_id() {$this->validate()->id();}

	//------------------------------------------------------------------ id - foreign key
	public function booth_id() 
	{
		$this->form("select")->name("booth_")->min(0)->max(999)->required()->type("select")->validate()->id();
		$this->setChild();
	}
	public function game_prize() 
	{
		$this->form("text")->name("prize")->min(0)->max(99999)->required()->type('number');
	}
	public function game_date() 
	{
		$this->form("text")->name("date")->required();
	}
	public function game_regtime() 
	{
		$this->form("text")->name("regtime");
	}
	public function game_starttime() 
	{
		$this->form("text")->name("starttime");
	}
	public function game_endtime() 
	{
		$this->form("text")->name("endtime");
	}

	//------------------------------------------------------------------ select button
	public function game_status() 
	{
		$this->form("select")->name("status")->type("select")->required()->validate();
		$this->setChild();
	}
	public function date_modified() {}
}
?>