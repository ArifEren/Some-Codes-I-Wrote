///@desc STORY FLOW
switch(StageControllerRA_storyflow_id)
{
	case -1: //http request and method check
		scCreateRequestObject(ENUM_REQUEST.log, [global.ENUM_LOG_ACTION.stage_begin, "{}"]) ;
		scLocalLog(global.ENUM_LOG_ACTION.stage_begin, "{}") ;
		
		if(StageControllerRA_method == ENUM_METHOD.waterfall)
		{
			StageControllerRA_storyflow_id++ ;
		}
		else if(StageControllerRA_method == ENUM_METHOD.agile)
		{
			scScreenNoise(true) ;
			scScreenCursorChange(ENUM_CURSOR_ID.hand_open) ;
			audio_resume_sound(global.GameController_music_current) ;
			audio_sound_set_track_position(global.GameController_music_current, 55) ;
			room_goto(CONST_ROOM_STAGE_RA_AGILE) ;
			StageControllerRA_gameplay_characters = ds_list_create() ;
			StageControllerRA_gameplay_started = true ;
			StageControllerRA_storyflow_id = 50 ;
		}
		break ;
	
	case 0: //wait a bit, start music and drawing title text, wait a bit more, narrator starts talking
		if(StageControllerRA_storyflow_timer[0] > 0)
		{
			StageControllerRA_storyflow_timer[0]-- ;
		}
		else if(!StageControllerRA_storyflowdrawing_d0_draw)
		{
			scSoundMusicPlay(StageControllerRA_storyflow_music[0], true) ;
			StageControllerRA_storyflowdrawing_d0_draw = true ;			
		}
		else if(StageControllerRA_storyflow_timer[1] > 0)
		{
			StageControllerRA_storyflow_timer[1]-- ;
		}
		else
		{
			scSoundMusicGainSet(2.5, 1) ;
			scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[0], false) ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[0]) ;
		break ;
	
	case 1: //creating what is a requirement tutorial buttons
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[0]))
		{
			scSoundMusicGainSet(10, 1) ;
			scScreenCursorChange(ENUM_CURSOR_ID.hand_open) ;
			instance_create_depth(CONST_GUI_W/2, CONST_GUI_H*9/16, depth, StageControllerRA_storyflow_tutorial_button[0]) ;
			instance_create_depth(CONST_GUI_W/2, CONST_GUI_H*12/16, depth, StageControllerRA_storyflow_tutorial_button[1]) ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[0]) ;
		break ;
	
	case 2: //getting what is a requirement tutorial status, starting tutorial if it is wanted
		if(!instance_exists(StageControllerRA_storyflow_tutorial_button[0]))
		{
			if(StageControllerRA_storyflow_tutorial_whatisreq_do)
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[1], false) ;
				StageControllerRA_storyflow_id++ ;
			}
			else
			{
				StageControllerRA_storyflow_id = 13 ; //skip further
			}
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[1]) ;
		break ;
	
	case 3: //starting drawing tutorial, waiting a bit, narrator starts talking again
		if((!StageControllerRA_storyflowdrawing_d1_draw) and (!audio_is_playing(StageControllerRA_storyflow_narratorvoice[1])))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_draw = true ;
		}
		else if(StageControllerRA_storyflowdrawing_d1_draw)
		{
			if(StageControllerRA_storyflow_timer[2] > 0)
			{
				StageControllerRA_storyflow_timer[2]-- ;
			}
			else
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[2], false) ;
				StageControllerRA_storyflow_id++ ;
			}
		}
		
		if(audio_is_playing(StageControllerRA_storyflow_narratorvoice[1]))
		{
			StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[1]) ;
		}
		else
		{
			StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[2]) ;
		}
		break ;
	
	case 4: //ending the drawing to get to the next one
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[2]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[2]) ;
		break ;
	
	case 5: //drawing the next one, waiting a bit, narrator starts talking again
		if(!StageControllerRA_storyflowdrawing_d1_draw)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_frame++ ;
			StageControllerRA_storyflowdrawing_d1_draw = true ;
		}
		else if(!StageControllerRA_storyflowdrawing_d1_draw_end)
		{
			if(StageControllerRA_storyflow_timer[3] > 0)
			{
				StageControllerRA_storyflow_timer[3]-- ;
			}
			else
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[3], false) ;
				StageControllerRA_storyflow_id++ ;
			}
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[3]) ;
		break ;
	
	case 6: //drawing the next one
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[3]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_sprite_frame++ ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[3]) ;
		break ;
	
	case 7: //waiting a bit, narrator starts talking again
		if(StageControllerRA_storyflow_timer[4] > 0)
		{
			StageControllerRA_storyflow_timer[4]-- ;
		}
		else
		{
			scSoundMusicGainSet(2.5, 1) ;
			scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[4], false) ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[4]) ;
		break ;
	
	case 8: //ending the drawing to get to the next one
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[4]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[4]) ;
		break ;
	
	case 9: //drawing the next one, waiting a bit, narrator starts talking again
		if(!StageControllerRA_storyflowdrawing_d1_draw)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_frame++ ;
			StageControllerRA_storyflowdrawing_d1_draw = true ;
			
		}
		else if(!StageControllerRA_storyflowdrawing_d1_draw_end)
		{
			if(StageControllerRA_storyflow_timer[5] > 0)
			{
				StageControllerRA_storyflow_timer[5]-- ;
			}
			else
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[5], false) ;
				StageControllerRA_storyflow_id++ ;
			}
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[5]) ;
		break ;
	
	case 10: //drawing the next one
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[5]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_sprite_frame++ ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[5]) ;
		break ;
	
	case 11: //waiting a bit, narrator starts talking again
		if(StageControllerRA_storyflow_timer[6] > 0)
		{
			StageControllerRA_storyflow_timer[6]-- ;
		}
		else
		{
			scSoundMusicGainSet(2.5, 1) ;
			scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[6], false) ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[6]) ;
		break ;
	
	case 12: //ending the drawing
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[6]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[6]) ;
		break ;
	
	case 13: //waiting a bit, narrator starts talking again
		if(StageControllerRA_storyflow_timer[7] > 0)
		{
			StageControllerRA_storyflow_timer[7]-- ;
		}
		else
		{
			scSoundMusicGainSet(2.5, 1) ;
			scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[7], false) ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[7]) ;
		break ;
	
	case 14: //creating what is a requirement tutorial buttons
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[7]))
		{
			scSoundMusicGainSet(10, 1) ;
			scScreenCursorChange(ENUM_CURSOR_ID.hand_open) ;
			instance_create_depth(CONST_GUI_W/2, CONST_GUI_H*9/16, depth, StageControllerRA_storyflow_tutorial_button[0]) ;
			instance_create_depth(CONST_GUI_W/2, CONST_GUI_H*12/16, depth, StageControllerRA_storyflow_tutorial_button[1]) ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[7]) ;
		break ;
	
	case 15: //getting what is a requirement tutorial status, starting tutorial if it is wanted
		if(!instance_exists(StageControllerRA_storyflow_tutorial_button[0]))
		{
			if(StageControllerRA_storyflow_tutorial_whatisreq_do)
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[8], false) ;
				StageControllerRA_storyflow_id++ ;
			}
			else
			{
				StageControllerRA_storyflow_id = 25 ; //skip further
			}
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[8]) ;
		break ;
	
	case 16: //starting drawing the tutorial
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[8]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_sprite_frame = 5 ;
			StageControllerRA_storyflowdrawing_d1_draw = true ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[8]) ;
		break ;
	
	case 17: //waiting a bit, narrator starts talking again
		if(StageControllerRA_storyflow_timer[8] > 0)
		{
			StageControllerRA_storyflow_timer[8]-- ;
		}
		else
		{
			scSoundMusicGainSet(2.5, 1) ;
			scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[9], false) ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[9]) ;
		break ;
	
	case 18: //ending the drawing to get to the next one
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[9]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[9]) ;
		break ;
	
	case 19: //drawing the next one, waiting a bit, narrator starts talking again
		if(!StageControllerRA_storyflowdrawing_d1_draw)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_frame++ ;
			StageControllerRA_storyflowdrawing_d1_draw = true ;
		}
		else if(!StageControllerRA_storyflowdrawing_d1_draw_end)
		{
			if(StageControllerRA_storyflow_timer[9] > 0)
			{
				StageControllerRA_storyflow_timer[9]-- ;
			}
			else
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[10], false) ;
				StageControllerRA_storyflow_id++ ;
			}
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[10]) ;
		break ;
	
	case 20: //ending the drawing to get to the next one
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[10]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[10]) ;
		break ;
	
	case 21: //drawing the next one, waiting a bit, narrator starts talking again
		if(!StageControllerRA_storyflowdrawing_d1_draw)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_frame++ ;
			StageControllerRA_storyflowdrawing_d1_draw = true ;
		}
		else if(!StageControllerRA_storyflowdrawing_d1_draw_end)
		{
			if(StageControllerRA_storyflow_timer[10] > 0)
			{
				StageControllerRA_storyflow_timer[10]-- ;
			}
			else
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[11], false) ;
				StageControllerRA_storyflow_id++ ;
			}
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[11]) ;
		break ;
	
	case 22: //ending the drawing to get to the next one
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[11]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[11]) ;
		break ;
	
	case 23: //drawing the next one, waiting a bit, narrator starts talking again
		if(!StageControllerRA_storyflowdrawing_d1_draw)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_frame++ ;
			StageControllerRA_storyflowdrawing_d1_draw = true ;
		}
		else if(!StageControllerRA_storyflowdrawing_d1_draw_end)
		{
			if(StageControllerRA_storyflow_timer[11] > 0)
			{
				StageControllerRA_storyflow_timer[11]-- ;
			}
			else
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[12], false) ;
				StageControllerRA_storyflow_id++ ;
			}
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[12]) ;
		break ;
	
	case 24: //ending the drawing to get to the next one
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[12]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			StageControllerRA_storyflow_id++ ;
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[12]) ;
		break ;
	
	case 25: //starting drawing the final drawing, wait a bit, narrator starts talking again
		if(!StageControllerRA_storyflowdrawing_d1_draw)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_frame = 9 ;
			StageControllerRA_storyflowdrawing_d1_draw = true ;
		}
		else if(!StageControllerRA_storyflowdrawing_d1_draw_end)
		{
			if(StageControllerRA_storyflow_timer[12] > 0)
			{
				StageControllerRA_storyflow_timer[12]-- ;
			}
			else
			{
				scSoundMusicGainSet(2.5, 1) ;
				scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice[13], false) ;
				StageControllerRA_storyflow_id++ ;
			}
		}
		
		StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[13]) ;
		break ;
	
	case 26: //ending drawing the title, ending drawing the tutorial
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice[13]))
		{
			scSoundMusicGainSet(10, 1) ;
			StageControllerRA_storyflowdrawing_d0_draw_end = true ;
			StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			StageControllerRA_storyflow_id++ ;
		}
		else
		{
			StageControllerRA_fun_SkipIntroIfSpacePressed(StageControllerRA_storyflow_narratorvoice[13]) ;
		}
		break ;
	
	case 27: //blackening the screen, changing room
		scScreenBlacken(true, 2) ;
		scRoomChange(CONST_ROOM_STAGE_RA, 2) ;
		StageControllerRA_storyflow_id++ ;
		break ;
	
	case 28: //brightening the screen, starting the game
		if(room == CONST_ROOM_STAGE_RA)
		{
			scScreenBlacken(false, 2) ;
			scScreenCursorChange(ENUM_CURSOR_ID.hand_open) ;
			StageControllerRA_gameplay_characters = ds_list_create() ;
			StageControllerRA_gameplay_started = true ;
			StageControllerRA_storyflow_id++ ;
			
			CONST_OBJ_GAMECONTROLLER.GameController_fun_SetCutsceneWatched(ENUM_CUTSCENE_ID.stageRA_tutorial, true) ;
		}
		break ;
	
	case 29: //doing reaction according to game end result
		if(StageControllerRA_gameplay_end_result_id >= 0)
		{
			if(StageControllerRA_gameplay_sound_narratorvoice_playing != noone)
			{
				audio_stop_sound(StageControllerRA_gameplay_sound_narratorvoice_playing) ;
				StageControllerRA_gameplay_sound_narratorvoice_playing = noone ;
			}
			
			switch(StageControllerRA_gameplay_end_result_id)
			{
				case 0: //won
					StageControllerRA_storyflow_narratorvoice_endgame_playing = StageControllerRA_storyflow_narratorvoice_endgame[0] ;
					break ;
			
				case 1: //lose with mistake
					StageControllerRA_storyflow_narratorvoice_endgame_playing = StageControllerRA_storyflow_narratorvoice_endgame[3] ;
					break ;
			
				case 2: //lose with insufficent requirement (any type)
					StageControllerRA_storyflow_narratorvoice_endgame_playing = StageControllerRA_storyflow_narratorvoice_endgame[1] ;
					break ;
			
				case 3: //lose with insufficent moscow (any type)
					StageControllerRA_storyflow_narratorvoice_endgame_playing = StageControllerRA_storyflow_narratorvoice_endgame[2] ;
					break ;
			
				default:
			}
			
			scSoundMusicGainSet(2.5, 1) ;
			scSoundVoicePlay(StageControllerRA_storyflow_narratorvoice_endgame_playing, false) ;
			StageControllerRA_storyflow_id++ ;
		}
		else
		{
			//Global Timer
			StageControllerRA_gameplay_globaltime++ ;
			
			//Global Score
			if(!StageControllerRA_gameplay_end_available)
			{
				if(StageControllerRA_gameplay_globalscore_period > 0)
				{
					StageControllerRA_gameplay_globalscore_period-- ;
				}
				else if(StageControllerRA_gameplay_globalscore > 0)
				{
					StageControllerRA_gameplay_globalscore_period = StageControllerRA_gameplay_globalscore_period_max ;
					StageControllerRA_gameplay_globalscore-- ;
				}
			}
		}
		break ;
	
	case 30: //ending the game after narrator stops talking
		if(!audio_is_playing(StageControllerRA_storyflow_narratorvoice_endgame_playing))
		{
			//http request
			var _json = {
				"stage_won" : (StageControllerRA_gameplay_end_result_id == 0),
				"duration" : StageControllerRA_gameplay_globaltime/60,
				"score" : StageControllerRA_gameplay_globalscore,
				"func_req_collected" : StageControllerRA_gameplay_collected_counter_fun,
				"non_func_req_collected" : StageControllerRA_gameplay_collected_counter_nonfun,
				"moscow_must_collected" : StageControllerRA_gameplay_collected_counter_musthave,
				"moscow_should_collected" : StageControllerRA_gameplay_collected_counter_shouldhave,
				"moscow_could_collected" : StageControllerRA_gameplay_collected_counter_couldhave,
				"mistake_count" : StageControllerRA_gameplay_collected_counter_mistake
				} ;
			scCreateRequestObject(ENUM_REQUEST.log, [global.ENUM_LOG_ACTION.stage_end, json_stringify(_json)]) ;
			scCreateRequestObject(ENUM_REQUEST.addscore, [StageControllerRA_gameplay_end_result_id == 0, StageControllerRA_gameplay_globalscore]) ;
			scLocalLog(global.ENUM_LOG_ACTION.stage_end, json_stringify(_json)) ;
			
			//game save
			var _array = array_create(4) ;
			_array[0] = StageControllerRA_gameplay_globaltime/60 ;
			_array[1] = StageControllerRA_gameplay_globalscore ;
			_array[2] = StageControllerRA_gameplay_collected_counter_fun+StageControllerRA_gameplay_collected_counter_nonfun ;
			_array[3] = StageControllerRA_gameplay_collected_counter_mistake ;
			CONST_OBJ_GAMECONTROLLER.GameController_fun_SetCollectedData(, _array) ;
			
			//stage end
			scSoundMusicPlay(noone, false,, true,, 2) ;
			scScreenCursorChange(ENUM_CURSOR_ID.nothing) ;
			scScreenBlacken(true, 2) ;
			if(StageControllerRA_gameplay_end_result_id == 0)
			{
				scRoomChange(CONST_ROOM_BRIEFING, 2) ;
				CONST_OBJ_GAMECONTROLLER.GameController_fun_UpdateGameStage() ;
			}
			else
			{
				scRoomChange(CONST_ROOM_GAMEOVER, 2) ;
			}
			StageControllerRA_storyflow_id++ ;
		}
		break ;
	
	case 31: //destroying itself
		if(room != CONST_ROOM_STAGE_RA)
		{
			scScreenBlacken(false, 2) ;
			instance_destroy() ;
		}
		break ;
	
	//---------------------------------------------- AGILE PART ----------------------------------------------
		
	case 50: //gameplay
		if(StageControllerRA_gameplay_end_result_id >= 0)
		{
			if(StageControllerRA_gameplay_end_result_id != 0)
			{
				StageControllerRA_fun_ChangeScore(-StageControllerRA_gameplay_globalscore_decrease_loss) ;
			}
			
			scScreenNoise() ;
			audio_pause_sound(global.GameController_music_current) ;
			StageControllerRA_storyflow_id++ ;
		}
		else
		{
			//Global Timer
			StageControllerRA_gameplay_globaltime++ ;
			
			//Global Score
			if(!StageControllerRA_gameplay_end_available)
			{
				if(StageControllerRA_gameplay_globalscore_period > 0)
				{
					StageControllerRA_gameplay_globalscore_period-- ;
				}
				else if(StageControllerRA_gameplay_globalscore > 0)
				{
					StageControllerRA_gameplay_globalscore_period = StageControllerRA_gameplay_globalscore_period_max ;
					StageControllerRA_gameplay_globalscore-- ;
				}
			}
		}
		break ;
	
	case 51: //ending the game
		//http request
		var _json = {
			"stage_won" : (StageControllerRA_gameplay_end_result_id == 0),
			"duration" : StageControllerRA_gameplay_globaltime/60,
			"score" : StageControllerRA_gameplay_globalscore,
			"func_req_collected" : StageControllerRA_gameplay_collected_counter_fun,
			"non_func_req_collected" : StageControllerRA_gameplay_collected_counter_nonfun,
			"moscow_must_collected" : StageControllerRA_gameplay_collected_counter_musthave,
			"moscow_should_collected" : StageControllerRA_gameplay_collected_counter_shouldhave,
			"moscow_could_collected" : StageControllerRA_gameplay_collected_counter_couldhave,
			"mistake_count" : StageControllerRA_gameplay_collected_counter_mistake
			} ;
		scCreateRequestObject(ENUM_REQUEST.log, [global.ENUM_LOG_ACTION.stage_end, json_stringify(_json)]) ;
		scCreateRequestObject(ENUM_REQUEST.addscore, [StageControllerRA_gameplay_end_result_id == 0, StageControllerRA_gameplay_globalscore]) ;
		scLocalLog(global.ENUM_LOG_ACTION.stage_end, json_stringify(_json)) ;
		
		//game save
		var _array = array_create(4) ;
		_array[0] = StageControllerRA_gameplay_globaltime/60 ;
		_array[1] = StageControllerRA_gameplay_globalscore ;
		_array[2] = StageControllerRA_gameplay_collected_counter_fun+StageControllerRA_gameplay_collected_counter_nonfun ;
		_array[3] = StageControllerRA_gameplay_collected_counter_mistake ;
		CONST_OBJ_GAMECONTROLLER.GameController_fun_SetCollectedData(, _array) ;
			
		//stage end
		var _result ;
			
		if(StageControllerRA_gameplay_end_result_id == 0)
		{
			_result = CONST_OBJ_GAMECONTROLLER.GameController_fun_UpdateGameStage(, 1,, 2*StageControllerRA_gameplay_collected_counter_mistake) ;
		}
		else
		{
			_result = CONST_OBJ_GAMECONTROLLER.GameController_fun_UpdateGameStage(, -1) ;
		}
			
		if(_result)
		{
			scRoomChange(CONST_ROOM_BRIEFING, 0.5) ;
		}
		else
		{
			scRoomChange(CONST_ROOM_GAMEOVER, 0.5) ;
		}
			
		scScreenCursorChange(ENUM_CURSOR_ID.nothing) ;
		StageControllerRA_storyflow_id++ ;
		break ;
	
	case 52: //destroying itself
		if(room != CONST_ROOM_STAGE_RA_AGILE)
		{
			instance_destroy() ;
		}
		break ;
	
	default:
}
