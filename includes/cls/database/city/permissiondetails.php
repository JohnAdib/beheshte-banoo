<?php
namespace database\city;
class permissiondetails 
{
	public $id                      = array('null' =>'NO',  'show' =>'NO',  'label'=>'id',            'type' => 'smallint@5',      );
	public $permissiondetail_module = array('null' =>'NO',  'show' =>'YES', 'label'=>'module',        'type' => 'varchar@50',      );
	public $permissiondetail_view   = array('null' =>'NO',  'show' =>'YES', 'label'=>'view',          'type' => 'enum@yes,no!yes', );
	public $permissiondetail_add    = array('null' =>'NO',  'show' =>'YES', 'label'=>'add',           'type' => 'enum@yes,no!no',  );
	public $permissiondetail_edit   = array('null' =>'NO',  'show' =>'YES', 'label'=>'edit',          'type' => 'enum@yes,no!no',  );
	public $permissiondetail_delete = array('null' =>'NO',  'show' =>'YES', 'label'=>'delete',        'type' => 'enum@yes,no!no',  );
	public $permission_id           = array('null' =>'NO',  'show' =>'YES', 'label'=>'permission',    'type' => 'smallint@5',      'foreign'=>'permissions@id!permission_title');


	//------------------------------------------------------------------ id
	public function id() {$this->validate()->id();}
	public function permissiondetail_module() 
	{
		$this->form("text")->name("module")->maxlength(50)->required()->type('text');
	}

	//------------------------------------------------------------------ radio button
	public function permissiondetail_view() 
	{
		$this->form("radio")->name("view")->type("radio")->required();
		$this->setChild();
	}

	//------------------------------------------------------------------ radio button
	public function permissiondetail_add() 
	{
		$this->form("radio")->name("add")->type("radio")->required();
		$this->setChild();
	}

	//------------------------------------------------------------------ radio button
	public function permissiondetail_edit() 
	{
		$this->form("radio")->name("edit")->type("radio")->required();
		$this->setChild();
	}

	//------------------------------------------------------------------ radio button
	public function permissiondetail_delete() 
	{
		$this->form("radio")->name("delete")->type("radio")->required();
		$this->setChild();
	}

	//------------------------------------------------------------------ id - foreign key
	public function permission_id() 
	{
		$this->form("select")->name("permission_")->min(0)->max(99999)->required()->type("select")->validate()->id();
		$this->setChild();
	}
}
?>