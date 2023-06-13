///@desc SCREEN FUNCTIONS & LOGO & GAME OVER SCREEN
#region ||VIS LOGO||
if(GameController_logo_draw)
{
	var _sprite = (!global.G_savefile_extras_not_made_with_unity) ? ((!global.G_savefile_extras_catmode) ? sVISLogo : sVISLogoWithCatEars) : sExtraNotMadeWithUnity,
		_alpha_speed = 0.01,
		_size_speed = 0.0005 ;
	
	if(!GameController_logo_draw_end)
	{
		if(GameController_logo_alpha < 1)
		{
			GameController_logo_alpha += _alpha_speed ;
		}
		else if(GameController_logo_timer > 0)
		{
			GameController_logo_timer-- ;
		}
		else
		{
			GameController_logo_draw_end = true ;
		}
	}
	else
	{
		if(GameController_logo_alpha > 0)
		{
			GameController_logo_alpha -= _alpha_speed ;
		}
		else
		{
			GameController_logo_draw = false ;
			GameController_logo_draw_end = false ;
			GameController_logo_size = 1 ;
			GameController_logo_timer = 60 ;
			scScreenBlacken(true, 0) ;
			scRoomChange(CONST_ROOM_MENU, 1) ;
		}
	}
	
	GameController_logo_size += _size_speed ;
	
	draw_sprite_ext(_sprite, 0, CONST_GUI_W/2, CONST_GUI_H/2, GameController_logo_size, GameController_logo_size, 0, c_white, GameController_logo_alpha) ;

	if((keyboard_check_pressed(vk_escape)) or (keyboard_check_pressed(vk_space)) or (keyboard_check_pressed(vk_enter)) or (mouse_check_button_pressed(mb_left)))
	{
		GameController_logo_draw = false ;
		GameController_logo_draw_end = false ;
		GameController_logo_size = 1 ;
		GameController_logo_timer = 60 ;
		scScreenBlacken(true, 0) ;
		scRoomChange(CONST_ROOM_MENU, 0) ;
	}
}
#endregion

#region ||GAME OVER SCREEN||
if(GameController_gameover_draw)
{
	//Local Variables
	var _table_sprite, _table_sprite_frame, _table_sprite_size, _table_sprite_dislocation,
		_time_milisec, _time_second, _time_minute, _time_full,
		_text ;
	
	//Background Table
	switch(GameController_gamedata_method)
	{
		case ENUM_METHOD.waterfall:
			_table_sprite = GameController_gameover_draw_sprite_waterfall ;
			_table_sprite_frame = 0 ;
			_table_sprite_size = 2 ;
			_table_sprite_dislocation = GameController_gameover_draw_sprite_waterfall_deathframedislocation ;
			break ;
		
		case ENUM_METHOD.agile:
			_table_sprite = GameController_gameover_draw_sprite_agile ;
			_table_sprite_frame = 0 ;
			_table_sprite_size = 2 ;
			_table_sprite_dislocation = GameController_gameover_draw_sprite_agile_deathframedislocation ;
			break ;
		
		default:
	}
	
	//General Draw Sets (for all)
	draw_set_valign(fa_top) ;
	//General Draw Sets (for project description)
	draw_set_halign(fa_right) ;
	draw_set_color(GameController_gameover_draw_color_project_0) ;
	
	//Methodology
	draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
	_table_sprite_frame++ ;
	
	//Project Selection
	if(GameController_collecteddata_stagePS_globaltime != -1)
	{
		_time_second = floor(GameController_collecteddata_stagePS_globaltime)%60 ;
		_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
		_time_minute = floor(floor(GameController_collecteddata_stagePS_globaltime)/60) ;
		_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
		_time_full = _time_minute + ":" + _time_second ;
		
		_text = "YOUR PROJECT WAS" ;
		draw_text(GameController_gameover_draw_stagePS_x, GameController_gameover_draw_stagePS_y, _text) ;
		
		draw_set_color(GameController_gameover_draw_color_project_1) ;
		_text = GameController_collecteddata_stagePS_projectname ;
		draw_text(GameController_gameover_draw_stagePS_x, GameController_gameover_draw_stagePS_y+GameController_gameover_draw_stagePS_yy, _text) ;
		draw_set_color(GameController_gameover_draw_color_project_0) ;
		
		_text = "AND IT TOOK YOU" ;
		draw_text(GameController_gameover_draw_stagePS_x, GameController_gameover_draw_stagePS_y+(GameController_gameover_draw_stagePS_yy*2), _text) ;
		
		draw_set_color(GameController_gameover_draw_color_project_1) ;
		_text = _time_full + " TIME" ;
		draw_text(GameController_gameover_draw_stagePS_x, GameController_gameover_draw_stagePS_y+(GameController_gameover_draw_stagePS_yy*3), _text) ;
		draw_set_color(GameController_gameover_draw_color_project_0) ;
		
		_text = "TO DECIDE" ;
		draw_text(GameController_gameover_draw_stagePS_x, GameController_gameover_draw_stagePS_y+(GameController_gameover_draw_stagePS_yy*4), _text) ;
	}
	else
	{
		_text = "NO PROJECTS ?" ;
		
		draw_text(GameController_gameover_draw_stagePS_x, GameController_gameover_draw_stagePS_y, _text) ;
	}
	
	//General Draw Sets (for SDLC steps)
	draw_set_halign(fa_left) ;
	draw_set_color(GameController_gameover_draw_color_steps) ;
	
	//Requirements Gathering
	if(GameController_collecteddata_stageRA_globaltime != -1)
	{
		_time_second = floor(GameController_collecteddata_stageRA_globaltime)%60 ;
		_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
		_time_minute = floor(floor(GameController_collecteddata_stageRA_globaltime)/60) ;
		_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
		_time_full = _time_minute + ":" + _time_second ;
		_text = _time_full + " Time\n" + string(GameController_collecteddata_stageRA_globalscore) + " Score\n" + string(GameController_collecteddata_stageRA_reqcollected) + " Requirements\n" + string(GameController_collecteddata_stageRA_mistakemade) + " Mistakes" ;
		
		draw_text(GameController_gameover_draw_stageRA_x, GameController_gameover_draw_stageRA_y, _text) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		
		if(GameController_collecteddata_stageRC_globaltime == -1)
		{
			draw_sprite_ext(_table_sprite, _table_sprite_frame+_table_sprite_dislocation, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		}
	}
	else
	{
		_text = GameController_gameover_draw_stage_failtext ;
		
		draw_set_alpha(GameController_gameover_draw_stage_failalpha) ;
		draw_text(GameController_gameover_draw_stageRA_x, GameController_gameover_draw_stageRA_y, _text) ;
		draw_set_alpha(1) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, GameController_gameover_draw_stage_failalpha/2) ;
	}
	_table_sprite_frame++ ;
	
	//Requirement Analysis
	if(GameController_collecteddata_stageRC_globaltime != -1)
	{
		_time_second = floor(GameController_collecteddata_stageRC_globaltime)%60 ;
		_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
		_time_minute = floor(floor(GameController_collecteddata_stageRC_globaltime)/60) ;
		_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
		_time_full = _time_minute + ":" + _time_second ;
		_text = _time_full + " Time\n" + string(GameController_collecteddata_stageRC_globalscore) + " Score\n" + string(GameController_collecteddata_stageRC_reqcount) + " Papers\n" + string(GameController_collecteddata_stageRC_mistakemade) + " Mistakes" ;
		
		draw_text(GameController_gameover_draw_stageRC_x, GameController_gameover_draw_stageRC_y, _text) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		
		if(GameController_collecteddata_stageDs_globaltime == -1)
		{
			draw_sprite_ext(_table_sprite, _table_sprite_frame+_table_sprite_dislocation, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		}
	}
	else
	{
		_text = GameController_gameover_draw_stage_failtext ;
		
		draw_set_alpha(GameController_gameover_draw_stage_failalpha) ;
		draw_text(GameController_gameover_draw_stageRC_x, GameController_gameover_draw_stageRC_y, _text) ;
		draw_set_alpha(1) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, GameController_gameover_draw_stage_failalpha/2) ;
	}
	_table_sprite_frame++ ;
	
	//Design
	if(GameController_collecteddata_stageDs_globaltime != -1)
	{
		_time_second = floor(GameController_collecteddata_stageDs_globaltime)%60 ;
		_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
		_time_minute = floor(floor(GameController_collecteddata_stageDs_globaltime)/60) ;
		_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
		_time_full = _time_minute + ":" + _time_second ;
		_text = _time_full + " Time\n" + string(GameController_collecteddata_stageDs_globalscore) + " Score\n" + string(GameController_collecteddata_stageDs_questioncount) + " Tasks\n" + string(GameController_collecteddata_stageDs_mistakemade) + " Mistakes" ;
		
		draw_text(GameController_gameover_draw_stageDs_x, GameController_gameover_draw_stageDs_y, _text) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		
		if(GameController_collecteddata_stageD_globaltime == -1)
		{
			draw_sprite_ext(_table_sprite, _table_sprite_frame+_table_sprite_dislocation, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		}
	}
	else
	{
		_text = GameController_gameover_draw_stage_failtext ;
		
		draw_set_alpha(GameController_gameover_draw_stage_failalpha) ;
		draw_text(GameController_gameover_draw_stageDs_x, GameController_gameover_draw_stageDs_y, _text) ;
		draw_set_alpha(1) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, GameController_gameover_draw_stage_failalpha/2) ;
	}
	_table_sprite_frame++ ;
	
	//Development
	if(GameController_collecteddata_stageD_globaltime != -1)
	{
		_time_second = floor(GameController_collecteddata_stageD_globaltime)%60 ;
		_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
		_time_minute = floor(floor(GameController_collecteddata_stageD_globaltime)/60) ;
		_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
		_time_full = _time_minute + ":" + _time_second ;
		_text = _time_full + " Time\n" + string(GameController_collecteddata_stageD_globalscore) + " Score" ;
		
		draw_text(GameController_gameover_draw_stageD_x, GameController_gameover_draw_stageD_y, _text) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		
		if(GameController_collecteddata_stageT_globaltime == -1)
		{
			draw_sprite_ext(_table_sprite, _table_sprite_frame+_table_sprite_dislocation, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		}
	}
	else
	{
		_text = GameController_gameover_draw_stage_failtext ;
		
		draw_set_alpha(GameController_gameover_draw_stage_failalpha) ;
		draw_text(GameController_gameover_draw_stageD_x, GameController_gameover_draw_stageD_y, _text) ;
		draw_set_alpha(1) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, GameController_gameover_draw_stage_failalpha/2) ;
	}
	_table_sprite_frame++ ;
	
	//Testing
	if(GameController_collecteddata_stageT_globaltime != -1)
	{
		_time_second = floor(GameController_collecteddata_stageT_globaltime)%60 ;
		_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
		_time_minute = floor(floor(GameController_collecteddata_stageT_globaltime)/60) ;
		_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
		_time_full = _time_minute + ":" + _time_second ;
		_text = _time_full + " Time\n" + string(GameController_collecteddata_stageT_globalscore) + " Score\n" + string(GameController_collecteddata_stageT_mistakemade) + " Mistakes" ;
		
		draw_text(GameController_gameover_draw_stageT_x, GameController_gameover_draw_stageT_y, _text) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		
		if(GameController_collecteddata_stageDp_globaltime == -1)
		{
			draw_sprite_ext(_table_sprite, _table_sprite_frame+_table_sprite_dislocation, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		}
	}
	else
	{
		_text = GameController_gameover_draw_stage_failtext ;
		
		draw_set_alpha(GameController_gameover_draw_stage_failalpha) ;
		draw_text(GameController_gameover_draw_stageT_x, GameController_gameover_draw_stageT_y, _text) ;
		draw_set_alpha(1) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, GameController_gameover_draw_stage_failalpha/2) ;
	}
	_table_sprite_frame++ ;
	
	//Deployment
	if(GameController_collecteddata_stageDp_globaltime != -1)
	{
		_time_second = floor(GameController_collecteddata_stageDp_globaltime)%60 ;
		_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
		_time_minute = floor(floor(GameController_collecteddata_stageDp_globaltime)/60) ;
		_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
		_time_full = _time_minute + ":" + _time_second ;
		_text = _time_full + " Time\n" + string(GameController_collecteddata_stageDp_globalscore) + " Score" ;
		
		draw_text(GameController_gameover_draw_stageDp_x, GameController_gameover_draw_stageDp_y, _text) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		
		if(GameController_collecteddata_stageMt_globaltime == -1)
		{
			draw_sprite_ext(_table_sprite, _table_sprite_frame+_table_sprite_dislocation, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		}
	}
	else
	{
		_text = GameController_gameover_draw_stage_failtext ;
		
		draw_set_alpha(GameController_gameover_draw_stage_failalpha) ;
		draw_text(GameController_gameover_draw_stageDp_x, GameController_gameover_draw_stageDp_y, _text) ;
		draw_set_alpha(1) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, GameController_gameover_draw_stage_failalpha/2) ;
	}
	_table_sprite_frame++ ;
	
	//Maintenance
	if(GameController_collecteddata_stageMt_globaltime != -1)
	{
		_time_second = floor(GameController_collecteddata_stageMt_globaltime)%60 ;
		_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
		_time_minute = floor(floor(GameController_collecteddata_stageMt_globaltime)/60) ;
		_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
		_time_full = _time_minute + ":" + _time_second ;
		_text = _time_full + " Time\n" + string(GameController_collecteddata_stageMt_globalscore) + " Score\n" + string(GameController_collecteddata_stageMt_mistakemade) + " Mistakes" ;
		
		draw_text(GameController_gameover_draw_stageMt_x, GameController_gameover_draw_stageMt_y, _text) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		
		if(!GameController_gamedata_gamesuccess)
		{
			draw_sprite_ext(_table_sprite, _table_sprite_frame+_table_sprite_dislocation, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, 1) ;
		}
	}
	else
	{
		_text = GameController_gameover_draw_stage_failtext ;
		
		draw_set_alpha(GameController_gameover_draw_stage_failalpha) ;
		draw_text(GameController_gameover_draw_stageMt_x, GameController_gameover_draw_stageMt_y, _text) ;
		draw_set_alpha(1) ;
		draw_sprite_ext(_table_sprite, _table_sprite_frame, 0, 0, _table_sprite_size, _table_sprite_size, 0, c_white, GameController_gameover_draw_stage_failalpha/2) ;
	}
	_table_sprite_frame++ ;
	
	//Total Time and Score
	draw_set_halign(fa_center) ;
	draw_set_valign(fa_bottom) ;
	
	_time_full = ((GameController_collecteddata_stagePS_globaltime != -1) ? GameController_collecteddata_stagePS_globaltime : 0)+((GameController_collecteddata_stageRA_globaltime != -1) ? GameController_collecteddata_stageRA_globaltime : 0)+((GameController_collecteddata_stageRC_globaltime != -1) ? GameController_collecteddata_stageRC_globaltime : 0)+((GameController_collecteddata_stageDs_globaltime != -1) ? GameController_collecteddata_stageDs_globaltime : 0)+((GameController_collecteddata_stageD_globaltime != -1) ? GameController_collecteddata_stageD_globaltime : 0)+((GameController_collecteddata_stageT_globaltime != -1) ? GameController_collecteddata_stageT_globaltime : 0)+((GameController_collecteddata_stageDp_globaltime != -1) ? GameController_collecteddata_stageDp_globaltime : 0)+((GameController_collecteddata_stageMt_globaltime != -1) ? GameController_collecteddata_stageMt_globaltime : 0) ;
	//_time_milisec = floor((_time_full-floor(_time_full))*100) ;
	//_time_milisec = (_time_milisec < 10) ? "0"+string(_time_milisec) : string(_time_milisec) ;
	_time_second = floor(_time_full)%60 ;
	_time_second = (_time_second < 10) ? "0"+string(_time_second) : string(_time_second) ;
	_time_minute = floor(floor(_time_full)/60) ;
	_time_minute = (_time_minute < 10) ? "0"+string(_time_minute) : string(_time_minute) ;
	_time_full = _time_minute + ":" + _time_second ;//+ ":" + _time_milisec ;
	_text = _time_full + " Time | " + string(GameController_collecteddata_stagePS_globalscore+GameController_collecteddata_stageRA_globalscore+GameController_collecteddata_stageRC_globalscore+GameController_collecteddata_stageDs_globalscore+GameController_collecteddata_stageD_globalscore+GameController_collecteddata_stageT_globalscore+GameController_collecteddata_stageDp_globalscore+GameController_collecteddata_stageMt_globalscore) + " Score" ;
		
	draw_set_color(GameController_gameover_draw_totals_color) ;
	draw_text(GameController_gameover_draw_totals_x, GameController_gameover_draw_totals_y, _text) ;
	
	//Skip Text
	if(GameController_gameover_draw_skiptext_timer <= 0)
	{
		draw_set_halign(fa_right) ;
		draw_set_color(GameController_gameover_draw_skiptext_color) ;
		draw_text(GameController_gameover_draw_skiptext_x, GameController_gameover_draw_skiptext_y, GameController_gameover_draw_skiptext) ;
	}
	
	//Resetting Draw Sets
	draw_set_halign(fa_center) ;
	draw_set_valign(fa_center) ;
	draw_set_color(c_white) ;
	
	//Check For Skip
	if(GameController_gameover_draw_skiptext_timer > 0)
	{
		GameController_gameover_draw_skiptext_timer-- ;
	}
	else if((!GameController_gameover_draw_end) and (keyboard_check_pressed(vk_space)))
	{
		GameController_gameover_draw_end = true ;
		GameController_gameover_draw_end_timer = GameController_gameover_draw_end_timer_max ;
		scScreenBlacken(true, 2) ;
		scScreenCursorChange(ENUM_CURSOR_ID.nothing) ;
		scSoundMusicPlay(noone, false,, true,, 2) ;
		scRoomChange(CONST_ROOM_MENU, 3) ;
	}
	else if(GameController_gameover_draw_end)
	{
		if(GameController_gameover_draw_end_timer > 0)
		{
			GameController_gameover_draw_end_timer-- ;
		}
		else
		{
			GameController_gameover_draw = false ;
			GameController_gameover_draw_end = false ;
		}
	}
}
#endregion

#region ||PROJECT COMPLETITION||
if(GameController_gamedata_projectcompletition_draw)
{
	var _x = CONST_GUI_W/2,
		_y = CONST_GUI_H-5,
		_text = "PROJECT " + string(GameController_gamedata_projectcompletition) + "% DONE" ;
	
	draw_set_valign(fa_bottom) ;
	draw_set_color(c_black) ;
	draw_text(_x+1, _y, _text) ;
	draw_text(_x-1, _y, _text) ;
	draw_text(_x, _y+1, _text) ;
	draw_text(_x, _y-1, _text) ;
	draw_text(_x+1, _y+1, _text) ;
	draw_text(_x+1, _y-1, _text) ;
	draw_text(_x-1, _y+1, _text) ;
	draw_text(_x-1, _y-1, _text) ;
	draw_set_color(c_green) ;
	draw_text(_x, _y, _text) ;
	draw_set_valign(fa_center) ;
}
#endregion

#region ||BRIEFING ROOM SKIP BUTTON||
if(GameController_screen_briefingskip)
{
	if(GameController_screen_briefingskip_timer > 0)
	{
		GameController_screen_briefingskip_timer-- ;
	}
	else
	{
		GameController_screen_briefingskip = false ;
	}
	
	if(keyboard_check(vk_space))
	{
		GameController_screen_briefingskip_timer = 0 ;
		GameController_screen_briefingskip = false ;
	}
	
	draw_set_halign(fa_right) ;
	draw_set_valign(fa_bottom) ;
	draw_set_color(c_olive) ;
	draw_text(CONST_GUI_W*31/32, CONST_GUI_H*31/32, GameController_screen_briefingskip_text) ;
	draw_set_color(c_white) ;
	draw_set_halign(fa_center) ;
	draw_set_valign(fa_center) ;
}
#endregion
