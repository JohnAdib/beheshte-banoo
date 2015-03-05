<?php
namespace database\city;
class booths 
{
	public $id               = array('null' =>'NO',  'show' =>'NO',  'label'=>'id',            'type' => 'smallint@3',                        );
	public $booth_title      = array('null' =>'NO',  'show' =>'YES', 'label'=>'title',         'type' => 'varchar@50',                        );
	public $booth_winpoint   = array('null' =>'NO',  'show' =>'YES', 'label'=>'winpoint',      'type' => 'tinyint@3',                         );
	public $booth_loosepoint = array('null' =>'NO',  'show' =>'YES', 'label'=>'loosepoint',    'type' => 'tinyint@3',                         );
	public $booth_status     = array('null' =>'NO',  'show' =>'YES', 'label'=>'status',        'type' => 'enum@enable,disable,expire!enable', );
	public $booth_maxplayer  = array('null' =>'NO',  'show' =>'YES', 'label'=>'maxplayer',     'type' => 'int@2!10',                          );
	public $booth_gametime   = array('null' =>'NO',  'show' =>'YES', 'label'=>'gametime',      'type' => 'time@!00:01:00',                    );
	public $section_id       = array('null' =>'NO',  'show' =>'YES', 'label'=>'section',       'type' => 'smallint@2',                        'foreign'=>'sections@id!section_title');
	public $date_modified    = array('null' =>'YES', 'show' =>'NO',  'label'=>'modified',      'type' => 'timestamp@',                        );


	//------------------------------------------------------------------ id
	public function id() {$this->validate()->id();}

	//------------------------------------------------------------------ title
	public function booth_title() 
	{
		$this->form("#title")->maxlength(50)->required()->type('text');
	}
	public function booth_winpoint() 
	{
		$this->form("text")->name("winpoint")->min(0)->max(999)->required()->type('number');
	}
	public function booth_loosepoint() 
	{
		$this->form("text")->name("loosepoint")->min(0)->max(999)->required()->type('number');
	}

	//------------------------------------------------------------------ select button
	public function booth_status() 
	{
		$this->form("select")->name("status")->type("select")->required()->validate();
		$this->setChild();
	}
	public function booth_maxplayer() 
	{
		$this->form("text")->name("maxplayer")->min(0)->max(99)->required()->type('number');
	}
	public function booth_gametime() 
	{
		$this->form("text")->name("gametime")->required();
	}

	//------------------------------------------------------------------ id - foreign key
	public function section_id() 
	{
		$this->form("select")->name("section_")->min(0)->max(99)->required()->type("select")->validate()->id();
		$this->setChild();
	}
	public function date_modified() {}
}
?>