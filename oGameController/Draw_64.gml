///@desc SCREEN FUNCTIONS & SUBTITLES
#region ||SCREEN SHAKE||
if(GameController_screen_shake)
{
	if(GameController_screen_shake_power > 0)
	{
		var _GameController_screen_shake_count = ceil(CONST_GUI_H/GameController_screen_shake_size_y) ;
		for(var _c = 0; _c < _GameController_screen_shake_count; _c++)
		{
			draw_surface_part(application_surface, irandom_range(-GameController_screen_shake_power, GameController_screen_shake_power), GameController_screen_shake_size_y*_c, CONST_GUI_W, GameController_screen_shake_size_y, 0, GameController_screen_shake_size_y*_c) ;
		}
		
		GameController_screen_shake_power -= GameController_screen_shake_power_speed*GameController_screen_shake_power_speed_factor ;
	}
	else
	{
		GameController_screen_shake = false ;
	}
}
#endregion

#region ||SCREEN NOISE||
if(GameController_screen_noise)
{
	draw_set_alpha(GameController_screen_noise_alpha) ;
	draw_set_color(c_black) ;
	draw_rectangle(-5, -5, CONST_GUI_W+5, CONST_GUI_H+5, false) ;
	
	var _GameController_screen_noise_count_x = ceil(CONST_GUI_W/GameController_screen_noise_size),
		_GameController_screen_noise_count = _GameController_screen_noise_count_x*ceil(CONST_GUI_H/GameController_screen_noise_size),
		_GameController_screen_noise_pos_x = 0,
		_GameController_screen_noise_pos_y = 0,
		_GameController_screen_noise_counter ;
	
	draw_set_color(c_gray) ;
	for(_GameController_screen_noise_counter = 0; _GameController_screen_noise_counter < _GameController_screen_noise_count; _GameController_screen_noise_counter++)
	{
		_GameController_screen_noise_pos_x = GameController_screen_noise_size*(_GameController_screen_noise_counter%_GameController_screen_noise_count_x) ;
		_GameController_screen_noise_pos_y = GameController_screen_noise_size*floor(_GameController_screen_noise_counter/_GameController_screen_noise_count_x) ;
		if(choose(false, true)) draw_rectangle(_GameController_screen_noise_pos_x, _GameController_screen_noise_pos_y, _GameController_screen_noise_pos_x+GameController_screen_noise_size, _GameController_screen_noise_pos_y+GameController_screen_noise_size, false) ;
	}
	
	if(GameController_screen_noise_color != c_white)
	{
		draw_set_color(GameController_screen_noise_color) ;
		draw_set_alpha(0.5) ;
		draw_rectangle(-5, -5, CONST_GUI_W+5, CONST_GUI_H+5, false) ;
	}
	
	draw_set_color(c_white) ;
	draw_set_alpha(1) ;
	
	if(GameController_screen_noise_timer > 0)
	{
		if(GameController_screen_noise_alpha < 1)
		{
			if(GameController_screen_noise_alpha_speed_factor > 0)
			{
				GameController_screen_noise_alpha += GameController_screen_noise_alpha_speed*GameController_screen_noise_alpha_speed_factor ;
			}
			else
			{
				GameController_screen_noise_alpha = 1 ;
			}
		}
		else
		{
			GameController_screen_noise_timer-- ;
		}
	}
	else
	{
		if(GameController_screen_noise_alpha > 0)
		{
			if(GameController_screen_noise_alpha_speed_factor > 0)
			{
				GameController_screen_noise_alpha -= GameController_screen_noise_alpha_speed*GameController_screen_noise_alpha_speed_factor ;
			}
			else if(GameController_screen_noise_alpha_speed_factor < 0)
			{
				GameController_screen_noise_alpha -= GameController_screen_noise_alpha_speed*abs(GameController_screen_noise_alpha_speed_factor) ;
			}
			else
			{
				GameController_screen_noise_alpha = 0 ;
			}
		}
		else
		{
			GameController_screen_noise = false ;
			GameController_screen_noise_alpha = 0 ;
			
			if(audio_is_playing(GameController_screen_noise_sound))
			{
				audio_stop_sound(GameController_screen_noise_sound) ;
			}
		}
	}
	
	if(GameController_screen_noise_forcestop)
	{
		GameController_screen_noise = false ;
		GameController_screen_noise_forcestop = false ;
		GameController_screen_noise_alpha = 0 ;
			
		if(audio_is_playing(GameController_screen_noise_sound))
		{
			audio_stop_sound(GameController_screen_noise_sound) ;
		}
	}
}
#endregion

#region ||SCREEN BLACKEN||
if(GameController_screen_blacken)
{
	if(GameController_screen_blacken_alpha < 1)
	{
		GameController_screen_blacken_alpha = min(1, GameController_screen_blacken_alpha+GameController_screen_blacken_alpha_speed) ;
	}
	
	draw_set_color(c_black) ;
	draw_set_alpha(GameController_screen_blacken_alpha) ;
	draw_rectangle(-5, -5, CONST_GUI_W+5, CONST_GUI_H+5, false) ;
	draw_set_alpha(1) ;
	draw_set_color(c_white) ;
}
else if(GameController_screen_blacken_alpha > 0)
{
	draw_set_color(c_black) ;
	draw_set_alpha(GameController_screen_blacken_alpha) ;
	draw_rectangle(-5, -5, CONST_GUI_W+5, CONST_GUI_H+5, false) ;
	draw_set_alpha(1) ;
	draw_set_color(c_white) ;
	
	GameController_screen_blacken_alpha = max(0, GameController_screen_blacken_alpha-GameController_screen_blacken_alpha_speed) ;
}
#endregion

#region ||SCREEN LIGHT||
if(GameController_screen_light)
{
	if(!surface_exists(GameController_screen_light_surface))
	{
		GameController_screen_light_surface = surface_create(CONST_GUI_W, CONST_GUI_H) ;
	}
	
	if(GameController_screen_light_follow)
	{
		GameController_screen_light_following_x = mouse_x ;
		GameController_screen_light_following_y = mouse_y ;
	}
	else
	{
		GameController_screen_light_following_x = CONST_GUI_W/2 ;
		GameController_screen_light_following_y = CONST_GUI_H/2 ;
	}
	
	surface_set_target(GameController_screen_light_surface) ;
	draw_clear(GameController_screen_light_color) ;
	gpu_set_blendmode(bm_subtract) ;
	draw_circle_color(GameController_screen_light_following_x, GameController_screen_light_following_y, GameController_screen_light_r, c_white, c_black, false) ;
	surface_reset_target() ;
	draw_surface(GameController_screen_light_surface, 0, 0) ;
	gpu_set_blendmode(bm_normal) ;
}
#endregion

#region ||SCOREBOARD||
if((global.G_includedfile_scoreboard_active) and (GameController_scoreboard_dataget_timer_active))
{
	//pressed counter
	if(keyboard_check_pressed(vk_tab))
	{
		GameController_scoreboard_dataget_looked_counter++ ;
	}
	
	//drawing
	if(keyboard_check(vk_tab))
	{
		//local variables
		var _position_x2 = GameController_scoreboard_backbar_x+GameController_scoreboard_backbar_xx,
			_position_y1,
			_position_y2 = GameController_scoreboard_titles_bar_y+GameController_scoreboard_titles_bar_yy,
			_text,
			_text_x = GameController_scoreboard_backbar_x+floor(GameController_scoreboard_general_offset_x/4),
			_text_y = GameController_scoreboard_titles_bar_y+GameController_scoreboard_titles_text_offset_y,
			_c ;
		
		//blackening the background
		draw_set_color(c_black) ;
		draw_set_alpha(GameController_scoreboard_background_alpha) ;
		draw_rectangle(0, 0, CONST_GUI_W, CONST_GUI_H, false) ;
		
		//title bar outline
		draw_set_color(GameController_scoreboard_titles_bar_outline_color) ;
		draw_set_alpha(GameController_scoreboard_titles_bar_alpha) ;
		draw_rectangle(GameController_scoreboard_backbar_x-GameController_scoreboard_titles_bar_outline_size, GameController_scoreboard_titles_bar_y-GameController_scoreboard_titles_bar_outline_size, _position_x2+GameController_scoreboard_titles_bar_outline_size, _position_y2+GameController_scoreboard_titles_bar_outline_size, false) ;
		
		//title bar
		draw_set_color(GameController_scoreboard_titles_bar_color) ;
		draw_set_alpha(GameController_scoreboard_titles_bar_alpha) ;
		draw_rectangle(GameController_scoreboard_backbar_x, GameController_scoreboard_titles_bar_y, _position_x2, _position_y2, false) ;
		
		//title text (placement)
		draw_set_halign(fa_left) ;
		draw_set_color(GameController_scoreboard_titles_text_color) ;
		draw_text_transformed(_text_x, _text_y, GameController_scoreboard_titles_text[0], GameController_scoreboard_titles_text_size, GameController_scoreboard_titles_text_size, 0) ;
		
		//title text (student id)
		_text_x += floor(GameController_scoreboard_general_offset_x*3/4)+GameController_scoreboard_studentid_offset_x ;
		draw_text_transformed(_text_x, _text_y, GameController_scoreboard_titles_text[1], GameController_scoreboard_titles_text_size, GameController_scoreboard_titles_text_size, 0) ;
		
		//title text (how it ended)
		draw_set_halign(fa_center) ;
		_text_x += GameController_scoreboard_howitended_offset_x ;
		if(!global.G_home_edition_active)
		{
			draw_text_transformed(_text_x, _text_y, GameController_scoreboard_titles_text[2], GameController_scoreboard_titles_text_size, GameController_scoreboard_titles_text_size, 0) ;
		}
		
		//title text (run id)
		draw_set_halign(fa_center) ;
		_text_x += GameController_scoreboard_runid_offset_x ;
		draw_text_transformed(_text_x, _text_y, GameController_scoreboard_titles_text[3], GameController_scoreboard_titles_text_size, GameController_scoreboard_titles_text_size, 0) ;
		draw_set_halign(fa_left) ;
		
		//title text (stage)
		draw_set_halign(fa_center) ;
		_text_x += GameController_scoreboard_stage_offset_x ;
		if(!global.G_home_edition_active)
		{
			draw_text_transformed(_text_x, _text_y, GameController_scoreboard_titles_text[4], GameController_scoreboard_titles_text_size, GameController_scoreboard_titles_text_size, 0) ;
		}
		draw_set_halign(fa_left) ;
		
		//title text (score)
		draw_set_halign(fa_left) ;
		_text_x += GameController_scoreboard_score_offset_x ;
		draw_text_transformed(_text_x, _text_y, GameController_scoreboard_titles_text[5], GameController_scoreboard_titles_text_size, GameController_scoreboard_titles_text_size, 0) ;
		
		//drawing the shown part of the scoreboard
		for(_c = 0; _c < GameController_scoreboard_showcount; _c++)
		{
			//local variable calculations
			_position_y1 = GameController_scoreboard_backbar_y+(GameController_scoreboard_backbar_yy*_c)+(GameController_scoreboard_backbar_yy_next*_c) ;
			_position_y2 = GameController_scoreboard_backbar_y+(GameController_scoreboard_backbar_yy*(_c+1))+(GameController_scoreboard_backbar_yy_next*_c) ;
			
			if(GameController_scoreboard_thisuserisextra) //nothing is highlighted
			{
				//backbars' outline
				draw_set_color(GameController_scoreboard_backbar_outline_color) ;
				draw_set_alpha(GameController_scoreboard_backbar_alpha) ;
				draw_rectangle(GameController_scoreboard_backbar_x-GameController_scoreboard_backbar_outline_size, _position_y1-GameController_scoreboard_backbar_outline_size, _position_x2+GameController_scoreboard_backbar_outline_size, _position_y2+GameController_scoreboard_backbar_outline_size, false) ;
			
				//backbars
				draw_set_color(GameController_scoreboard_backbar_color) ;
				draw_set_alpha(GameController_scoreboard_backbar_alpha) ;
				draw_rectangle(GameController_scoreboard_backbar_x, _position_y1, _position_x2, _position_y2, false) ;
			}
			else //this student is highlighted
			{
				//backbars' outline
				draw_set_color((GameController_scoreboard_thisuserisextra_placement != _c) ? GameController_scoreboard_backbar_outline_color : GameController_scoreboard_backbar_outline_color_thisuser) ;
				draw_set_alpha(GameController_scoreboard_backbar_alpha) ;
				draw_rectangle(GameController_scoreboard_backbar_x-GameController_scoreboard_backbar_outline_size, _position_y1-GameController_scoreboard_backbar_outline_size, _position_x2+GameController_scoreboard_backbar_outline_size, _position_y2+GameController_scoreboard_backbar_outline_size, false) ;
			
				//backbars
				draw_set_color((GameController_scoreboard_thisuserisextra_placement != _c) ? GameController_scoreboard_backbar_color : GameController_scoreboard_backbar_color_thisuser) ;
				draw_set_alpha(GameController_scoreboard_backbar_alpha) ;
				draw_rectangle(GameController_scoreboard_backbar_x, _position_y1, _position_x2, _position_y2, false) ;
			}
			
			//placements
			_text_x = GameController_scoreboard_backbar_x+GameController_scoreboard_general_offset_x ;
			_text_y = _position_y1+GameController_scoreboard_general_offset_y ;
			draw_sprite_ext(GameController_scoreboard_placement_sprite, _c, _text_x, _text_y, GameController_scoreboard_placement_sprite_size, GameController_scoreboard_placement_sprite_size, 0, c_white, 1) ;
			
			//student ids
			_text_x += GameController_scoreboard_studentid_offset_x ;
			draw_set_color(c_black) ;
			draw_text_transformed(_text_x+GameController_scoreboard_studentid_size, _text_y, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_studentid_size, _text_y, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			draw_text_transformed(_text_x, _text_y+GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			draw_text_transformed(_text_x, _text_y-GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			draw_text_transformed(_text_x+GameController_scoreboard_studentid_size, _text_y+GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			draw_text_transformed(_text_x+GameController_scoreboard_studentid_size, _text_y-GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_studentid_size, _text_y+GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_studentid_size, _text_y-GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			draw_set_color(GameController_scoreboard_studentid_color) ;
			draw_text_transformed(_text_x, _text_y, GameController_scoreboard_studentid[_c], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
			
			//how it ended
			_text_x += GameController_scoreboard_howitended_offset_x ;
			if(!global.G_home_edition_active)
			{
				draw_sprite_ext(GameController_scoreboard_howitended_sprite, GameController_scoreboard_howitended[_c], _text_x, _text_y, GameController_scoreboard_howitended_sprite_size, GameController_scoreboard_howitended_sprite_size, 0, c_white, 1) ;
			}
			
			//run id
			_text_x += GameController_scoreboard_runid_offset_x ;
			if(GameController_scoreboard_runid[_c] == -1)
			{
				GameController_scoreboard_runid[_c] = 0 ;
			}
			draw_set_halign(fa_center) ;
			draw_set_color(c_black) ;
			draw_text_transformed(_text_x+GameController_scoreboard_runid_size, _text_y, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_runid_size, _text_y, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_text_transformed(_text_x, _text_y+GameController_scoreboard_runid_size, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_text_transformed(_text_x, _text_y-GameController_scoreboard_runid_size, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_text_transformed(_text_x+GameController_scoreboard_runid_size, _text_y+GameController_scoreboard_runid_size, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_text_transformed(_text_x+GameController_scoreboard_runid_size, _text_y-GameController_scoreboard_runid_size, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_runid_size, _text_y+GameController_scoreboard_runid_size, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_runid_size, _text_y-GameController_scoreboard_runid_size, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_set_color(GameController_scoreboard_runid_color) ;
			draw_text_transformed(_text_x, _text_y, GameController_scoreboard_runid[_c], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
			draw_set_halign(fa_left) ;
			
			//stages
			_text_x += GameController_scoreboard_stage_offset_x ;
			if(!global.G_home_edition_active)
			{
				if(GameController_scoreboard_stage[_c] == -1)
				{
					GameController_scoreboard_stage[_c] = 0 ;
				}
			}
			draw_set_halign(fa_center) ;
			draw_set_color(c_black) ;
			if(!global.G_home_edition_active)
			{
				draw_text_transformed(_text_x+GameController_scoreboard_stage_size, _text_y, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_stage_size, _text_y, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				draw_text_transformed(_text_x, _text_y+GameController_scoreboard_stage_size, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				draw_text_transformed(_text_x, _text_y-GameController_scoreboard_stage_size, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_stage_size, _text_y+GameController_scoreboard_stage_size, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_stage_size, _text_y-GameController_scoreboard_stage_size, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_stage_size, _text_y+GameController_scoreboard_stage_size, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_stage_size, _text_y-GameController_scoreboard_stage_size, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				draw_set_color(GameController_scoreboard_stage_color) ;
				draw_text_transformed(_text_x, _text_y, GameController_scoreboard_stage[_c], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
			}
			draw_set_halign(fa_left) ;
			
			//scores
			_text_x += GameController_scoreboard_score_offset_x ;
			draw_set_color(c_black) ;
			draw_text_transformed(_text_x+GameController_scoreboard_score_size, _text_y, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_score_size, _text_y, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			draw_text_transformed(_text_x, _text_y+GameController_scoreboard_score_size, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			draw_text_transformed(_text_x, _text_y-GameController_scoreboard_score_size, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			draw_text_transformed(_text_x+GameController_scoreboard_score_size, _text_y+GameController_scoreboard_score_size, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			draw_text_transformed(_text_x+GameController_scoreboard_score_size, _text_y-GameController_scoreboard_score_size, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_score_size, _text_y+GameController_scoreboard_score_size, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			draw_text_transformed(_text_x-GameController_scoreboard_score_size, _text_y-GameController_scoreboard_score_size, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			draw_set_color(GameController_scoreboard_score_color) ;
			draw_text_transformed(_text_x, _text_y, GameController_scoreboard_score[_c], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
		}
		
		//if there are more players than shown, draw three dots and check for this student's placement
		if(GameController_scoreboard_playercount > GameController_scoreboard_showcount)
		{
			//setting stuff
			_text_x = GameController_scoreboard_backbar_x+(GameController_scoreboard_backbar_xx/2) ;
			
			//outlife of the first dot
			_position_y2 += GameController_scoreboard_backbar_yy_next ;
			draw_set_color(GameController_scoreboard_threedots_outline_color) ;
			draw_circle(_text_x, _position_y2, GameController_scoreboard_threedots_outline_r, false) ;
			
			//first dot
			draw_set_color(GameController_scoreboard_threedots_color) ;
			draw_circle(_text_x, _position_y2, GameController_scoreboard_threedots_r, false) ;
			
			//outline of the second dot
			_position_y2 += GameController_scoreboard_threedots_yy ;
			draw_set_color(GameController_scoreboard_threedots_outline_color) ;
			draw_circle(_text_x, _position_y2, GameController_scoreboard_threedots_outline_r, false) ;
			
			//second dot
			draw_set_color(GameController_scoreboard_threedots_color) ;
			draw_circle(_text_x, _position_y2, GameController_scoreboard_threedots_r, false) ;
			
			//outline of the third dot
			_position_y2 += GameController_scoreboard_threedots_yy ;
			draw_set_color(GameController_scoreboard_threedots_outline_color) ;
			draw_circle(_text_x, _position_y2, GameController_scoreboard_threedots_outline_r, false) ;
			
			//third dot
			draw_set_color(GameController_scoreboard_threedots_color) ;
			draw_circle(_text_x, _position_y2, GameController_scoreboard_threedots_r, false) ;
			
			//if this student is not in the shown part, draw it at the bottom
			if(GameController_scoreboard_thisuserisextra)
			{
				//local variable calculations (for this student)
				_position_y1 = _position_y2+GameController_scoreboard_backbar_yy_next ;
				_position_y2 = _position_y1+GameController_scoreboard_backbar_yy ;
				
				//backbar's outline (for this student)
				draw_set_color(GameController_scoreboard_backbar_outline_color_thisuser) ;
				draw_rectangle(GameController_scoreboard_backbar_x-GameController_scoreboard_backbar_outline_size, _position_y1-GameController_scoreboard_backbar_outline_size, _position_x2+GameController_scoreboard_backbar_outline_size, _position_y2+GameController_scoreboard_backbar_outline_size, false) ;
				
				//backbar (for this student)
				draw_set_color(GameController_scoreboard_backbar_color_thisuser) ;
				draw_rectangle(GameController_scoreboard_backbar_x, _position_y1, _position_x2, _position_y2, false) ;
				
				//placement (for this student)
				_text_x = GameController_scoreboard_backbar_x+floor(GameController_scoreboard_general_offset_x/4) ;
				_text_y = _position_y1+GameController_scoreboard_general_offset_y ;
				_text = string(GameController_scoreboard_thisuserisextra_placement+1) + "th" ;
				draw_set_color(c_black) ;
				draw_text_transformed(_text_x+GameController_scoreboard_placement_text_size, _text_y, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_placement_text_size, _text_y, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				draw_text_transformed(_text_x, _text_y+GameController_scoreboard_placement_text_size, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				draw_text_transformed(_text_x, _text_y-GameController_scoreboard_placement_text_size, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_placement_text_size, _text_y+GameController_scoreboard_placement_text_size, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_placement_text_size, _text_y-GameController_scoreboard_placement_text_size, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_placement_text_size, _text_y+GameController_scoreboard_placement_text_size, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_placement_text_size, _text_y-GameController_scoreboard_placement_text_size, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				draw_set_color(GameController_scoreboard_placement_text_color) ;
				draw_text_transformed(_text_x, _text_y, _text, GameController_scoreboard_placement_text_size, GameController_scoreboard_placement_text_size, 0) ;
				
				//student id (for this student)
				_text_x = GameController_scoreboard_backbar_x+floor(GameController_scoreboard_general_offset_x*3/4) ;
				_text_x += GameController_scoreboard_studentid_offset_x ;
				draw_set_color(c_black) ;
				draw_text_transformed(_text_x+GameController_scoreboard_studentid_size, _text_y, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_studentid_size, _text_y, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				draw_text_transformed(_text_x, _text_y+GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				draw_text_transformed(_text_x, _text_y-GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_studentid_size, _text_y+GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_studentid_size, _text_y-GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_studentid_size, _text_y+GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_studentid_size, _text_y-GameController_scoreboard_studentid_size, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				draw_set_color(GameController_scoreboard_studentid_color) ;
				draw_text_transformed(_text_x, _text_y, GameController_scoreboard_studentid[GameController_scoreboard_showcount], GameController_scoreboard_studentid_size, GameController_scoreboard_studentid_size, 0) ;
				
				//how it ended (for this student)
				_text_x += GameController_scoreboard_howitended_offset_x ;
				if(!global.G_home_edition_active)
				{
					draw_sprite_ext(GameController_scoreboard_howitended_sprite, GameController_scoreboard_howitended[GameController_scoreboard_showcount], _text_x, _text_y, GameController_scoreboard_howitended_sprite_size, GameController_scoreboard_howitended_sprite_size, 0, c_white, 1) ;
				}
				
				//runid (for this student)
				_text_x += GameController_scoreboard_runid_offset_x ;
				if(GameController_scoreboard_runid[GameController_scoreboard_showcount] == -1)
				{
					GameController_scoreboard_runid[GameController_scoreboard_showcount] = 0 ;
				}
				draw_set_halign(fa_center) ;
				draw_set_color(c_black) ;
				draw_text_transformed(_text_x+GameController_scoreboard_runid_size, _text_y, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_runid_size, _text_y, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_text_transformed(_text_x, _text_y+GameController_scoreboard_runid_size, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_text_transformed(_text_x, _text_y-GameController_scoreboard_runid_size, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_runid_size, _text_y+GameController_scoreboard_runid_size, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_runid_size, _text_y-GameController_scoreboard_runid_size, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_runid_size, _text_y+GameController_scoreboard_runid_size, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_runid_size, _text_y-GameController_scoreboard_runid_size, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_set_color(GameController_scoreboard_runid_color) ;
				draw_text_transformed(_text_x, _text_y, GameController_scoreboard_runid[GameController_scoreboard_showcount], GameController_scoreboard_runid_size, GameController_scoreboard_runid_size, 0) ;
				draw_set_halign(fa_left) ;
				
				//stage (for this student)
				_text_x += GameController_scoreboard_stage_offset_x ;
				if(!global.G_home_edition_active)
				{
					if(GameController_scoreboard_stage[GameController_scoreboard_showcount] == -1)
					{
						GameController_scoreboard_stage[GameController_scoreboard_showcount] = 0 ;
					}
				}
				draw_set_halign(fa_center) ;
				draw_set_color(c_black) ;
				if(!global.G_home_edition_active)
				{
					draw_text_transformed(_text_x+GameController_scoreboard_stage_size, _text_y, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
					draw_text_transformed(_text_x-GameController_scoreboard_stage_size, _text_y, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
					draw_text_transformed(_text_x, _text_y+GameController_scoreboard_stage_size, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
					draw_text_transformed(_text_x, _text_y-GameController_scoreboard_stage_size, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
					draw_text_transformed(_text_x+GameController_scoreboard_stage_size, _text_y+GameController_scoreboard_stage_size, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
					draw_text_transformed(_text_x+GameController_scoreboard_stage_size, _text_y-GameController_scoreboard_stage_size, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
					draw_text_transformed(_text_x-GameController_scoreboard_stage_size, _text_y+GameController_scoreboard_stage_size, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
					draw_text_transformed(_text_x-GameController_scoreboard_stage_size, _text_y-GameController_scoreboard_stage_size, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
					draw_set_color(GameController_scoreboard_stage_color) ;
					draw_text_transformed(_text_x, _text_y, GameController_scoreboard_stage[GameController_scoreboard_showcount], GameController_scoreboard_stage_size, GameController_scoreboard_stage_size, 0) ;
				}
				draw_set_halign(fa_left) ;
				
				//score (for this student)
				_text_x += GameController_scoreboard_score_offset_x ;
				draw_set_color(c_black) ;
				draw_text_transformed(_text_x+GameController_scoreboard_score_size, _text_y, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_score_size, _text_y, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
				draw_text_transformed(_text_x, _text_y+GameController_scoreboard_score_size, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
				draw_text_transformed(_text_x, _text_y-GameController_scoreboard_score_size, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_score_size, _text_y+GameController_scoreboard_score_size, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
				draw_text_transformed(_text_x+GameController_scoreboard_score_size, _text_y-GameController_scoreboard_score_size, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_score_size, _text_y+GameController_scoreboard_score_size, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
				draw_text_transformed(_text_x-GameController_scoreboard_score_size, _text_y-GameController_scoreboard_score_size, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
				draw_set_color(GameController_scoreboard_score_color) ;
				draw_text_transformed(_text_x, _text_y, GameController_scoreboard_score[GameController_scoreboard_showcount], GameController_scoreboard_score_size, GameController_scoreboard_score_size, 0) ;
			}
		}
		
		//resetting draw sets
		draw_set_color(c_white) ;
		draw_set_alpha(1) ;
		draw_set_halign(fa_center) ;
	}
}
#endregion

#region ||SUBTITLES||
if(global.G_includedfile_subtitles_active)
{
	if(audio_is_playing(GameController_subtitle_voice))
	{
		if(ds_map_exists(GameController_subtitle_map, GameController_subtitle_voice))
		{
			var _subtitle_array = GameController_subtitle_map[? GameController_subtitle_voice],
				_GameController_subtitle_background_xx,
				_GameController_subtitle_background_yy ;
		
			if(_subtitle_array[0][0] > 1)
			{
				if(GameController_subtitle_text_index == 0)
				{
					GameController_subtitle_text_index = 1 ;
				}
				else if(ceil(GameController_subtitle_text_index/2) < _subtitle_array[0][0])
				{
					if(audio_sound_get_track_position(GameController_subtitle_voice_unique_id) > _subtitle_array[GameController_subtitle_text_index+1])
					{
						GameController_subtitle_text_index += 2 ;
					}
				}
			}
			else if(GameController_subtitle_text_index != 1)
			{
				GameController_subtitle_text_index = 1 ;
			}
		
			_GameController_subtitle_background_xx = ceil((string_width_ext(_subtitle_array[GameController_subtitle_text_index][0], GameController_subtitle_text_sep, GameController_subtitle_text_w)+GameController_subtitle_text_sep)/2) ;
			_GameController_subtitle_background_yy = ceil((string_height_ext(_subtitle_array[GameController_subtitle_text_index][0], GameController_subtitle_text_sep, GameController_subtitle_text_w)+GameController_subtitle_text_sep)/2) ; 
		
			//text background
			draw_set_color(c_black) ;
			draw_set_alpha(GameController_subtitle_background_alpha) ;
			draw_rectangle(GameController_subtitle_text_x-_GameController_subtitle_background_xx, GameController_subtitle_text_y-_GameController_subtitle_background_yy, GameController_subtitle_text_x+_GameController_subtitle_background_xx, GameController_subtitle_text_y+_GameController_subtitle_background_yy, false) ;
			draw_set_alpha(1) ;
			//text
			if(_subtitle_array[0][1] != noone)
			{
				draw_set_color(_subtitle_array[0][1]) ;
			}
			else
			{
				draw_set_color(_subtitle_array[GameController_subtitle_text_index][1]) ;
			}
			draw_text_ext(GameController_subtitle_text_x, GameController_subtitle_text_y, _subtitle_array[GameController_subtitle_text_index][0], GameController_subtitle_text_sep, GameController_subtitle_text_w) ;
			draw_set_color(c_white) ;
		}
	}
}
#endregion

#region ||FULL NAME ON TOP RIGHT CORNER||
if(global.G_includedfile_network_active)
{
	if(GameController_gamedata_player_fullname != "")
	{
		draw_set_halign(fa_right) ;
		draw_set_valign(fa_top) ;
		draw_set_color(c_maroon) ;
		draw_set_alpha(0.5) ;
		
		draw_text(CONST_GUI_W-5, 5, "Playing as " + GameController_gamedata_player_fullname) ;
		
		draw_set_halign(fa_center) ;
		draw_set_valign(fa_center) ;
		draw_set_color(c_white) ;
		draw_set_alpha(1) ;
	}
}
#endregion

#region ||DEBUG MODE||
if(global.G_includedfile_debugmode_active)
{
	//LOCAL VARIABLES
	var _text = "",
		_text_array = array_create(1, ""),
		_text_array_index = 0,
		_text_divider = "- - - - - - - - - - - - - - -\n",
		_dummy1,
		_dummy2,
		_dummy3,
		_dummy4,
		_gameplayinfo_do,
		_gameplayinfo_score,
		_gameplayinfo_time,
		_requestobject_do,
		_requestobject_current = noone,
		_menurequest_do,
		_menurequest_current = noone,
		_c ;
	
	//GATHERING INFORMATION (FOR OFFLINE STUFF)
	//General Gameplay Info
	if((GameController_gamedata_stage >= 0) and (!instance_exists(CONST_OBJ_MENUCONTROLLER)))
	{
		_gameplayinfo_do = true ;

		switch(GameController_gamedata_stage)
		{
			case 0:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_PROJECTSELECTION))
				{
					with(CONST_OBJ_STAGECONTROLLER_PROJECTSELECTION)
					{
						if(StageControllerPS_storyflow_id <= 5)
						{
							_dummy1 = StageControllerPS_gameplay_globalscore ;
							_dummy2 = StageControllerPS_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 1:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_REQUIREMENTANALYSIS))
				{
					with(CONST_OBJ_STAGECONTROLLER_REQUIREMENTANALYSIS)
					{
						if(StageControllerRA_storyflow_id <= 30)
						{
							_dummy1 = StageControllerRA_gameplay_globalscore ;
							_dummy2 = StageControllerRA_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 2:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_REQUIREMENTCATEGORIZATION))
				{
					with(CONST_OBJ_STAGECONTROLLER_REQUIREMENTCATEGORIZATION)
					{
						if(StageRC_tut_stage <= 6)
						{
							_dummy1 = StageRC_datagathering_globalscore ;
							_dummy2 = StageRC_datagathering_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 3:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_DESIGN))
				{
					with(CONST_OBJ_STAGECONTROLLER_DESIGN)
					{
						if(StageDs_tut_stage <= 5)
						{
							_dummy1 = StageDs_datagathering_globalscore ;
							_dummy2 = StageDs_datagathering_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 4:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_DEVELOPMENT))
				{
					with(CONST_OBJ_STAGECONTROLLER_DEVELOPMENT)
					{
						if(StageControllerD_storyflow_id <= 5)
						{
							_dummy1 = StageControllerD_gameplay_globalscore ;
							_dummy2 = StageControllerD_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 5:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_TESTING))
				{
					with(CONST_OBJ_STAGECONTROLLER_TESTING)
					{
						if(StageControllerT_storyflow_id <= 11)
						{
							_dummy1 = StageControllerT_gameplay_globalscore ;
							_dummy2 = StageControllerT_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 6:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_DEPLOYMENT))
				{
					with(CONST_OBJ_STAGECONTROLLER_DEPLOYMENT)
					{
						if(StageControllerDp_storyflow_id <= 4)
						{
							_dummy1 = StageControllerDp_gameplay_globalscore ;
							_dummy2 = StageControllerDp_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 7:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_MAINTENANCE))
				{
					with(CONST_OBJ_STAGECONTROLLER_MAINTENANCE)
					{
						if(StageMt_tut_stage <= 6)
						{
							_dummy1 = StageMt_datagathering_globalscore ;
							_dummy2 = StageMt_datagathering_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			default:
				_dummy1 = 0 ;
				_dummy2 = 0 ;
		}
		
		_gameplayinfo_score = string(GameController_collecteddata_stagePS_globalscore+GameController_collecteddata_stageRA_globalscore+GameController_collecteddata_stageRC_globalscore+GameController_collecteddata_stageDs_globalscore+GameController_collecteddata_stageD_globalscore+GameController_collecteddata_stageT_globalscore+GameController_collecteddata_stageDp_globalscore+GameController_collecteddata_stageMt_globalscore) + " + " + string(_dummy1) ;
		
		_dummy2 /= 60 ;
		_dummy2 += ((GameController_collecteddata_stagePS_globaltime != -1) ? GameController_collecteddata_stagePS_globaltime : 0)+((GameController_collecteddata_stageRA_globaltime != -1) ? GameController_collecteddata_stageRA_globaltime : 0)+((GameController_collecteddata_stageRC_globaltime != -1) ? GameController_collecteddata_stageRC_globaltime : 0)+((GameController_collecteddata_stageDs_globaltime != -1) ? GameController_collecteddata_stageDs_globaltime : 0)+((GameController_collecteddata_stageD_globaltime != -1) ? GameController_collecteddata_stageD_globaltime : 0)+((GameController_collecteddata_stageT_globaltime != -1) ? GameController_collecteddata_stageT_globaltime : 0)+((GameController_collecteddata_stageDp_globaltime != -1) ? GameController_collecteddata_stageDp_globaltime : 0)+((GameController_collecteddata_stageMt_globaltime != -1) ? GameController_collecteddata_stageMt_globaltime : 0) ;
		_dummy3 = floor(_dummy2)%60 ;
		_dummy3 = (_dummy3 < 10) ? "0"+string(_dummy3) : string(_dummy3) ;
		_dummy4 = floor(floor(_dummy2)/60) ;
		_dummy4 = (_dummy4 < 10) ? "0"+string(_dummy4) : string(_dummy4) ;
		_dummy2 = floor((_dummy2-floor(_dummy2))*100) ;
		_dummy2 = (_dummy2 < 10) ? "0"+string(_dummy2) : string(_dummy2) ;
		_gameplayinfo_time = _dummy4 + ":" + _dummy3 + ":" + _dummy2 ;
	}
	else
	{
		_gameplayinfo_do = false ;
	}
	
	//GATHERING INFORMATION (FOR NETWORK STUFF)
	if((global.G_includedfile_network_active) and (global.G_includedfile_debugmode_shownetwork))
	{
		//Request Objects
		if((!GameController_audiogroup_loading) and (!GameController_logo_draw))
		{
			_requestobject_do = true ;
			
			if(instance_exists(CONST_OBJ_REQUEST))
			{
				with(CONST_OBJ_REQUEST)
				{
					if(global.G_request_object_id_counter == RequestObject_id)
					{
						switch(RequestObject_sentrequest_type)
						{
							case ENUM_REQUEST.log:
								_requestobject_current = "add log" ;
								break ;
					
							case ENUM_REQUEST.addscore:
								_requestobject_current = "add score" ;
								break ;
					
							case ENUM_REQUEST.getscoreboard:
								_requestobject_current = "get scoreboard" ;
								break ;
							
							case ENUM_REQUEST.getloggedinstatus:
								_requestobject_current = "get logged in" ;
								break ;
					
							default:
								_requestobject_current = "undefined request" ;
						}
						
						break ;
					}
				}
				
				if(_requestobject_current != noone)
				{
					GameController_debug_lastdata_requestobject_current = _requestobject_current ;
				}
				else
				{
					_requestobject_current = "none" ;
				}
			}
			else
			{
				_requestobject_current = "none" ;
			}
		}
		else
		{
			_requestobject_do = false ;
		}
		//Menu Requests
		if(instance_exists(CONST_OBJ_MENUCONTROLLER))
		{
			_menurequest_do = true ;
			
			with(CONST_OBJ_MENUCONTROLLER)
			{
				if(MenuController_playerdatagathering_request_check != noone)
				{
					_menurequest_current = "already logged in check" ;
				}
				else if(MenuController_playerdatagathering_request_passwordcheck != noone)
				{
					_menurequest_current = "authentication" ;
				}
				else if(MenuController_playerdatagathering_request_register != noone)
				{
					_menurequest_current = "registering" ;
				}
				else if(MenuController_playerdatagathering_request_login != noone)
				{
					_menurequest_current = "logging in" ;
				}
				else
				{
					_menurequest_current = "none" ;
				}
			}
			
			if((_menurequest_current != noone) and (_menurequest_current != "none"))
			{
				GameController_debug_lastdata_menurequest_current = _menurequest_current ;
			}
			else if(_menurequest_current == noone)
			{
				_menurequest_current = "none" ;
			}
		}
		else
		{
			_menurequest_do = false ;
		}
	}
	
	//FILLING THE TEXT (FOR OFFLINE STUFF)
	//General Gameplay Info
	if(_gameplayinfo_do)
	{
		_text_array[_text_array_index] = ((_text_array_index > 0) ? _text_array[_text_array_index-1]+_text_divider : "") +
		"[GAMEPLAY INFORMATION]" ;
		_text_array_index++ ;
		_text_array[_text_array_index] = _text_array[_text_array_index-1] +
		"\nStage = " +
		string(GameController_gamedata_stage) +
		"\nScore = " +
		_gameplayinfo_score +
		"\nTime = " +
		_gameplayinfo_time +
		"\n" ;
		_text_array_index++ ;
	}
	
	//FILLING THE TEXT (FOR NETWORK STUFF)
	if((global.G_includedfile_network_active) and (global.G_includedfile_debugmode_shownetwork))
	{
		//Request Objects
		if(_requestobject_do)
		{
			_text_array[_text_array_index] = ((_text_array_index > 0) ? _text_array[_text_array_index-1]+_text_divider : "") +
			"[REQUEST OBJECTS]" ;
			_text_array_index++ ;
			_text_array[_text_array_index] = _text_array[_text_array_index-1] +
			"\nCount = " +
			string(instance_number(CONST_OBJ_REQUEST)) +
			"\nCurrent = " +
			_requestobject_current +
			"\nLast = " +
			string(GameController_debug_lastdata_requestobject_current) +
			"\n" ;
			_text_array_index++ ;
		}
		//Menu Requests
		if(_menurequest_do)
		{
			_text_array[_text_array_index] = ((_text_array_index > 0) ? _text_array[_text_array_index-1]+_text_divider : "") +
			"[MENU REQUESTS]" ;
			_text_array_index++ ;
			_text_array[_text_array_index] = _text_array[_text_array_index-1] +
			"\nCurrent = " +
			_menurequest_current +
			"\nLast = " +
			GameController_debug_lastdata_menurequest_current +
			"\n" ;
			_text_array_index++ ;
		}
	}
	
	//CONSTRUCTING THE FULL TEXT
	_text += _text_array[array_length(_text_array)-1] ;
	
	//IF NOTHING IS INSIDE THE TEXT
	if(_text == "")
	{
		_text = "DEBUG MODE IS ACTIVE" ;
		_text_array[0] = _text ;
	}
	
	//DRAWING THE TEXT
	//alignment sets
	draw_set_halign(fa_left) ;
	draw_set_valign(fa_top) ;
		
	//text background
	draw_set_color(c_black) ;
	draw_set_alpha(0.8) ;
	draw_rectangle(0, 0, (string_width(_text)+15)*global.G_includedfile_debugmode_size, (string_height(_text)+15)*global.G_includedfile_debugmode_size, false) ;
	draw_set_alpha(1) ;
		
	//text itself
	for(_c = array_length(_text_array)-1; _c >= 0; _c--)
	{
		draw_set_color((_c%2 == 0) ? global.G_includedfile_debugmode_color_title : global.G_includedfile_debugmode_color_text) ;
		draw_text_transformed(5, 5, _text_array[_c], global.G_includedfile_debugmode_size, global.G_includedfile_debugmode_size, 0) ;
	}
		
	//draw set resets
	draw_set_halign(fa_center) ;
	draw_set_valign(fa_center) ;
	draw_set_color(c_white) ;
}
else if(GameController_debug_speedrunner_active)
{
	//LOCAL VARIABLES
	var _text = "",
		_text_array = array_create(1, ""),
		_text_array_index = 0,
		_text_divider = "- - - - - - - - - - - - - - -\n",
		_dummy1,
		_dummy2,
		_dummy3,
		_dummy4,
		_gameplayinfo_do,
		_gameplayinfo_score,
		_gameplayinfo_time,
		_c ;
	
	//GATHERING INFORMATION (FOR OFFLINE STUFF)
	//General Gameplay Info
	if((GameController_gamedata_stage >= 0) and (!instance_exists(CONST_OBJ_MENUCONTROLLER)))
	{
		_gameplayinfo_do = true ;

		switch(GameController_gamedata_stage)
		{
			case 0:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_PROJECTSELECTION))
				{
					with(CONST_OBJ_STAGECONTROLLER_PROJECTSELECTION)
					{
						if(StageControllerPS_storyflow_id <= 5)
						{
							_dummy1 = StageControllerPS_gameplay_globalscore ;
							_dummy2 = StageControllerPS_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 1:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_REQUIREMENTANALYSIS))
				{
					with(CONST_OBJ_STAGECONTROLLER_REQUIREMENTANALYSIS)
					{
						if(StageControllerRA_storyflow_id <= 30)
						{
							_dummy1 = StageControllerRA_gameplay_globalscore ;
							_dummy2 = StageControllerRA_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 2:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_REQUIREMENTCATEGORIZATION))
				{
					with(CONST_OBJ_STAGECONTROLLER_REQUIREMENTCATEGORIZATION)
					{
						if(StageRC_tut_stage <= 6)
						{
							_dummy1 = StageRC_datagathering_globalscore ;
							_dummy2 = StageRC_datagathering_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 3:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_DESIGN))
				{
					with(CONST_OBJ_STAGECONTROLLER_DESIGN)
					{
						if(StageDs_tut_stage <= 5)
						{
							_dummy1 = StageDs_datagathering_globalscore ;
							_dummy2 = StageDs_datagathering_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 4:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_DEVELOPMENT))
				{
					with(CONST_OBJ_STAGECONTROLLER_DEVELOPMENT)
					{
						if(StageControllerD_storyflow_id <= 5)
						{
							_dummy1 = StageControllerD_gameplay_globalscore ;
							_dummy2 = StageControllerD_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 5:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_TESTING))
				{
					with(CONST_OBJ_STAGECONTROLLER_TESTING)
					{
						if(StageControllerT_storyflow_id <= 11)
						{
							_dummy1 = StageControllerT_gameplay_globalscore ;
							_dummy2 = StageControllerT_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 6:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_DEPLOYMENT))
				{
					with(CONST_OBJ_STAGECONTROLLER_DEPLOYMENT)
					{
						if(StageControllerDp_storyflow_id <= 4)
						{
							_dummy1 = StageControllerDp_gameplay_globalscore ;
							_dummy2 = StageControllerDp_gameplay_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			case 7:
				if(instance_exists(CONST_OBJ_STAGECONTROLLER_MAINTENANCE))
				{
					with(CONST_OBJ_STAGECONTROLLER_MAINTENANCE)
					{
						if(StageMt_tut_stage <= 6)
						{
							_dummy1 = StageMt_datagathering_globalscore ;
							_dummy2 = StageMt_datagathering_globaltime ;
						}
						else
						{
							_dummy1 = 0 ;
							_dummy2 = 0 ;
						}
					}
				}
				else
				{
					_dummy1 = 0 ;
					_dummy2 = 0 ;
				}
				break ;
			
			default:
				_dummy1 = 0 ;
				_dummy2 = 0 ;
		}
		
		_gameplayinfo_score = string(GameController_collecteddata_stagePS_globalscore+GameController_collecteddata_stageRA_globalscore+GameController_collecteddata_stageRC_globalscore+GameController_collecteddata_stageDs_globalscore+GameController_collecteddata_stageD_globalscore+GameController_collecteddata_stageT_globalscore+GameController_collecteddata_stageDp_globalscore+GameController_collecteddata_stageMt_globalscore) + " + " + string(_dummy1) ;
		
		_dummy2 /= 60 ;
		_dummy2 += ((GameController_collecteddata_stagePS_globaltime != -1) ? GameController_collecteddata_stagePS_globaltime : 0)+((GameController_collecteddata_stageRA_globaltime != -1) ? GameController_collecteddata_stageRA_globaltime : 0)+((GameController_collecteddata_stageRC_globaltime != -1) ? GameController_collecteddata_stageRC_globaltime : 0)+((GameController_collecteddata_stageDs_globaltime != -1) ? GameController_collecteddata_stageDs_globaltime : 0)+((GameController_collecteddata_stageD_globaltime != -1) ? GameController_collecteddata_stageD_globaltime : 0)+((GameController_collecteddata_stageT_globaltime != -1) ? GameController_collecteddata_stageT_globaltime : 0)+((GameController_collecteddata_stageDp_globaltime != -1) ? GameController_collecteddata_stageDp_globaltime : 0)+((GameController_collecteddata_stageMt_globaltime != -1) ? GameController_collecteddata_stageMt_globaltime : 0) ;
		_dummy3 = floor(_dummy2)%60 ;
		_dummy3 = (_dummy3 < 10) ? "0"+string(_dummy3) : string(_dummy3) ;
		_dummy4 = floor(floor(_dummy2)/60) ;
		_dummy4 = (_dummy4 < 10) ? "0"+string(_dummy4) : string(_dummy4) ;
		_dummy2 = floor((_dummy2-floor(_dummy2))*100) ;
		_dummy2 = (_dummy2 < 10) ? "0"+string(_dummy2) : string(_dummy2) ;
		_gameplayinfo_time = _dummy4 + ":" + _dummy3 + ":" + _dummy2 ;
	}
	else
	{
		_gameplayinfo_do = false ;
	}
	
	//FILLING THE TEXT (FOR OFFLINE STUFF)
	//General Gameplay Info
	if(_gameplayinfo_do)
	{
		_text_array[_text_array_index] = ((_text_array_index > 0) ? _text_array[_text_array_index-1]+_text_divider : "") +
		"[SCORE AND TIME]" ;
		_text_array_index++ ;
		_text_array[_text_array_index] = _text_array[_text_array_index-1] +
		"\nScore = " +
		_gameplayinfo_score +
		"\nTime = " +
		_gameplayinfo_time +
		"\n" ;
		_text_array_index++ ;
	}
	
	//CONSTRUCTING THE FULL TEXT
	_text += _text_array[array_length(_text_array)-1] ;
	
	//IF NOTHING IS INSIDE THE TEXT
	if(_text == "")
	{
		_text = "SPEEDRUNNER MODE IS ACTIVE" ;
		_text_array[0] = _text ;
	}
	
	//DRAWING THE TEXT
	//alignment sets
	draw_set_halign(fa_left) ;
	draw_set_valign(fa_top) ;
		
	//text background
	draw_set_color(c_black) ;
	draw_set_alpha(0.8) ;
	draw_rectangle(0, 0, (string_width(_text)+15)*global.G_includedfile_debugmode_size, (string_height(_text)+15)*global.G_includedfile_debugmode_size, false) ;
	draw_set_alpha(1) ;
		
	//text itself
	for(_c = array_length(_text_array)-1; _c >= 0; _c--)
	{
		draw_set_color((_c%2 == 0) ? global.G_includedfile_debugmode_color_title : global.G_includedfile_debugmode_color_text) ;
		draw_text_transformed(5, 5, _text_array[_c], global.G_includedfile_debugmode_size, global.G_includedfile_debugmode_size, 0) ;
	}
		
	//draw set resets
	draw_set_halign(fa_center) ;
	draw_set_valign(fa_center) ;
	draw_set_color(c_white) ;
}
#endregion

#region ||QUITTING GAME||
if(keyboard_check(vk_escape))
{
	if(GameController_gamequit_time > 0)
	{
		GameController_gamequit_time-- ;
		
		draw_set_color(c_black) ;
		draw_set_alpha(1-(GameController_gamequit_time/GameController_gamequit_time_max)) ;
		draw_rectangle(-5, -5, CONST_GUI_W+5, CONST_GUI_H+5, false) ;
		draw_set_color(c_white) ;
		draw_set_alpha(1) ;
	}
	else
	{
		game_end() ;
	}
}
else if(GameController_gamequit_time != GameController_gamequit_time_max)
{
	GameController_gamequit_time = GameController_gamequit_time_max ;
}
#endregion
