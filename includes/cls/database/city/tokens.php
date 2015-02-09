<?php
namespace database\city;
class tokens 
{
	public $id            = array('null' =>'NO',  'show' =>'NO',  'label'=>'Id',            'type' => 'smallint@3',                        );
	public $token_colors  = array('null' =>'NO',  'show' =>'YES', 'label'=>'Colors',        'type' => 'varchar@20',                        );
	public $token_numbers = array('null' =>'NO',  'show' =>'YES', 'label'=>'Numbers',       'type' => 'smallint@3',                        );
	public $token_status  = array('null' =>'NO',  'show' =>'YES', 'label'=>'Status',        'type' => 'enum@enable,disable,expire!enable', );
	public $date_modified = array('null' =>'YES', 'show' =>'NO',  'label'=>'Modified',      'type' => 'timestamp@',                        );


	//------------------------------------------------------------------ id - primary key
	public function id() {$this->validate()->id();}
	public function token_colors() 
	{
		$this->form("text")->name("colors")->maxlength(20)->required()->type('text');
	}
	public function token_numbers() 
	{
		$this->form("text")->name("numbers")->max(99)->required()->type('number');
	}

	//------------------------------------------------------------------ select button
	public function token_status() 
	{
		$this->form("select")->name("status")->type("select")->required()->validate();
		$this->setChild();
	}
	public function date_modified() {}
}
?>