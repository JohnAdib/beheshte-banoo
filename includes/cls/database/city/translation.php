<?php
function transtext()
{
	echo T_("enable");              // Enum enable
	echo T_("disable");             // Enum disable
	echo T_("expire");              // Enum expire

	// ------------------------------------------------------------------- Table booths
	echo T_("booths");              // Table booths
	echo T_("booth");               // booth
	echo T_("id");                  // id
	echo T_("title");               // booth_title
	echo T_("winpoint");            // booth_winpoint
	echo T_("loosepoint");          // booth_loosepoint
	echo T_("status");              // booth_status
	echo T_("maxplayer");           // booth_maxplayer
	echo T_("gametime");            // booth_gametime
	echo T_("section");             // section_id
	echo T_("modified");            // date_modified

	// ------------------------------------------------------------------- Table citys
	echo T_("citys");               // Table citys
	echo T_("city");                // city
	echo T_("province");            // province_id
	echo T_("name");                // city_name

	// ------------------------------------------------------------------- Table countrys
	echo T_("countrys");            // Table countrys
	echo T_("country");             // country
	echo T_("code");                // country_code
	echo T_("name");                // country_name
	echo T_("time");                // Enum time
	echo T_("start");               // Enum start
	echo T_("win");                 // Enum win
	echo T_("loose");               // Enum loose
	echo T_("absent");              // Enum absent
	echo T_("delete");              // Enum delete

	// ------------------------------------------------------------------- Table games
	echo T_("games");               // Table games
	echo T_("game");                // game
	echo T_("user");                // user_id
	echo T_("booth");               // booth_id
	echo T_("prize");               // game_prize
	echo T_("date");                // game_date
	echo T_("regtime");             // game_regtime
	echo T_("starttime");           // game_starttime
	echo T_("endtime");             // game_endtime
	echo T_("status");              // game_status
	echo T_("red");                 // Enum red
	echo T_("green");               // Enum green
	echo T_("blue");                // Enum blue
	echo T_("black");               // Enum black
	echo T_("white");               // Enum white
	echo T_("yellow");              // Enum yellow
	echo T_("purple");              // Enum purple
	echo T_("in");                  // Enum in
	echo T_("out");                 // Enum out
	echo T_("babylost");            // Enum babylost
	echo T_("parentlost");          // Enum parentlost
	echo T_("awaiting");            // Enum awaiting

	// ------------------------------------------------------------------- Table kids
	echo T_("kids");                // Table kids
	echo T_("kid");                 // kid
	echo T_("color");               // kid_color
	echo T_("number");              // kid_number
	echo T_("date");                // kid_date
	echo T_("regtime");             // kid_regtime
	echo T_("returntime");          // kid_returntime
	echo T_("endtime");             // kid_endtime
	echo T_("status");              // kid_status

	// ------------------------------------------------------------------- Table options
	echo T_("options");             // Table options
	echo T_("option");              // option
	echo T_("cat");                 // option_cat
	echo T_("name");                // option_name
	echo T_("value");               // option_value
	echo T_("extra");               // option_extra
	echo T_("status");              // option_status
	echo T_("yes");                 // Enum yes
	echo T_("no");                  // Enum no

	// ------------------------------------------------------------------- Table permissiondetails
	echo T_("permissiondetails");   // Table permissiondetails
	echo T_("permissiondetail");    // permissiondetail
	echo T_("module");              // permissiondetail_module
	echo T_("view");                // permissiondetail_view
	echo T_("add");                 // permissiondetail_add
	echo T_("edit");                // permissiondetail_edit
	echo T_("delete");              // permissiondetail_delete
	echo T_("permission");          // permission_id

	// ------------------------------------------------------------------- Table permissions
	echo T_("permissions");         // Table permissions
	echo T_("permission");          // permission
	echo T_("title");               // permission_title
	echo T_("status");              // permission_status

	// ------------------------------------------------------------------- Table provinces
	echo T_("provinces");           // Table provinces
	echo T_("province");            // province
	echo T_("country");             // country_id
	echo T_("name");                // province_name

	// ------------------------------------------------------------------- Table sections
	echo T_("sections");            // Table sections
	echo T_("section");             // section
	echo T_("title");               // section_title
	echo T_("maxpoint");            // section_maxpoint
	echo T_("status");              // section_status
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
	echo T_("userlog");             // userlog
	echo T_("type");                // userlog_type
	echo T_("module");              // userlog_module
	echo T_("value");               // userlog_value
	echo T_("priority");            // userlog_priority
	echo T_("ip");                  // userlog_ip
	echo T_("time");                // userlog_time
	echo T_("status");              // userlog_status

	// ------------------------------------------------------------------- Table usermetas
	echo T_("usermetas");           // Table usermetas
	echo T_("usermeta");            // usermeta
	echo T_("cat");                 // usermeta_cat
	echo T_("name");                // usermeta_name
	echo T_("value");               // usermeta_value
	echo T_("extra");               // usermeta_extra
	echo T_("status");              // usermeta_status
	echo T_("male");                // Enum male
	echo T_("female");              // Enum female
	echo T_("active");              // Enum active
	echo T_("deactive");            // Enum deactive
	echo T_("removed");             // Enum removed
	echo T_("filter");              // Enum filter
	echo T_("exit");                // Enum exit

	// ------------------------------------------------------------------- Table users
	echo T_("users");               // Table users
	echo T_("user");                // user
	echo T_("gender");              // user_gender
	echo T_("firstname");           // user_firstname
	echo T_("lastname");            // user_lastname
	echo T_("mobile");              // user_mobile
	echo T_("mobile2");             // user_mobile2
	echo T_("password");            // user_password
	echo T_("birthdate");           // user_birthdate
	echo T_("degree");              // user_degree
	echo T_("province");            // user_province
	echo T_("nationalcode");        // user_nationalcode
	echo T_("passport");            // user_passport
	echo T_("imageaddr");           // user_imageaddr
	echo T_("logincounter");        // user_logincounter
	echo T_("refinecounter");       // user_refinecounter
	echo T_("parent");              // user_parent
	echo T_("feedback");            // user_feedback
	echo T_("status");              // user_status
	echo T_("barcode");             // user_barcode
	echo T_("enterdatetime");       // user_enterdatetime
	echo T_("exitdatetime");        // user_exitdatetime

}
?>