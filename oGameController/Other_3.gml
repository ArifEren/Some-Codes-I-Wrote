///@desc SAVE GAME & LOG OUT
//Network Stuff
if(global.G_includedfile_network_active)
{
	//getting rid of request objects
	if(instance_exists(CONST_OBJ_REQUEST))
	{
		instance_destroy(CONST_OBJ_REQUEST) ;
	}
	ds_list_destroy(global.G_request_object_list) ;
	
	//disableing waiting requests and log out request
	GameController_network_waitforrequestobjects_forlogout = false ;
	if(!GameController_loggedinstatus_dataget_forcedlogout_activated)
	{
		GameController_fun_SendLogOutRequest(-2) ;
	}
}

//Destorying Local Log Object List
ds_list_destroy(global.G_locallog_object_list) ;

//Destroying Subtitle Map
ds_map_destroy(GameController_subtitle_map) ;

//Saving Game
GameController_fun_SaveGame(CONST_SAVEFILE_NAME_OPTIONS) ;
GameController_fun_SaveGame(CONST_SAVEFILE_NAME_CUTSCENESKIP_LOCAL) ;
