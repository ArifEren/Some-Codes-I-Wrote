#region ||AUDIO GROUP LOADING||
if(GameController_audiogroup_loading)
{
	if((audio_group_is_loaded(CONST_AG_EFFECT)) and (audio_group_is_loaded(CONST_AG_MUSIC)) and (audio_group_is_loaded(CONST_AG_VOICE)))
	{
		GameController_audiogroup_loading = false ;
		GameController_logo_draw = true ;
		
		audio_group_set_gain(CONST_AG_EFFECT, global.G_savefile_sound_effect_level/10, 0) ;
		audio_group_set_gain(CONST_AG_MUSIC, global.G_savefile_sound_music_level/10, 0) ;
		audio_group_set_gain(CONST_AG_VOICE, global.G_savefile_sound_voice_level/10, 0) ;
	}
}
#endregion

#region ||MUSIC CONTROL||
if(GameController_music_playing != GameController_music_willplay)
{
	//IF there is no music playing OR the music that was playing has ended
	if((GameController_music_playing == noone) or ((GameController_music_playing != noone) and (!audio_is_playing(GameController_music_playing))))
	{
		//if there will be a new music
		if(GameController_music_willplay != noone)
		{
			//if smoothly exit is stuck to "false", change it back to "true"
			if(!GameController_music_willplay_smoothly_exit_doitonce)
			{
				GameController_music_willplay_smoothly_exit_doitonce = true ;
			}
			
			//play the new music
			global.GameController_music_current = audio_play_sound(GameController_music_willplay, 2, GameController_music_willplay_loop) ;
		
			//smoothly enter
			if(GameController_music_willplay_smoothly_enter)
			{
				audio_sound_gain(GameController_music_willplay, 0, 0) ;
				audio_sound_gain(GameController_music_willplay, 1, GameController_music_willplay_smoothly_enter_timer) ;
			}
			else //instantly enter
			{
				audio_sound_gain(GameController_music_willplay, 1, 0) ;
			}
		}
		
		//update variables
		GameController_music_playing = GameController_music_willplay ;
	}
	else
	{
		//smoothly exit
		if(GameController_music_willplay_smoothly_exit)
		{
			//set sound gain once
			if(GameController_music_willplay_smoothly_exit_doitonce)
			{
				GameController_music_willplay_smoothly_exit_doitonce = false ;
				audio_sound_gain(GameController_music_playing, 0, GameController_music_willplay_smoothly_exit_timer) ;
			}
			else if(audio_sound_get_gain(GameController_music_playing) <= 0)
			{
				audio_stop_sound(GameController_music_playing) ;
				global.GameController_music_current = noone ;
				GameController_music_willplay_smoothly_exit_doitonce = true ;
			}
		}
		else //instantly end the music
		{
			audio_stop_sound(GameController_music_playing) ;
			global.GameController_music_current = noone ;
		}
	}
}
#endregion

#region ||PLANNED ROOM CHANGE||
if(GameController_roomchange_newroom != noone)
{
	if(GameController_roomchange_timer > 0)
	{
		GameController_roomchange_timer-- ;
	}
	else
	{
		room_goto(GameController_roomchange_newroom) ;
		GameController_roomchange_newroom = noone ;
	}
}
#endregion

#region ||REQUESTING SCOREBOARD DATA||
if(GameController_scoreboard_dataget_timer_active)
{
	if(!GameController_scoreboard_dataget_timer_hold)
	{
		if(GameController_scoreboard_dataget_timer > 0)
		{
			GameController_scoreboard_dataget_timer-- ;
		}
		else
		{
			GameController_scoreboard_dataget_timer = GameController_scoreboard_dataget_timer_max ;
			GameController_scoreboard_dataget_timer_hold = true ;
			scCreateRequestObject(ENUM_REQUEST.getscoreboard, noone) ;
		}
	}
}
#endregion

#region ||STILL LOGGED IN CHECK||
if(GameController_loggedinstatus_dataget_timer_active)
{
	if(!GameController_loggedinstatus_dataget_timer_hold)
	{
		if(GameController_loggedinstatus_dataget_timer > 0)
		{
			GameController_loggedinstatus_dataget_timer-- ;
		}
		else
		{
			GameController_loggedinstatus_dataget_timer = GameController_loggedinstatus_dataget_timer_max ;
			GameController_loggedinstatus_dataget_timer_hold = true ;
			scCreateRequestObject(ENUM_REQUEST.getloggedinstatus, noone) ;
		}
	}
}
#endregion

#region ||LOG OUT AFTER REQUEST OBJECTS||
if(global.G_includedfile_network_active)
{
	if(GameController_network_waitforrequestobjects_forlogout)
	{
		if(!instance_exists(CONST_OBJ_REQUEST))
		{
			GameController_network_waitforrequestobjects_forlogout = false ;
			GameController_fun_SendLogOutRequest(GameController_network_waitforrequestobjects_forlogout_wonstatus) ;
		}
	}
}
#endregion
