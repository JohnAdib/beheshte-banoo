<?php
function transtext()
{

	//------------------------------------------------content_report/home/display.html
	echo T_("summary reports");                                                       // Line 93
	echo T_("popular booths");                                                        // Line 94
	echo T_("show all visitors groupby date");                                        // Line 95
	echo T_("by");                                                                    // Line 99
	echo T_("birthyear");                                                             // Line 96
	echo T_("country");                                                               // Line 97
	echo T_("province");                                                              // Line 98
	echo T_("gender");                                                                // Line 99
	echo T_("Person who visit");                                                      // Line 41
	echo T_("Person");                                                                // Line 44

	//---------------------------------------------content_report/summary/display.html
	echo T_("Total Admin User");                                                      // Line 19
	echo T_("Total Register User");                                                   // Line 23
	echo T_("Total Booth User");                                                      // Line 27
	echo T_("Total Visitor User");                                                    // Line 31
	echo T_("Total kid User");                                                        // Line 35
	echo T_("Total Sections");                                                        // Line 40
	echo T_("Total Booths");                                                          // Line 44
	echo T_("Work days");                                                             // Line 48
	echo T_("Total Game Prizes");                                                     // Line 57
	echo T_("Average Points By Users");                                               // Line 61
	echo T_("Point per days (Average)");                                              // Line 65
	echo T_("Top Player");                                                            // Line 69
	echo T_("with");                                                                  // Line 69
	echo T_("point");                                                                 // Line 69
	echo T_("Total visitors");                                                        // Line 83
	echo T_("Visit per days (Average)");                                              // Line 87

	//----------------------public_html/static/js/datatable/datatable-langs/index.html

	//----------------------------------------------content_account/login/display.html
	echo T_("Don't have an account?");                                                // Line 6
	echo T_("Click here to create an account");                                       // Line 6
	echo T_("Sign Up");                                                               // Line 6

	//---------------------------------------------content_account/signup/display.html
	echo T_("already have an account?");                                              // Line 6
	echo T_("click here to sign in to your account");                                 // Line 6
	echo T_("Sign In");                                                               // Line 6

	//------------------------------------content_account/verificationsms/display.html
	echo T_("Please send number <b>2015</b> to below number");                        // Line 6 Seperate
	echo T_("Then wait we receive your message and verificate your account");         // Line 8

	//-------------------------------------------content_account/recovery/display.html
	echo T_("click here to login to your account");                                   // Line 6
	echo T_("are you remember your password!?");                                      // Line 6

	//---------------------------------------content_account/verification/display.html
	echo T_("we send a verification code for you");                                   // Line 6
	echo T_("please check your mobile and enter the code");                           // Line 7
	echo T_("don't receive message?");                                                // Line 8

	//-----------------------------------------------------content/change/display.html
	echo T_("Scan your barcode and change your points to money!");                    // Line 8 Seperate

	//-------------------------------------------------------content/game/display.html
	echo T_("Scan barcode for going to queue.");                                      // Line 8 Seperate
	echo T_("If child absent click on absent button.");                               // Line 8 Seperate
	echo T_("For start game click on Start.");                                        // Line 8 Seperate
	echo T_("After starting game you can set winner and looser for gain points.");    // Line 8 Seperate
	echo T_("Winner");                                                                // Line 24
	echo T_("Looser");                                                                // Line 25
	echo T_("Start");                                                                 // Line 23
	echo T_("Absent");                                                                // Line 26

	//--------------------------------------------------------content/kid/display.html
	echo T_("You can manage kids in this page.");                                     // Line 8 Seperate
	echo T_("Enter barcode then set color and number for register kids.");            // Line 8 Seperate
	echo T_("If parent want they child, click on Call button and call them.");        // Line 8 Seperate
	echo T_("After delivery click on Delivery.");                                     // Line 8 Seperate
	echo T_("barcode");                                                               // Line 12
	echo T_("Delivery");                                                              // Line 28
	echo T_("Call");                                                                  // Line 27

	//-------------------------------------------------------content/home/display.html
	echo T_("Logout");                                                                // Line 46
	echo T_("Login");                                                                 // Line 48
	echo T_("Reports");                                                               // Line 22
	echo T_("Control Panel");                                                         // Line 44
	echo T_("Register Visitors");                                                     // Line 39
	echo T_("Register Kids");                                                         // Line 41
	echo T_("Register Visitors Avatar");                                              // Line 40
	echo T_("Start Game");                                                            // Line 34
	echo T_("Point Checker");                                                         // Line 36
	echo T_("Change points to meney");                                                // Line 37

	//---------------------------------------------------content/register/display.html
	echo T_("for using system and give prize visitors must register in system.");     // Line 7 Seperate
	echo T_("you can register visitors in this form.");                               // Line 7 Seperate

	//-----------------------------------------------------content/camera/display.html
	echo T_("First of all, scan barcode then camera take a picture form you and show it for 3 second.");// Line 12 Seperate
	echo T_("if it looks good you successful else try again with scan a barcode");    // Line 12 Seperate
	echo T_("Please place in center of box and smile:)");                             // Line 17

	//------------------------------------------------------content/point/display.html
	echo T_("Scan your barcode and see your points");                                 // Line 8 Seperate

	//----------------------------------------------------content_cp/home/display.html
	echo T_("Home");                                                                  // Line 40
	echo T_("now we using php class for translation.");                               // Line 19
	echo T_("Please fix a apache gettext dll problem for improve performance.");      // Line 19

	//-----------------------------------------------------content_cp/main/layout.html
	echo T_("Options");                                                               // Line 25 Seperate
	echo T_("Go to");                                                                 // Line 34 Seperate
	echo T_("Add New Record");                                                        // Line 39 Seperate
	echo T_("Actions");                                                               // Line 52
	echo T_("Edit this record");                                                      // Line 70
	echo T_("Edit");                                                                  // Line 71
	echo T_("Delete this record");                                                    // Line 73
	echo T_("Delete");                                                                // Line 94
	echo T_("delete record");                                                         // Line 89 Seperate
	echo T_("seriously, are you sure? There's no coming back.");                      // Line 90 Seperate
	echo T_("Cancel");                                                                // Line 92
	echo T_("or");                                                                    // Line 93

	//---------------------------------------------------includes/cls/macro/forms.html
	echo T_("Select");                                                                // Line 57

	//-------------------------------------------------------includes/mvc/display.html
	echo T_("Home Page");                                                             // Line 43
	echo T_("Experience our service in your language");                               // Line 73

}
?>