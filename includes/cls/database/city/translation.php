<?php
function transtext()
{
	echo T_("enable");              // Enum enable
	echo T_("disable");             // Enum disable
	echo T_("expire");              // Enum expire

	// ------------------------------------------------------------------- Table booths
	echo T_("booths");              // Table booths
	echo T_("Booths");              // Booths
	echo T_("booth");               // booths
	echo T_("Id");                  // id
	echo T_("Title");               // booth_title
	echo T_("Winpoint");            // booth_winpoint
	echo T_("Loosepoint");          // booth_loosepoint
	echo T_("Status");              // booth_status
	echo T_("Gametime");            // booth_gametime
	echo T_("Section");             // section_id
	echo T_("Modified");            // date_modified

	// ------------------------------------------------------------------- Table citys
	echo T_("citys");               // Table citys
	echo T_("Citys");               // Citys
	echo T_("city");                // citys
	echo T_("Province");            // province_id
	echo T_("Name");                // city_name

	// ------------------------------------------------------------------- Table countrys
	echo T_("countrys");            // Table countrys
	echo T_("Countrys");            // Countrys
	echo T_("country");             // countrys
	echo T_("Code");                // country_code
	echo T_("Name");                // country_name
	echo T_("time");                // Enum time
	echo T_("start");               // Enum start
	echo T_("win");                 // Enum win
	echo T_("loose");               // Enum loose
	echo T_("absent");              // Enum absent
	echo T_("delete");              // Enum delete

	// ------------------------------------------------------------------- Table games
	echo T_("games");               // Table games
	echo T_("Games");               // Games
	echo T_("game");                // games
	echo T_("User");                // user_id
	echo T_("Booth");               // booth_id
	echo T_("Prize");               // game_prize
	echo T_("Date");                // game_date
	echo T_("Regtime");             // game_regtime
	echo T_("Starttime");           // game_starttime
	echo T_("Endtime");             // game_endtime
	echo T_("Status");              // game_status
	echo T_("Red");                 // Enum Red
	echo T_("Green");               // Enum Green
	echo T_("Blue");                // Enum Blue
	echo T_("Black");               // Enum Black
	echo T_("White");               // Enum White
	echo T_("Yellow");              // Enum Yellow
	echo T_("Purple");              // Enum Purple
	echo T_("in");                  // Enum in
	echo T_("out");                 // Enum out
	echo T_("babylost");            // Enum babylost
	echo T_("parentlost");          // Enum parentlost
	echo T_("awaiting");            // Enum awaiting

	// ------------------------------------------------------------------- Table kids
	echo T_("kids");                // Table kids
	echo T_("Kids");                // Kids
	echo T_("kid");                 // kids
	echo T_("Color");               // kid_color
	echo T_("Number");              // kid_number
	echo T_("Date");                // kid_date
	echo T_("Regtime");             // kid_regtime
	echo T_("Returntime");          // kid_returntime
	echo T_("Exittime");            // kid_exittime
	echo T_("Status");              // kid_status

	// ------------------------------------------------------------------- Table options
	echo T_("options");             // Table options
	echo T_("Options");             // Options
	echo T_("option");              // options
	echo T_("Cat");                 // option_cat
	echo T_("Name");                // option_name
	echo T_("Value");               // option_value
	echo T_("Extra");               // option_extra
	echo T_("Status");              // option_status
	echo T_("yes");                 // Enum yes
	echo T_("no");                  // Enum no

	// ------------------------------------------------------------------- Table permissiondetails
	echo T_("permissiondetails");   // Table permissiondetails
	echo T_("Permissiondetails");   // Permissiondetails
	echo T_("permissiondetail");    // permissiondetails
	echo T_("Module");              // permissiondetail_module
	echo T_("View");                // permissiondetail_view
	echo T_("Add");                 // permissiondetail_add
	echo T_("Edit");                // permissiondetail_edit
	echo T_("Delete");              // permissiondetail_delete
	echo T_("Permission");          // permission_id

	// ------------------------------------------------------------------- Table permissions
	echo T_("permissions");         // Table permissions
	echo T_("Permissions");         // Permissions
	echo T_("permission");          // permissions
	echo T_("Title");               // permission_title
	echo T_("Status");              // permission_status

	// ------------------------------------------------------------------- Table provinces
	echo T_("provinces");           // Table provinces
	echo T_("Provinces");           // Provinces
	echo T_("province");            // provinces
	echo T_("Country");             // country_id
	echo T_("Name");                // province_name

	// ------------------------------------------------------------------- Table sections
	echo T_("sections");            // Table sections
	echo T_("Sections");            // Sections
	echo T_("section");             // sections
	echo T_("Title");               // section_title
	echo T_("Maxpoint");            // section_maxpoint
	echo T_("Status");              // section_status

	// ------------------------------------------------------------------- Table tokens
	echo T_("tokens");              // Table tokens
	echo T_("Tokens");              // Tokens
	echo T_("token");               // tokens
	echo T_("Colors");              // token_colors
	echo T_("Numbers");             // token_numbers
	echo T_("Status");              // token_status
	echo T_("insert");              // Enum insert
	echo T_("update");              // Enum update
	echo T_("select");              // Enum select
	echo T_("error");               // Enum error
	echo T_("login");               // Enum login
	echo T_("signup");              // Enum signup
	echo T_("changepass");          // Enum changepass
	echo T_("access");              // Enum access
	echo T_("logout");              // Enum logout
	echo T_("high");                // Enum high
	echo T_("medium");              // Enum medium
	echo T_("low");                 // Enum low
	echo T_("critical");            // Enum critical

	// ------------------------------------------------------------------- Table userlogs
	echo T_("userlogs");            // Table userlogs
	echo T_("Userlogs");            // Userlogs
	echo T_("userlog");             // userlogs
	echo T_("Type");                // userlog_type
	echo T_("Module");              // userlog_module
	echo T_("Value");               // userlog_value
	echo T_("Priority");            // userlog_priority
	echo T_("Ip");                  // userlog_ip
	echo T_("Time");                // userlog_time
	echo T_("Status");              // userlog_status

	// ------------------------------------------------------------------- Table usermetas
	echo T_("usermetas");           // Table usermetas
	echo T_("Usermetas");           // Usermetas
	echo T_("usermeta");            // usermetas
	echo T_("Cat");                 // usermeta_cat
	echo T_("Name");                // usermeta_name
	echo T_("Value");               // usermeta_value
	echo T_("Extra");               // usermeta_extra
	echo T_("Status");              // usermeta_status
	echo T_("male");                // Enum male
	echo T_("female");              // Enum female
	echo T_("active");              // Enum active
	echo T_("deactive");            // Enum deactive
	echo T_("removed");             // Enum removed
	echo T_("filter");              // Enum filter
	echo T_("exit");                // Enum exit

	// ------------------------------------------------------------------- Table users
	echo T_("users");               // Table users
	echo T_("Users");               // Users
	echo T_("user");                // users
	echo T_("Gender");              // user_gender
	echo T_("Firstname");           // user_firstname
	echo T_("Lastname");            // user_lastname
	echo T_("Mobile");              // user_mobile
	echo T_("Mobile2");             // user_mobile2
	echo T_("Password");            // user_password
	echo T_("Birthdate");           // user_birthdate
	echo T_("Degree");              // user_degree
	echo T_("Province");            // user_province
	echo T_("Codemelli");           // user_codemelli
	echo T_("Passport");            // user_passport
	echo T_("Imageaddr");           // user_imageaddr
	echo T_("Logincounter");        // user_logincounter
	echo T_("Refinecounter");       // user_refinecounter
	echo T_("Parent");              // user_parent
	echo T_("Feedback");            // user_feedback
	echo T_("Status");              // user_status
	echo T_("Barcode");             // user_barcode
	echo T_("Enterdatetime");       // user_enterdatetime
	echo T_("Exitdatetime");        // user_exitdatetime

}
?>