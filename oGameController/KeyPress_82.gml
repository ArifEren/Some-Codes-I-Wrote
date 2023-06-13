///@desc GAME RESTART
if(global.G_includedfile_game_resettable)
{
	if((keyboard_check(vk_shift)) and (keyboard_check(vk_control)))
	{
		scScreenCursorChange(ENUM_CURSOR_ID.nothing) ;
		game_restart() ;
	}
}
