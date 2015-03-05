<?php
namespace database\city;
class permissions 
{
	public $id                = array('null' =>'NO',  'show' =>'NO',  'label'=>'id',            'type' => 'smallint@5',                        );
	public $permission_title  = array('null' =>'NO',  'show' =>'YES', 'label'=>'title',         'type' => 'varchar@50',                        );
	public $permission_status = array('null' =>'NO',  'show' =>'YES', 'label'=>'status',        'type' => 'enum@enable,disable,expire!enable', );
	public $date_modified     = array('null' =>'YES', 'show' =>'NO',  'label'=>'modified',      'type' => 'timestamp@',                        );


	//------------------------------------------------------------------ id
	public function id() {$this->validate()->id();}

	//------------------------------------------------------------------ title
	public function permission_title() 
	{
		$this->form("#title")->maxlength(50)->required()->type('text');
	}

	//------------------------------------------------------------------ radio button
	public function permission_status() 
	{
		$this->form("radio")->name("status")->type("radio")->required();
		$this->setChild();
	}
	public function date_modified() {}
}
?>