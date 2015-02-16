<?php
namespace database\city;
class countrys 
{
	public $id           = array('null' =>'NO',  'show' =>'NO',  'label'=>'Id',            'type' => 'smallint@3',  );
	public $country_code = array('null' =>'NO',  'show' =>'YES', 'label'=>'Code',          'type' => 'char@2',      );
	public $country_name = array('null' =>'NO',  'show' =>'YES', 'label'=>'Name',          'type' => 'varchar@100', );


	//------------------------------------------------------------------ id - primary key
	public function id() {$this->validate()->id();}
	public function country_code() 
	{
		$this->form("text")->name("code")->maxlength(2)->required()->type('text');
	}
	public function country_name() 
	{
		$this->form("text")->name("name")->maxlength(100)->required()->type('text');
	}
}
?>