<?php
namespace database\city;
class provinces 
{
	public $id            = array('null' =>'NO',  'show' =>'NO',  'label'=>'id',            'type' => 'smallint@5', );
	public $country_id    = array('null' =>'NO',  'show' =>'YES', 'label'=>'country',       'type' => 'smallint@3', 'foreign'=>'countrys@id!country_namefa');
	public $province_name = array('null' =>'NO',  'show' =>'YES', 'label'=>'name',          'type' => 'varchar@32', );


	//------------------------------------------------------------------ id
	public function id() {$this->validate()->id();}

	//------------------------------------------------------------------ id - foreign key
	public function country_id() 
	{
		$this->form("select")->name("country_")->min(0)->max(999)->required()->type("select")->validate()->id();
		$this->setChild();
	}
	public function province_name() 
	{
		$this->form("text")->name("name")->maxlength(32)->required()->type('text');
	}
}
?>