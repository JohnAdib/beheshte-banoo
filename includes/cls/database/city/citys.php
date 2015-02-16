<?php
namespace database\city;
class citys 
{
	public $id          = array('null' =>'NO',  'show' =>'NO',  'label'=>'Id',            'type' => 'smallint@5', );
	public $province_id = array('null' =>'NO',  'show' =>'YES', 'label'=>'Province',      'type' => 'smallint@5', 'foreign'=>'provinces@id!province_name');
	public $city_name   = array('null' =>'NO',  'show' =>'YES', 'label'=>'Name',          'type' => 'varchar@32', );


	//------------------------------------------------------------------ id - primary key
	public function id() {$this->validate()->id();}

	//------------------------------------------------------------------ id - foreign key
	public function province_id() 
	{
		$this->form("select")->name("province_")->min(0)->max(9999)->required()->type("select")->validate()->id();
		$this->setChild();
	}
	public function city_name() 
	{
		$this->form("text")->name("name")->maxlength(32)->required()->type('text');
	}
}
?>