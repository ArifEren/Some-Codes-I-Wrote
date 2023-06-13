#region ||STORY FLOW DRAWINGS||
//stage title
if(StageControllerRA_storyflowdrawing_d0_draw)
{
	if(!StageControllerRA_storyflowdrawing_d0_draw_end)
	{
		if(abs(StageControllerRA_storyflowdrawing_d0_sprite_x-StageControllerRA_storyflowdrawing_d0_sprite_x_end) > StageControllerRA_storyflowdrawing_d0_sprite_x_tolerance)
		{
			StageControllerRA_storyflowdrawing_d0_sprite_x += (StageControllerRA_storyflowdrawing_d0_sprite_x_end-StageControllerRA_storyflowdrawing_d0_sprite_x)/StageControllerRA_storyflowdrawing_d0_sprite_x_speed_divider ;
		}
		else if(StageControllerRA_storyflowdrawing_d0_sprite_x != StageControllerRA_storyflowdrawing_d0_sprite_x_end)
		{
			StageControllerRA_storyflowdrawing_d0_sprite_x = StageControllerRA_storyflowdrawing_d0_sprite_x_end ;
		}
	}
	else
	{
		if(abs(StageControllerRA_storyflowdrawing_d0_sprite_x-StageControllerRA_storyflowdrawing_d0_sprite_x_start) > StageControllerRA_storyflowdrawing_d0_sprite_x_tolerance)
		{
			StageControllerRA_storyflowdrawing_d0_sprite_x += (StageControllerRA_storyflowdrawing_d0_sprite_x_start-StageControllerRA_storyflowdrawing_d0_sprite_x)/StageControllerRA_storyflowdrawing_d0_sprite_x_speed_divider ;
		}
		else if(StageControllerRA_storyflowdrawing_d0_sprite_x != StageControllerRA_storyflowdrawing_d0_sprite_x_start)
		{
			StageControllerRA_storyflowdrawing_d0_sprite_x = StageControllerRA_storyflowdrawing_d0_sprite_x_start ;
		}
		else
		{
			StageControllerRA_storyflowdrawing_d0_draw = false ;
			StageControllerRA_storyflowdrawing_d0_draw_end = false ;
		}
	}
	
	draw_sprite_ext(StageControllerRA_storyflowdrawing_d0_sprite, 0, StageControllerRA_storyflowdrawing_d0_sprite_x, StageControllerRA_storyflowdrawing_d0_sprite_y, StageControllerRA_storyflowdrawing_d0_sprite_size, StageControllerRA_storyflowdrawing_d0_sprite_size, 0, c_white, 1) ;
}
//what is a req tutorial
if(StageControllerRA_storyflowdrawing_d1_draw)
{
	if(!StageControllerRA_storyflowdrawing_d1_draw_end)
	{
		if(abs(StageControllerRA_storyflowdrawing_d1_sprite_size_max-StageControllerRA_storyflowdrawing_d1_sprite_size) > StageControllerRA_storyflowdrawing_d1_sprite_size_tolerance)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_size += (StageControllerRA_storyflowdrawing_d1_sprite_size_max-StageControllerRA_storyflowdrawing_d1_sprite_size)/StageControllerRA_storyflowdrawing_d1_sprite_size_speed_divider ;
		}
		else if(StageControllerRA_storyflowdrawing_d1_sprite_size != StageControllerRA_storyflowdrawing_d1_sprite_size_max)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_size = StageControllerRA_storyflowdrawing_d1_sprite_size_max ;
		}
	}
	else
	{
		if(abs(StageControllerRA_storyflowdrawing_d1_sprite_size) > StageControllerRA_storyflowdrawing_d1_sprite_size_tolerance)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_size += (-StageControllerRA_storyflowdrawing_d1_sprite_size)/StageControllerRA_storyflowdrawing_d1_sprite_size_speed_divider ;
		}
		else if(StageControllerRA_storyflowdrawing_d1_sprite_size != 0)
		{
			StageControllerRA_storyflowdrawing_d1_sprite_size = 0 ;
		}
		else
		{
			StageControllerRA_storyflowdrawing_d1_draw_end = false ;
			StageControllerRA_storyflowdrawing_d1_draw = false ;
		}
	}
	
	draw_sprite_ext(StageControllerRA_storyflowdrawing_d1_sprite, StageControllerRA_storyflowdrawing_d1_sprite_frame, StageControllerRA_storyflowdrawing_d1_sprite_x, StageControllerRA_storyflowdrawing_d1_sprite_y, StageControllerRA_storyflowdrawing_d1_sprite_size, StageControllerRA_storyflowdrawing_d1_sprite_size, 0, c_white, 1) ;
}
#endregion

#region ||GAMEPLAY DRAWINGS||
if(StageControllerRA_gameplay_started)
{
	//wall clock timer
	if(StageControllerRA_gameplay_timer_draw)
	{
		draw_sprite_ext(StageControllerRA_gameplay_timer_sprite, 0, StageControllerRA_gameplay_timer_sprite_x, StageControllerRA_gameplay_timer_sprite_y, 1, 1, 360*StageControllerRA_gameplay_timer_countdown/StageControllerRA_gameplay_timer_countdown_max, c_white, 1) ;
	}
	
	//mistake markers
	if(StageControllerRA_gameplay_collected_indicator_mistake_draw)
	{
		for(var _c = 0; _c < StageControllerRA_gameplay_collected_counter_mistake; _c++)
		{
			draw_sprite_ext(StageControllerRA_gameplay_collected_indicator_mistake, 0, StageControllerRA_gameplay_collected_indicator_mistake_x+((_c%4)*StageControllerRA_gameplay_collected_indicator_mistake_xy), StageControllerRA_gameplay_collected_indicator_mistake_y+(floor(_c/4)*StageControllerRA_gameplay_collected_indicator_mistake_xy), 1, 1, _c*((_c%2) ? -15 : 15), c_white, 1) ;
		}
	}
	
	//required requirement numbers
	if(StageControllerRA_gameplay_collected_indicator_mininumbers_draw)
	{
		var _frame_limit = sprite_get_number(StageControllerRA_gameplay_collected_indicator_numbers)-2 ;
		
		//fun
		draw_sprite(StageControllerRA_gameplay_collected_indicator_mininumbers, ((StageControllerRA_gameplay_needed_count_fun < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_fun != -1) ? StageControllerRA_gameplay_needed_count_fun : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[0]+StageControllerRA_gameplay_collected_indicator_mininumbers_xx, StageControllerRA_gameplay_collected_indicator_numbers_y[0]+StageControllerRA_gameplay_collected_indicator_mininumbers_yy) ;
		//non-fun
		draw_sprite(StageControllerRA_gameplay_collected_indicator_mininumbers, ((StageControllerRA_gameplay_needed_count_nonfun < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_nonfun != -1) ? StageControllerRA_gameplay_needed_count_nonfun : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[1]+StageControllerRA_gameplay_collected_indicator_mininumbers_xx, StageControllerRA_gameplay_collected_indicator_numbers_y[1]+StageControllerRA_gameplay_collected_indicator_mininumbers_yy) ;
		//must have
		draw_sprite(StageControllerRA_gameplay_collected_indicator_mininumbers, ((StageControllerRA_gameplay_needed_count_musthave < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_musthave != -1) ? StageControllerRA_gameplay_needed_count_musthave : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[2]+StageControllerRA_gameplay_collected_indicator_mininumbers_xx, StageControllerRA_gameplay_collected_indicator_numbers_y[2]+StageControllerRA_gameplay_collected_indicator_mininumbers_yy) ;
		//should have
		draw_sprite(StageControllerRA_gameplay_collected_indicator_mininumbers, ((StageControllerRA_gameplay_needed_count_shouldhave < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_shouldhave != -1) ? StageControllerRA_gameplay_needed_count_shouldhave : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[3]+StageControllerRA_gameplay_collected_indicator_mininumbers_xx, StageControllerRA_gameplay_collected_indicator_numbers_y[3]+StageControllerRA_gameplay_collected_indicator_mininumbers_yy) ;
		//could have
		draw_sprite(StageControllerRA_gameplay_collected_indicator_mininumbers, ((StageControllerRA_gameplay_needed_count_couldhave < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_couldhave != -1) ? StageControllerRA_gameplay_needed_count_couldhave : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[4]+StageControllerRA_gameplay_collected_indicator_mininumbers_xx, StageControllerRA_gameplay_collected_indicator_numbers_y[4]+StageControllerRA_gameplay_collected_indicator_mininumbers_yy) ;
	}
	
	//collected requirement numbers
	if(StageControllerRA_gameplay_collected_indicator_numbers_draw)
	{
		var _frame_limit = sprite_get_number(StageControllerRA_gameplay_collected_indicator_numbers)-2 ;
		
		//fun
		draw_sprite(StageControllerRA_gameplay_collected_indicator_numbers, ((StageControllerRA_gameplay_collected_counter_fun < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_fun != -1) ? StageControllerRA_gameplay_collected_counter_fun : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[0], StageControllerRA_gameplay_collected_indicator_numbers_y[0]) ;
		//non-fun
		draw_sprite(StageControllerRA_gameplay_collected_indicator_numbers, ((StageControllerRA_gameplay_collected_counter_nonfun < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_nonfun != -1) ? StageControllerRA_gameplay_collected_counter_nonfun : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[1], StageControllerRA_gameplay_collected_indicator_numbers_y[1]) ;
		//must have
		draw_sprite(StageControllerRA_gameplay_collected_indicator_numbers, ((StageControllerRA_gameplay_collected_counter_musthave < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_musthave != -1) ? StageControllerRA_gameplay_collected_counter_musthave : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[2], StageControllerRA_gameplay_collected_indicator_numbers_y[2]) ;
		//should have
		draw_sprite(StageControllerRA_gameplay_collected_indicator_numbers, ((StageControllerRA_gameplay_collected_counter_shouldhave < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_shouldhave != -1) ? StageControllerRA_gameplay_collected_counter_shouldhave : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[3], StageControllerRA_gameplay_collected_indicator_numbers_y[3]) ;
		//could have
		draw_sprite(StageControllerRA_gameplay_collected_indicator_numbers, ((StageControllerRA_gameplay_collected_counter_couldhave < _frame_limit) ? ((StageControllerRA_gameplay_needed_count_couldhave != -1) ? StageControllerRA_gameplay_collected_counter_couldhave : _frame_limit+1) : _frame_limit), StageControllerRA_gameplay_collected_indicator_numbers_x[4], StageControllerRA_gameplay_collected_indicator_numbers_y[4]) ;
	}
	
	//trapdoor
	if(StageControllerRA_gameplay_trapdoor_draw)
	{
		if(StageControllerRA_gameplay_trapdoor_cooldown > 0)
		{
			StageControllerRA_gameplay_trapdoor_cooldown-- ;
		}
		else if(StageControllerRA_gameplay_trapdoor_sprite_frame != 0)
		{
			StageControllerRA_gameplay_trapdoor_sprite_frame = 0 ;
		}
		
		draw_sprite(StageControllerRA_gameplay_trapdoor_sprite, StageControllerRA_gameplay_trapdoor_sprite_frame, StageControllerRA_gameplay_trapdoor_x, StageControllerRA_gameplay_trapdoor_y) ;
	}
	
	//characters
	if(StageControllerRA_gameplay_character_draw)
	{
		//character who is leaving
		if(StageControllerRA_gameplay_character_leaving != noone)
		{
			draw_sprite_ext(StageControllerRA_gameplay_character_leaving.__sprite, StageControllerRA_gameplay_character_leaving.__frame, StageControllerRA_gameplay_character_leaving.__x, StageControllerRA_gameplay_character_leaving.__y-abs(3*StageControllerRA_gameplay_character_leaving.__angle), -1, 1, StageControllerRA_gameplay_character_leaving.__angle, c_white, 1) ;
		}
		
		//characters on line
		if(!ds_list_empty(StageControllerRA_gameplay_characters))
		{
			var _c = 0,
				_list_size = ds_list_size(StageControllerRA_gameplay_characters) ;		
			for(; _c < _list_size; _c++)
			{
				draw_sprite_ext(StageControllerRA_gameplay_characters[| _c].__sprite, StageControllerRA_gameplay_characters[| _c].__frame, StageControllerRA_gameplay_characters[| _c].__x, StageControllerRA_gameplay_characters[| _c].__y-abs(3*StageControllerRA_gameplay_characters[| _c].__angle), 1, 1, StageControllerRA_gameplay_characters[| _c].__angle, c_white, 1) ;
			}
		}
	}
	
	//requirement text
	if((StageControllerRA_gameplay_reqtext_draw) and (StageControllerRA_gameplay_reqtext_current != noone))
	{
		//drawing the textbox
		draw_set_color(#0059F7) ;
		draw_set_alpha(StageControllerRA_gameplay_reqtext_draw_textbox_alpha/2) ;
		draw_triangle(StageControllerRA_gameplay_reqtext_draw_textbox_x0, StageControllerRA_gameplay_reqtext_draw_textbox_y0, StageControllerRA_gameplay_reqtext_draw_textbox_x1, StageControllerRA_gameplay_reqtext_draw_textbox_y1, StageControllerRA_gameplay_reqtext_draw_textbox_x1, StageControllerRA_gameplay_reqtext_draw_textbox_y2, false) ;
		draw_set_alpha(StageControllerRA_gameplay_reqtext_draw_textbox_alpha) ;
		draw_roundrect(StageControllerRA_gameplay_reqtext_draw_textbox_x1-StageControllerRA_gameplay_reqtext_draw_textbox_border_xy, StageControllerRA_gameplay_reqtext_draw_textbox_y1-StageControllerRA_gameplay_reqtext_draw_textbox_border_xy, StageControllerRA_gameplay_reqtext_draw_textbox_x2+StageControllerRA_gameplay_reqtext_draw_textbox_border_xy, StageControllerRA_gameplay_reqtext_draw_textbox_y2+StageControllerRA_gameplay_reqtext_draw_textbox_border_xy, false) ;
		draw_sprite_ext(StageControllerRA_gameplay_reqtext_draw_textbox_border_sprite, 0, StageControllerRA_gameplay_reqtext_draw_textbox_x1-StageControllerRA_gameplay_reqtext_draw_textbox_border_xy+1, StageControllerRA_gameplay_reqtext_draw_textbox_y1, 1, 1, 0, #0059F7, StageControllerRA_gameplay_reqtext_draw_textbox_alpha) ;
		draw_set_color(c_white) ;
		draw_set_valign(fa_bottom) ;
		draw_set_halign(fa_left) ;
		draw_text(StageControllerRA_gameplay_reqtext_draw_textbox_x1+StageControllerRA_gameplay_reqtext_draw_textbox_border_xy, StageControllerRA_gameplay_reqtext_draw_textbox_y1-(StageControllerRA_gameplay_reqtext_draw_textbox_border_xy/2), "They say...") ;
		draw_roundrect(StageControllerRA_gameplay_reqtext_draw_textbox_x1, StageControllerRA_gameplay_reqtext_draw_textbox_y1, StageControllerRA_gameplay_reqtext_draw_textbox_x2, StageControllerRA_gameplay_reqtext_draw_textbox_y2, false) ;
		//drawing the text
		draw_set_alpha(StageControllerRA_gameplay_reqtext_draw_text_alpha) ;
		draw_set_color(c_black) ;
		draw_set_valign(fa_top) ;
		draw_text_ext(StageControllerRA_gameplay_reqtext_draw_text_x, StageControllerRA_gameplay_reqtext_draw_text_y, StageControllerRA_gameplay_reqtext_current.__text, StageControllerRA_gameplay_reqtext_draw_text_sep, StageControllerRA_gameplay_reqtext_draw_text_w) ;
		//drawing the owner name
		draw_set_color(c_ltgray) ;
		draw_set_valign(fa_bottom) ;
		draw_text(StageControllerRA_gameplay_reqtext_draw_owner_x, StageControllerRA_gameplay_reqtext_draw_owner_y, StageControllerRA_gameplay_reqtext_current.__owner) ;
		//resetting draw sets
		draw_set_halign(fa_center) ;
		draw_set_valign(fa_center) ;
		draw_set_color(c_white) ;
		//drawing the buttons
		draw_sprite(StageControllerRA_gameplay_reqtext_draw_buttons_sprite, 1, StageControllerRA_gameplay_reqtext_draw_buttons_deny_x, StageControllerRA_gameplay_reqtext_draw_buttons_deny_y) ;
		draw_sprite(StageControllerRA_gameplay_reqtext_draw_buttons_sprite, 0, StageControllerRA_gameplay_reqtext_draw_buttons_accept_x, StageControllerRA_gameplay_reqtext_draw_buttons_accept_y) ;
		//resetting alpha
		draw_set_alpha(1) ;
		
		//drawing starting & continues
		if(!StageControllerRA_gameplay_reqtext_draw_end)
		{
			//about textbox
			if(StageControllerRA_gameplay_reqtext_draw_textbox_alpha < 1)
			{
				StageControllerRA_gameplay_reqtext_draw_textbox_alpha += StageControllerRA_gameplay_reqtext_draw_general_alpha_speed ;
			}
			//about text
			else if(StageControllerRA_gameplay_reqtext_draw_text_alpha < 1)
			{
				StageControllerRA_gameplay_reqtext_draw_text_alpha += StageControllerRA_gameplay_reqtext_draw_general_alpha_speed ;
			}
		}
		//drawing stopping
		else
		{
			//about text
			if(StageControllerRA_gameplay_reqtext_draw_text_alpha > 0)
			{
				StageControllerRA_gameplay_reqtext_draw_text_alpha -= StageControllerRA_gameplay_reqtext_draw_general_alpha_speed ;
			}
			//about textbox
			else if(StageControllerRA_gameplay_reqtext_draw_textbox_alpha > 0)
			{
				StageControllerRA_gameplay_reqtext_draw_textbox_alpha -= StageControllerRA_gameplay_reqtext_draw_general_alpha_speed ;
			}
			//finish it all
			else if(StageControllerRA_gameplay_character_leaving == noone)
			{
				StageControllerRA_gameplay_reqtext_current = noone ;
				StageControllerRA_gameplay_reqtext_draw_end = false ;
			}
		}
	}
	
	//finishing game manually indicator
	if(StageControllerRA_gameplay_end_available)
	{
		var _indicator_text = "press SPACE to finish the day (optional)",
			_indicator_x = CONST_GUI_W-16,
			_indicator_y = CONST_GUI_H-16 ;
		
		draw_set_valign(fa_bottom) ;
		draw_set_halign(fa_right) ;
		draw_set_color(c_black) ;
		draw_text(_indicator_x+1, _indicator_y, _indicator_text) ;
		draw_text(_indicator_x-1, _indicator_y, _indicator_text) ;
		draw_text(_indicator_x, _indicator_y+1, _indicator_text) ;
		draw_text(_indicator_x, _indicator_y-1, _indicator_text) ;
		draw_text(_indicator_x+1, _indicator_y+1, _indicator_text) ;
		draw_text(_indicator_x+1, _indicator_y-1, _indicator_text) ;
		draw_text(_indicator_x-1, _indicator_y+1, _indicator_text) ;
		draw_text(_indicator_x-1, _indicator_y-1, _indicator_text) ;
		draw_set_color(c_white) ;
		draw_text(_indicator_x, _indicator_y, _indicator_text) ;
		draw_set_valign(fa_center) ;
		draw_set_halign(fa_center) ;
	}
}
#endregion
