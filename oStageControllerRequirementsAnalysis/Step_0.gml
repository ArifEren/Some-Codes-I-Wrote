///@desc GAMEPLAY
if(StageControllerRA_gameplay_started)
{
	switch(StageControllerRA_gameplay_id)
	{
		case 0:
			//narrator speaking status
			if(StageControllerRA_gameplay_sound_narratorvoice_active)
			{
				if(StageControllerRA_gameplay_sound_narratorvoice_playing != noone)
				{
					if(StageControllerRA_gameplay_sound_narratorvoice_playing_cooldown > 0)
					{
						StageControllerRA_gameplay_sound_narratorvoice_playing_cooldown-- ;
						
						if(StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce[0])
						{
							StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce[0] = false ;
							scSoundMusicGainSet(2.5, 1) ;
						}
					}
					else if(StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce[1])
					{
						StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce[1] = false ;
						scSoundVoicePlay(StageControllerRA_gameplay_sound_narratorvoice_playing, false) ;
					}
					else if(!audio_is_playing(StageControllerRA_gameplay_sound_narratorvoice_playing))
					{
						StageControllerRA_gameplay_sound_narratorvoice_playing = noone ;
						StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce[0] = true ;
						StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce[1] = true ;
						scSoundMusicGainSet(10, 1) ;
					}
				}
			}
			//game timer
			if(StageControllerRA_gameplay_timer_active)
			{
				StageControllerRA_fun_CompletitionBeforeTimerRunsOutCheck() ;
				
				if(StageControllerRA_gameplay_timer_countdown > 0)
				{
					StageControllerRA_gameplay_timer_countdown-- ;
				}
				else //time runs out
				{
					StageControllerRA_fun_StopActivityOfGame() ;
					StageControllerRA_fun_TimerRunsOutCheck() ;
				}
			}
			
			//if there is anyone in the line, then keep working on characters
			if(StageControllerRA_gameplay_character_active)
			{
				if(!ds_list_empty(StageControllerRA_gameplay_characters))
				{
					//if there is no one near the desk of the player, then move characters
					if(StageControllerRA_gameplay_characters[| 0].__x > StageControllerRA_gameplay_character_starttalk_x)
					{
						if(StageControllerRA_gameplay_characters[| 0].__xx == 0)
						{
							StageControllerRA_fun_CreateNewCharacter() ;
							StageControllerRA_fun_MoveCharacters() ;
						}
					}
					else //if there is someone near the desk, then first in line starts talking
					{
						//create the requirement text and wait for input
						if(StageControllerRA_gameplay_reqtext_current == noone)
						{
							StageControllerRA_fun_CreateReqText() ;
						}
						else if(!StageControllerRA_gameplay_reqtext_draw_end)
						{
							//mouse on accept button
							if((mouse_x >= StageControllerRA_gameplay_reqtext_draw_buttons_accept_x) and (mouse_x <= StageControllerRA_gameplay_reqtext_draw_buttons_accept_x+StageControllerRA_gameplay_reqtext_draw_buttons_sprite_w) and (mouse_y <= StageControllerRA_gameplay_reqtext_draw_buttons_accept_y) and (mouse_y >= StageControllerRA_gameplay_reqtext_draw_buttons_accept_y-StageControllerRA_gameplay_reqtext_draw_buttons_sprite_h))
							{
								StageControllerRA_fun_CursorCheckOnSomething() ;
							
								if(mouse_check_button_pressed(mb_left))
								{
									StageControllerRA_fun_CursorCheckOnNothing() ;
									StageControllerRA_fun_RequirementAccept() ;
								}
							}
							//mouse on deny button
							else if((mouse_x >= StageControllerRA_gameplay_reqtext_draw_buttons_deny_x) and (mouse_x <= StageControllerRA_gameplay_reqtext_draw_buttons_deny_x+StageControllerRA_gameplay_reqtext_draw_buttons_sprite_w) and (mouse_y <= StageControllerRA_gameplay_reqtext_draw_buttons_deny_y) and (mouse_y >= StageControllerRA_gameplay_reqtext_draw_buttons_deny_y-StageControllerRA_gameplay_reqtext_draw_buttons_sprite_h))
							{
								StageControllerRA_fun_CursorCheckOnSomething() ;
							
								if(mouse_check_button_pressed(mb_left))
								{
									StageControllerRA_fun_CursorCheckOnNothing() ;
									StageControllerRA_fun_RequirementDeny() ;
								}
							}
							//mouse is not on a button
							else
							{
								StageControllerRA_fun_CursorCheckOnNothing() ;
							}
						}
					}
				
					//making the movement of characters
					var _c = 0,
						_list_size = ds_list_size(StageControllerRA_gameplay_characters),
						_movement_decider_x,
						_movement_decider_y,
						_movement_helper ;
					for(; _c < _list_size; _c++)
					{
						//will there be a movement on x or y
						_movement_decider_x = abs(StageControllerRA_gameplay_characters[| _c].__xx) > 0 ;
						_movement_decider_y = abs(StageControllerRA_gameplay_characters[| _c].__yy) > 0 ;
					
						//x movement
						if(_movement_decider_x)
						{
							_movement_helper = sign(StageControllerRA_gameplay_characters[| _c].__xx)*StageControllerRA_gameplay_characters[| _c].__x_speed ;
							if(sign(StageControllerRA_gameplay_characters[| _c].__xx-_movement_helper) == sign(_movement_helper))
							{
								StageControllerRA_gameplay_characters[| _c].__x += _movement_helper ;
								StageControllerRA_gameplay_characters[| _c].__xx -= _movement_helper ;
							}
							else
							{
								StageControllerRA_gameplay_characters[| _c].__x += StageControllerRA_gameplay_characters[| _c].__xx ;
								StageControllerRA_gameplay_characters[| _c].__xx = 0 ;
							}
						}
					
						//y movement
						if(_movement_decider_y)
						{
							_movement_helper = sign(StageControllerRA_gameplay_characters[| _c].__yy)*StageControllerRA_gameplay_characters[| _c].__y_speed ;
							if(sign(StageControllerRA_gameplay_characters[| _c].__yy-_movement_helper) == sign(_movement_helper))
							{
								StageControllerRA_gameplay_characters[| _c].__y += _movement_helper ;
								StageControllerRA_gameplay_characters[| _c].__yy -= _movement_helper ;
							}
							else
							{
								StageControllerRA_gameplay_characters[| _c].__y += StageControllerRA_gameplay_characters[| _c].__yy ;
								StageControllerRA_gameplay_characters[| _c].__yy = 0 ;
							}
						}
					
						//angle movement
						if((_movement_decider_x) or (_movement_decider_y)) //angle animation
						{
							if(StageControllerRA_gameplay_characters[| _c].__angle_control)
							{
								if(StageControllerRA_gameplay_characters[| _c].__angle < StageControllerRA_gameplay_characters[| _c].__angle_arc)
								{
									StageControllerRA_gameplay_characters[| _c].__angle += StageControllerRA_gameplay_characters[| _c].__angle_speed ;
								}
								else
								{
									StageControllerRA_gameplay_characters[| _c].__angle_control = false ;
								}
							}
							else
							{
								if(StageControllerRA_gameplay_characters[| _c].__angle > -StageControllerRA_gameplay_characters[| _c].__angle_arc)
								{
									StageControllerRA_gameplay_characters[| _c].__angle -= StageControllerRA_gameplay_characters[| _c].__angle_speed ;
								}
								else
								{
									StageControllerRA_gameplay_characters[| _c].__angle_control = true ;
								}
							}
						}
						else if(abs(StageControllerRA_gameplay_characters[| _c].__angle) > StageControllerRA_gameplay_characters[| _c].__angle_speed) //return to normal (angle = zero) [step 1]
						{
							StageControllerRA_gameplay_characters[| _c].__angle -= sign(StageControllerRA_gameplay_characters[| _c].__angle)*StageControllerRA_gameplay_characters[| _c].__angle_speed ;
						}
						else if(StageControllerRA_gameplay_characters[| _c].__angle != 0) //return to normal (angle = zero) [step 2]
						{
							StageControllerRA_gameplay_characters[| _c].__angle = 0 ;
							StageControllerRA_gameplay_characters[| _c].__angle_control = choose(true, false) ;
						}
					}
				}
				else //if no one is in the line, then create someone to start the game
				{
					StageControllerRA_fun_CreateNewCharacter() ;
					StageControllerRA_fun_MoveCharacters() ;
				}
			}
			
			//if there is a leaving character, make its movement
			if(StageControllerRA_gameplay_character_leaving != noone)
			{
				//will there be a movement on x or y
				var _movement_decider_x = abs(StageControllerRA_gameplay_character_leaving.__xx) > 0,
					_movement_decider_y = abs(StageControllerRA_gameplay_character_leaving.__yy) > 0,
					_movement_helper ;
					
				//x movement
				if(_movement_decider_x)
				{
					_movement_helper = sign(StageControllerRA_gameplay_character_leaving.__xx)*StageControllerRA_gameplay_character_leaving.__x_speed ;
					if(sign(StageControllerRA_gameplay_character_leaving.__xx-_movement_helper) == sign(_movement_helper))
					{
						StageControllerRA_gameplay_character_leaving.__x += _movement_helper ;
						StageControllerRA_gameplay_character_leaving.__xx -= _movement_helper ;
					}
					else
					{
						StageControllerRA_gameplay_character_leaving.__x += StageControllerRA_gameplay_character_leaving.__xx ;
						StageControllerRA_gameplay_character_leaving.__xx = 0 ;
					}
				}
					
				//y movement
				if(_movement_decider_y)
				{
					_movement_helper = sign(StageControllerRA_gameplay_character_leaving.__yy)*StageControllerRA_gameplay_character_leaving.__y_speed ;
					if(sign(StageControllerRA_gameplay_character_leaving.__yy-_movement_helper) == sign(_movement_helper))
					{
						StageControllerRA_gameplay_character_leaving.__y += _movement_helper ;
						StageControllerRA_gameplay_character_leaving.__yy -= _movement_helper ;
					}
					else
					{
						StageControllerRA_gameplay_character_leaving.__y += StageControllerRA_gameplay_character_leaving.__yy ;
						StageControllerRA_gameplay_character_leaving.__yy = 0 ;
					}
				}
					
				//angle movement
				if((_movement_decider_x) or (_movement_decider_y)) //angle animation
				{
					if(StageControllerRA_gameplay_character_leaving.__angle_control)
					{
						if(StageControllerRA_gameplay_character_leaving.__angle < StageControllerRA_gameplay_character_leaving.__angle_arc)
						{
							StageControllerRA_gameplay_character_leaving.__angle += StageControllerRA_gameplay_character_leaving.__angle_speed ;
						}
						else
						{
							StageControllerRA_gameplay_character_leaving.__angle_control = false ;
						}
					}
					else
					{
						if(StageControllerRA_gameplay_character_leaving.__angle > -StageControllerRA_gameplay_character_leaving.__angle_arc)
						{
							StageControllerRA_gameplay_character_leaving.__angle -= StageControllerRA_gameplay_character_leaving.__angle_speed ;
						}
						else
						{
							StageControllerRA_gameplay_character_leaving.__angle_control = true ;
						}
					}
				}
				else //after going down a bit, move out of the screen
				{
					StageControllerRA_gameplay_character_leaving.__xx = CONST_GUI_W ;
				}
				
				//out of the screen check
				if((StageControllerRA_gameplay_character_leaving.__x-(StageControllerRA_gameplay_character_sprite_w) > CONST_GUI_W) or (StageControllerRA_gameplay_character_leaving.__y-(StageControllerRA_gameplay_character_sprite_h) > CONST_GUI_H))
				{
					StageControllerRA_gameplay_character_leaving = noone ;
				}
			}
			break ;
		
		default:
	}
}
