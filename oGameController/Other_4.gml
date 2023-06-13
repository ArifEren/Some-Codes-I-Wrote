///@desc ROOM SPECIFIC ACTIONS
switch(room)
{
	case CONST_ROOM_MENU:
		#region //BACK TO THE MENU
		GameController_fun_ResetGameData() ;
		
		scScreenBlacken(false, 1) ;
		scScreenCursorChange(ENUM_CURSOR_ID.pencil) ;
		
		instance_create_layer(0, 0, "MenuControl", CONST_OBJ_MENUCONTROLLER) ;
		#endregion
		break ;
	
	case CONST_ROOM_GAMEOVER:
		#region //GAME OVER
		scScreenBlacken(false, 1) ;
		scScreenNoise(true) ;
		scScreenCursorChange(ENUM_CURSOR_ID.hand_pointing) ;
		
		GameController_fun_RandomizeBookID() ;
		
		GameController_gameover_draw = true ;
		GameController_gameover_draw_skiptext_timer = GameController_gameover_draw_skiptext_timer_max ;
		
		if(global.G_includedfile_network_active)
		{
			GameController_fun_StopRequestTimers() ;
			GameController_fun_SetScoreboardData(noone) ;
			var _json = {
				"game_won" : GameController_gamedata_gamesuccess,
				"total_score" : GameController_collecteddata_stagePS_globalscore+GameController_collecteddata_stageRA_globalscore+GameController_collecteddata_stageRC_globalscore+GameController_collecteddata_stageDs_globalscore+GameController_collecteddata_stageD_globalscore+GameController_collecteddata_stageT_globalscore+GameController_collecteddata_stageDp_globalscore+GameController_collecteddata_stageMt_globalscore,
				"total_duration" : ((GameController_collecteddata_stagePS_globaltime != -1) ? GameController_collecteddata_stagePS_globaltime : 0)+((GameController_collecteddata_stageRA_globaltime != -1) ? GameController_collecteddata_stageRA_globaltime : 0)+((GameController_collecteddata_stageRC_globaltime != -1) ? GameController_collecteddata_stageRC_globaltime : 0)+((GameController_collecteddata_stageDs_globaltime != -1) ? GameController_collecteddata_stageDs_globaltime : 0)+((GameController_collecteddata_stageD_globaltime != -1) ? GameController_collecteddata_stageD_globaltime : 0)+((GameController_collecteddata_stageT_globaltime != -1) ? GameController_collecteddata_stageT_globaltime : 0)+((GameController_collecteddata_stageDp_globaltime != -1) ? GameController_collecteddata_stageDp_globaltime : 0)+((GameController_collecteddata_stageMt_globaltime != -1) ? GameController_collecteddata_stageMt_globaltime : 0),
				"scoreboard_looked_count" : GameController_scoreboard_dataget_looked_counter
				} ;
			scCreateRequestObject(ENUM_REQUEST.log, [global.ENUM_LOG_ACTION.game_ended, json_stringify(_json)]) ;
			scLocalLog(global.ENUM_LOG_ACTION.game_ended, json_stringify(_json)) ;
			
			GameController_gamedata_player_fullname = "" ;
			GameController_scoreboard_dataget_looked_counter = 0 ;
			
			if(GameController_gamedata_gamesuccess)
			{
				GameController_fun_SendLogOutRequestAfterRequestObjects(1) ;
			}
			else
			{
				GameController_fun_SendLogOutRequestAfterRequestObjects(-1) ;
			}
		}
		
		switch(GameController_gamedata_method)
		{
			case ENUM_METHOD.waterfall:
				if(GameController_gamedata_gamesuccess)
				{
					layer_set_visible(layer_get_id("BackgroundVictory"), true) ;
				}
				else
				{
					layer_set_visible(layer_get_id("BackgroundLoss"), true) ;
					scSoundMusicPlay(GameController_gameover_draw_music, true) ;
				}
				break ;
			
			case ENUM_METHOD.agile:
				GameController_gamedata_projectcompletition_draw = false ;
				audio_resume_sound(global.GameController_music_current) ;
				audio_sound_set_track_position(global.GameController_music_current, 90) ;
				scSoundMusicGainSet(0.5, 0) ;
				layer_set_visible(layer_get_id("BackgroundBurning"), true) ;
				break ;
			
			default:
		}
		#endregion
		break ;
	
	case CONST_ROOM_BRIEFING:
		#region //MINIGAME START
		scScreenBlacken(false, 0) ;
		switch(GameController_gamedata_method)
		{
			case ENUM_METHOD.waterfall:
				#region //WATERFALL
				if(!global.G_includedfile_network_active)
				{
					GameController_fun_SetBriefingSkipIndicator(true) ;
				}
				switch(GameController_gamedata_stage)
				{
					case 0: //project selection stage
						if((global.G_includedfile_network_active) and (global.G_savefile_cutscene_watched[ENUM_CUTSCENE_ID.stagePS_tutorial]))
						{
							GameController_fun_SetBriefingSkipIndicator(true) ;
						}
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_PROJECTSELECTION) ;
						break ;
			
					case 1: //requirement gathering stage
						if((global.G_includedfile_network_active) and (global.G_savefile_cutscene_watched[ENUM_CUTSCENE_ID.stageRA_tutorial]))
						{
							GameController_fun_SetBriefingSkipIndicator(true) ;
						}
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_REQUIREMENTANALYSIS) ;
						break ;
			
					case 2: //requirement categorization stage
						GameController_fun_SetBriefingSkipIndicator(false) ;
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_REQUIREMENTCATEGORIZATION) ;
						break ;
			
					case 3: //design stage
						if((global.G_includedfile_network_active) and (global.G_savefile_cutscene_watched[ENUM_CUTSCENE_ID.stageDs_tutorial]))
						{
							GameController_fun_SetBriefingSkipIndicator(true) ;
						}
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_DESIGN) ;
						break ;
			
					case 4: //development stage
						if((global.G_includedfile_network_active) and (global.G_savefile_cutscene_watched[ENUM_CUTSCENE_ID.stageD_tutorial]))
						{
							GameController_fun_SetBriefingSkipIndicator(true) ;
						}
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_DEVELOPMENT) ;
						break ;
			
					case 5: //testing stage
						if((global.G_includedfile_network_active) and (global.G_savefile_cutscene_watched[ENUM_CUTSCENE_ID.stageT_tutorial]))
						{
							GameController_fun_SetBriefingSkipIndicator(true) ;
						}
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_TESTING) ;
						break ;
			
					case 6: //deployment stage
						if((global.G_includedfile_network_active) and (global.G_savefile_cutscene_watched[ENUM_CUTSCENE_ID.stageDp_tutorial]))
						{
							GameController_fun_SetBriefingSkipIndicator(true) ;
						}
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_DEPLOYMENT) ;
						break ;
					
					case 7: //maintenance stage
						if((global.G_includedfile_network_active) and (global.G_savefile_cutscene_watched[ENUM_CUTSCENE_ID.stageMt_tutorial]))
						{
							GameController_fun_SetBriefingSkipIndicator(true) ;
						}
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_MAINTENANCE) ;
						break ;
			
					default:
				}
				#endregion
				break ;
			
			case ENUM_METHOD.agile:
				#region //AGILE
				//if failed at req gathering, than go back to testing
				if((GameController_gamedata_projectcompletition_draw) and (GameController_gamedata_stage == 0))
				{
					GameController_gamedata_stage = 5 ;
				}
				
				//WILL DELETE (START FROM WHERE I WANT)
				/*if(GameController_gamedata_stage == 1)
				{
					GameController_gamedata_stage = 5 ;
					GameController_gamedata_projectcompletition_draw = true ;
				}*/
				
				//WILL DELETE (SKIPPING UNFINISHED STUFF)
				if(GameController_gamedata_stage == 2)
				{
					GameController_gamedata_stage = 4 ;
				}
				else if(GameController_gamedata_stage == 3)
				{
					GameController_gamedata_stage = 1 ;
				}
				else if(GameController_gamedata_stage == 6)
				{
					GameController_gamedata_stage = 1 ;
				}
				else if(GameController_gamedata_stage == 7)
				{
					GameController_gamedata_stage = 4 ;
				}
				
				//deciding game stage
				switch(GameController_gamedata_stage)
				{
					case 0: //project selection stage
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_PROJECTSELECTION) ;
						break ;
					
					case 1: //requirement gathering stage
						if(!GameController_gamedata_projectcompletition_draw)
						{
							GameController_gamedata_projectcompletition_draw = true ;
						}
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_REQUIREMENTANALYSIS) ;
						break ;
					
					case 4: //development stage
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_DEVELOPMENT) ;
						break ;
					
					case 5: //testing stage
						instance_create_layer(0, 0, "StageControl", CONST_OBJ_STAGECONTROLLER_TESTING) ;
						break ;
					
					case 6: //returning to menu because there is nothing left, we are still coding, be patient
						audio_stop_all() ;
						scScreenNoise(true) ;
						scRoomChange(CONST_ROOM_MENU, 1) ;
						break ;
			
					default:
				}
				#endregion
				break ;
			
			default:
		}
		#endregion
		break ;
	
	default:
}

//Misc
if(global.G_savefile_extras_scarymood)
{						
	var _fx = fx_create("_filter_old_film") ;
	layer_set_fx(layer, _fx) ;
}
else if(global.G_savefile_extras_catmode)
{
	var _fx = fx_create("_filter_gradient"),
		_params = fx_get_parameters(_fx) ;
	_params.g_GradientColour1 = [150, 0, 150, 0.001] ;
	_params.g_GradientColour2 = [0, 0, 150, 0.001] ;
	fx_set_parameters(_fx, _params) ;
	layer_set_fx(layer, _fx) ;
}
