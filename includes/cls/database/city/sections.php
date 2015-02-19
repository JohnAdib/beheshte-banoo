<?php
namespace database\city;
class sections 
{
	public $id               = array('null' =>'NO',  'show' =>'NO',  'label'=>'Id',            'type' => 'smallint@2',                        );
	public $section_title    = array('null' =>'NO',  'show' =>'YES', 'label'=>'Title',         'type' => 'varchar@50',                        );
	public $section_maxpoint = array('null' =>'NO',  'show' =>'YES', 'label'=>'Maxpoint',      'type' => 'tinyint@3',                         );
	public $section_status   = array('null' =>'NO',  'show' =>'YES', 'label'=>'Status',        'type' => 'enum@enable,disable,expire!enable', );
	public $date_modified    = array('null' =>'YES', 'show' =>'NO',  'label'=>'Modified',      'type' => 'timestamp@',                        );


	//------------------------------------------------------------------ id - primary key
	public function id() {$this->validate()->id();}

	//------------------------------------------------------------------ title
	public function section_title() 
	{
		$this->form("#title")->maxlength(50)->required()->type('text');
	}
	public function section_maxpoint() 
	{
		$this->form("text")->name("maxpoint")->max(999)->required()->type('number');
	}

	//------------------------------------------------------------------ select button
	public function section_status() 
	{
		$this->form("select")->name("status")->type("select")->required()->validate();
		$this->setChild();
	}
	public function date_modified() {}
}
?>