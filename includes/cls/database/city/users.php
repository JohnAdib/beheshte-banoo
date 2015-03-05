<?php
namespace database\city;
class users 
{
	public $id                 = array('null' =>'NO',  'show' =>'NO',  'label'=>'id',            'type' => 'int@6',                                                    );
	public $user_gender        = array('null' =>'YES', 'show' =>'YES', 'label'=>'gender',        'type' => 'enum@male,female!male',                                    );
	public $user_firstname     = array('null' =>'NO',  'show' =>'YES', 'label'=>'firstname',     'type' => 'varchar@15',                                               );
	public $user_lastname      = array('null' =>'NO',  'show' =>'YES', 'label'=>'lastname',      'type' => 'varchar@30',                                               );
	public $user_mobile        = array('null' =>'YES', 'show' =>'YES', 'label'=>'mobile',        'type' => 'varchar@15',                                               );
	public $user_mobile2       = array('null' =>'YES', 'show' =>'YES', 'label'=>'mobile2',       'type' => 'varchar@15',                                               );
	public $user_password      = array('null' =>'YES', 'show' =>'YES', 'label'=>'password',      'type' => 'varchar@64',                                               );
	public $user_birthdate     = array('null' =>'YES', 'show' =>'YES', 'label'=>'birthdate',     'type' => 'datetime@',                                                );
	public $user_degree        = array('null' =>'YES', 'show' =>'YES', 'label'=>'degree',        'type' => 'varchar@50',                                               );
	public $country_id         = array('null' =>'YES', 'show' =>'YES', 'label'=>'country',       'type' => 'smallint@3!101',                                           'foreign'=>'countrys@id!country_name');
	public $user_province      = array('null' =>'YES', 'show' =>'YES', 'label'=>'province',      'type' => 'varchar@50',                                               );
	public $user_nationalcode  = array('null' =>'YES', 'show' =>'YES', 'label'=>'nationalcode',  'type' => 'bigint@11',                                                );
	public $user_passport      = array('null' =>'YES', 'show' =>'YES', 'label'=>'passport',      'type' => 'varchar@50',                                               );
	public $user_imageaddr     = array('null' =>'YES', 'show' =>'YES', 'label'=>'imageaddr',     'type' => 'varchar@500',                                              );
	public $user_logincounter  = array('null' =>'NO',  'show' =>'YES', 'label'=>'logincounter',  'type' => 'smallint@3',                                               );
	public $user_refinecounter = array('null' =>'YES', 'show' =>'YES', 'label'=>'refinecounter', 'type' => 'smallint@2',                                               );
	public $user_parent        = array('null' =>'YES', 'show' =>'YES', 'label'=>'parent',        'type' => 'int@6',                                                    );
	public $permission_id      = array('null' =>'NO',  'show' =>'YES', 'label'=>'permission',    'type' => 'smallint@5',                                               'foreign'=>'permissions@id!permission_title');
	public $user_feedback      = array('null' =>'YES', 'show' =>'YES', 'label'=>'feedback',      'type' => 'tinyint@3',                                                );
	public $user_status        = array('null' =>'NO',  'show' =>'YES', 'label'=>'status',        'type' => 'enum@active,awaiting,deactive,removed,filter,exit!active', );
	public $user_barcode       = array('null' =>'NO',  'show' =>'YES', 'label'=>'barcode',       'type' => 'int@5',                                                    );
	public $user_enterdatetime = array('null' =>'NO',  'show' =>'YES', 'label'=>'enterdatetime', 'type' => 'datetime@',                                                );
	public $user_exitdatetime  = array('null' =>'YES', 'show' =>'YES', 'label'=>'exitdatetime',  'type' => 'datetime@',                                                );
	public $booth_id           = array('null' =>'YES', 'show' =>'YES', 'label'=>'booth',         'type' => 'smallint@3',                                               'foreign'=>'booths@id!booth_title');
	public $date_modified      = array('null' =>'YES', 'show' =>'NO',  'label'=>'modified',      'type' => 'timestamp@',                                               );


	//------------------------------------------------------------------ id
	public function id() {$this->validate()->id();}

	//------------------------------------------------------------------ radio button
	public function user_gender() 
	{
		$this->form("radio")->name("gender")->type("radio");
		$this->setChild();
	}
	public function user_firstname() 
	{
		$this->form("text")->name("firstname")->maxlength(15)->required()->type('text');
	}
	public function user_lastname() 
	{
		$this->form("text")->name("lastname")->maxlength(30)->required()->type('text');
	}

	//------------------------------------------------------------------ mobile
	public function user_mobile() 
	{
		$this->form("#mobile")->maxlength(15)->type('text');
	}
	public function user_mobile2() 
	{
		$this->form("text")->name("mobile2")->maxlength(15)->type('text');
	}
	public function user_password() 
	{
		$this->form("text")->name("password")->maxlength(64)->type('password');
	}
	public function user_birthdate() 
	{
		$this->form("text")->name("birthdate");
	}
	public function user_degree() 
	{
		$this->form("text")->name("degree")->maxlength(50)->type('text');
	}

	//------------------------------------------------------------------ id - foreign key
	public function country_id() 
	{
		$this->form("select")->name("country_")->min(0)->max(999)->type("select")->validate()->id();
		$this->setChild();
	}

	//------------------------------------------------------------------ select button
	public function user_province() 
	{
		$this->form("select")->name("province")->type("select")->maxlength(50)->validate();
		$this->setChild('provinces@id!province_name', '18');
	}
	public function user_nationalcode() 
	{
		$this->form("text")->name("nationalcode")->min(0)->max(99999999999)->type('number');
		$this->validate()->nationalcode();
	}
	public function user_passport() 
	{
		$this->form("text")->name("passport")->maxlength(50)->parent('hide')->type('text');
	}
	public function user_imageaddr() 
	{
		$this->form("text")->name("imageaddr")->maxlength(500)->type('textarea');
	}
	public function user_logincounter() 
	{
		$this->form("text")->name("logincounter")->min(0)->max(999)->required()->type('number');
	}
	public function user_refinecounter() 
	{
		$this->form("text")->name("refinecounter")->min(0)->max(99)->type('number');
	}
	public function user_parent() 
	{
		$this->form("text")->name("parent")->min(0)->max(999999)->type('number');
	}

	//------------------------------------------------------------------ id - foreign key
	public function permission_id() 
	{
		$this->form("select")->name("permission_")->min(0)->max(99999)->required()->type("select")->validate()->id();
		$this->setChild();
	}
	public function user_feedback() 
	{
		$this->form("text")->name("feedback")->min(0)->max(999)->type('number');
	}

	//------------------------------------------------------------------ select button
	public function user_status() 
	{
		$this->form("select")->name("status")->type("select")->required()->validate();
		$this->setChild();
	}
	public function user_barcode() 
	{
		$this->form("text")->name("barcode")->min(10000)->max(99999)->required()->type('number');
	}
	public function user_enterdatetime() 
	{
		$this->form("text")->name("enterdatetime")->required();
	}
	public function user_exitdatetime() 
	{
		$this->form("text")->name("exitdatetime");
	}

	//------------------------------------------------------------------ id - foreign key
	public function booth_id() 
	{
		$this->form("select")->name("booth_")->min(0)->max(999)->type("select")->validate()->id();
		$this->setChild();
	}
	public function date_modified() {}
}
?>