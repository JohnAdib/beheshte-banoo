<?php
namespace database\city;
class userlogs 
{
	public $id               = array('null' =>'NO',  'show' =>'NO',  'label'=>'Id',            'type' => 'int@10',                                 );
	public $userlog_type     = array('null' =>'NO',  'show' =>'YES', 'label'=>'Type',          'type' => 'enum@insert,update,delete,select,error', );
	public $userlog_module   = array('null' =>'NO',  'show' =>'YES', 'label'=>'Module',        'type' => 'varchar@50',                             );
	public $userlog_value    = array('null' =>'NO',  'show' =>'YES', 'label'=>'Value',         'type' => 'varchar@200',                            );
	public $userlog_priority = array('null' =>'NO',  'show' =>'YES', 'label'=>'Priority',      'type' => 'enum@high,medium,low,critical!medium',   );
	public $userlog_ip       = array('null' =>'NO',  'show' =>'YES', 'label'=>'Ip',            'type' => 'int@10',                                 );
	public $userlog_time     = array('null' =>'NO',  'show' =>'YES', 'label'=>'Time',          'type' => 'datetime@',                              );
	public $user_id          = array('null' =>'NO',  'show' =>'NO',  'label'=>'User',          'type' => 'int@6',                                  'foreign'=>'users@id!user_nickname');
	public $userlog_status   = array('null' =>'NO',  'show' =>'YES', 'label'=>'Status',        'type' => 'enum@enable,disable,expire!enable',      );
	public $date_modified    = array('null' =>'YES', 'show' =>'NO',  'label'=>'Modified',      'type' => 'timestamp@',                             );


	//------------------------------------------------------------------ id - primary key
	public function id() {$this->validate()->id();}

	//------------------------------------------------------------------ select button
	public function userlog_type() 
	{
		$this->form("select")->name("type")->type("select")->required()->validate();
		$this->setChild();
	}
	public function userlog_module() 
	{
		$this->form("text")->name("module")->maxlength(50)->required()->type('text');
	}
	public function userlog_value() 
	{
		$this->form("text")->name("value")->maxlength(200)->required()->type('textarea');
	}

	//------------------------------------------------------------------ select button
	public function userlog_priority() 
	{
		$this->form("select")->name("priority")->type("select")->required()->validate();
		$this->setChild();
	}
	public function userlog_ip() 
	{
		$this->form("text")->name("ip")->max(999999999)->required()->type('number');
	}
	public function userlog_time() 
	{
		$this->form("text")->name("time")->required();
	}
	public function user_id() {$this->validate()->id();}

	//------------------------------------------------------------------ select button
	public function userlog_status() 
	{
		$this->form("select")->name("status")->type("select")->required()->validate();
		$this->setChild();
	}
	public function date_modified() {}
}
?>