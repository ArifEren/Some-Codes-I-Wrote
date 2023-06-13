///@desc INCLUDED FILES OPERATIONS
var _file_name ;

_file_name = CONST_INCLUDEDFILE_NAME ;
if((global.G_includedfile_getfromincludedfiles) and (file_exists(_file_name)))
{
	//TAKING DATA FROM INCLUDED FILE
	ini_open(_file_name) ;
	
	if(!global.G_home_edition_active)
	{
		global.G_includedfile_network_active = ini_read_real("network", "network_active", 0) ;
		global.G_includedfile_network_ip_port = ini_read_string("network", "network_protocol", "http") + "://" + ini_read_string("network", "network_ip", "localhost") + ":" + ini_read_string("network", "network_port", "5046") ;
		global.G_includedfile_request_timeout_time = ini_read_real("network", "request_timeout_time_sec", 10) ;
		global.G_includedfile_request_repeated_period = ini_read_real("network", "request_repeated_period_sec", 5) ;
		global.G_includedfile_scoreboard_active = ini_read_real("network", "scoreboard_active", 1) ;
		global.G_includedfile_game_resettable = ini_read_real("options", "game_resettable", 0) ;
		global.G_includedfile_game_force_agile = ini_read_real("options", "game_force_agile", 0) ;
		global.G_includedfile_logs_savetolocal = ini_read_real("logs", "logs_save_to_local", 0) ;
	}
	
	global.G_includedfile_subtitles_active = ini_read_real("options", "subtitles_active", 1) ;
	global.G_includedfile_debugmode_active = ini_read_real("debug", "debugmode_active", 0) ;
	global.G_includedfile_debugmode_shownetwork = ini_read_real("debug", "debugmode_show_network", 0) ;
	global.G_includedfile_debugmode_size = ini_read_real("debug", "debugmode_size", 0.75) ;
	global.G_includedfile_debugmode_color_title = ini_read_string("debug", "debugmode_colorRGB_title", "055-255-255") ;
	global.G_includedfile_debugmode_color_text = ini_read_string("debug", "debugmode_colorRGB_text", "100-255-000") ;
	
	ini_close() ;
	
	//DOING OPERATIONS ON SOME VARIABLES AFTER TAKING THE DATA FROM INCLUDED FILE
	if(!global.G_home_edition_active)
	{
		global.G_includedfile_request_timeout_time *= 60 ; //converting seconds to frames
		global.G_includedfile_request_repeated_period *= 60 ; //converting seconds to frames
	}
	
	global.G_includedfile_debugmode_color_title = make_color_rgb(real(string_copy(global.G_includedfile_debugmode_color_title, 1, 3)), real(string_copy(global.G_includedfile_debugmode_color_title, 5, 3)), real(string_copy(global.G_includedfile_debugmode_color_title, 9, 3))) ; //converting text to RGB
	global.G_includedfile_debugmode_color_text = make_color_rgb(real(string_copy(global.G_includedfile_debugmode_color_text, 1, 3)), real(string_copy(global.G_includedfile_debugmode_color_text, 5, 3)), real(string_copy(global.G_includedfile_debugmode_color_text, 9, 3))) ; //converting text to RGB
	
	//CHANGING SOME VARIABLES FOR HOME EDITION
	if(global.G_home_edition_active)
	{
		global.G_includedfile_network_active = true ;
		global.G_includedfile_network_ip_port = "http://173.212.194.60:5046" ;
	}
}
