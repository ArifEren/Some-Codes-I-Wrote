#region ||DISABLING WINDOW CLOSE BUTTON||
window_command_set_active(window_command_close, false) ;
#endregion

#region ||RANDOMIZATION & SET FONT||
randomize() ;
draw_set_font(fStandard) ;
draw_set_halign(fa_center) ;
draw_set_valign(fa_center) ;
#endregion

#region ||INCLUDED/SAVEFILE MACROS & VARIABLES AND GLOBAL VARIABLES||
//game version and home edition switch
#macro CONST_GAME_VERSION "1.0.0"
global.G_home_edition_active = true ; //variables are changed on bottom of user event 1
//included files variables
#macro CONST_INCLUDEDFILE_NAME "adjustments.ini"
global.G_includedfile_network_active = false ;
global.G_includedfile_network_ip_port = "http://localhost:5046" ;
global.G_includedfile_request_timeout_time = 10*60 ;
global.G_includedfile_request_repeated_period = 5*60 ;
global.G_includedfile_scoreboard_active = true ;
global.G_includedfile_game_resettable = false ;
global.G_includedfile_game_force_agile = false ;
global.G_includedfile_subtitles_active = true ;
global.G_includedfile_debugmode_active = false ;
global.G_includedfile_debugmode_shownetwork = false ;
global.G_includedfile_debugmode_size = 0.75 ;
global.G_includedfile_debugmode_color_title = make_color_rgb(55, 255, 255) ;
global.G_includedfile_debugmode_color_text = make_color_rgb(100, 255, 0) ;
global.G_includedfile_logs_savetolocal = false ;
global.G_includedfile_getfromincludedfiles = true ;
//save files variables
#macro CONST_SAVEFILE_NAME_OPTIONS "options.devdev"
#macro CONST_SAVEFILE_NAME_CUTSCENESKIP_FOLDER "CUTSCENE SKIPPABILITIES"
#macro CONST_SAVEFILE_NAME_CUTSCENESKIP "cutscene_skippability_$.devdev" //$ is for student id
#macro CONST_SAVEFILE_NAME_CUTSCENESKIP_LOCAL "cutscene_skippability_LOCAL.devdev"
#macro CONST_SAVEFILE_NAME_LOGS_FOLDER "LOGS"
#macro CONST_SAVEFILE_NAME_LOGS "log_$_&" //$ is for student id, & is for time
#macro CONST_SAVEFILE_NAME_LOGS_EXTENTION ".devdev.json"
global.G_savefile_sound_effect_level = 5 ;
global.G_savefile_sound_music_level = 5 ;
global.G_savefile_sound_voice_level = 10 ;
global.G_savefile_subtitles_language_id = 0 ;
global.G_savefile_extras_menubook_id = 0 ;
global.G_savefile_extras_game_start_from_stage = 0 ;
global.G_savefile_extras_scarymood = false ;
global.G_savefile_extras_catmode = false ;
global.G_savefile_extras_moodlenews = false ;
global.G_savefile_extras_occasionally_vineboom = false ;
global.G_savefile_extras_not_made_with_unity = false ;
global.G_savefile_extras_devdev_language_pack = false ;
global.G_savefile_extras_speedrunner_mode = false ;
global.G_savefile_cutscene_watched = array_create(0) ;
global.G_savefile_cutscene_watched_local = array_create(0) ;
global.G_savefile_getfromsavefiles = true ;
//other global variables
global.G_encryption_key = "" ;
global.G_locallog_object_list = ds_list_create() ;
global.G_locallog_object_id_counter = -1 ;
global.G_request_object_list = noone ;
global.G_request_object_id_counter = -1 ;
global.G_savefile_subtitles_language_id_max = sprite_get_number(sMenuButtonLanguageSelection)-3 ;
global.G_savefile_extras_id_max = sprite_get_number(sMenuButtonExtrasSelection)-3 ;
global.G_savefile_extras_menubook_id_count = sprite_get_number(sMenuBook) ;
global.G_savefile_extras_game_start_from_stage_count = 8 ;
#endregion

#region ||INCLUDED FILES OPERATIONS||
event_user(1) ; //reading included files
#endregion

#region ||USELESS REQUEST & ENCRYPTION & REQUEST OBJECT DS_LIST & NETWORK VARIABLES||
if(global.G_includedfile_network_active)
{
	var _map = ds_map_create() ;
	http_request(global.G_includedfile_network_ip_port + "/someone_opened_devdev", "POST", _map, "");
	ds_map_destroy(_map) ;
	
	global.G_encryption_key = "TORUGANA" ;
	global.G_request_object_list = ds_list_create() ;
	
	enum ENUM_REQUEST {
		log,
		addscore,
		getscoreboard,
		getloggedinstatus
	}
	
	GameController_network_waitforrequestobjects_forlogout = false ;
	GameController_network_waitforrequestobjects_forlogout_wonstatus = -2 ;
}
#endregion

#region ||MACRO & ENUM DEFINITIONS||
//macros for gui
#macro CONST_GUI_W 1280
#macro CONST_GUI_H 720
//macros for objects
#macro CONST_OBJ_GAMECONTROLLER oGameController
#macro CONST_OBJ_MENUCONTROLLER oMenuController
#macro CONST_OBJ_STAGECONTROLLER_PROJECTSELECTION oStageControllerProjectSelection
#macro CONST_OBJ_STAGECONTROLLER_REQUIREMENTANALYSIS oStageControllerRequirementsAnalysis
#macro CONST_OBJ_STAGECONTROLLER_REQUIREMENTCATEGORIZATION oStageControllerRequirementCategorization
#macro CONST_OBJ_STAGECONTROLLER_DESIGN oStageControllerDesign
#macro CONST_OBJ_STAGECONTROLLER_DEVELOPMENT oStageControllerDevelopment
#macro CONST_OBJ_STAGECONTROLLER_TESTING oStageControllerTesting
#macro CONST_OBJ_STAGECONTROLLER_DEPLOYMENT oStageControllerDeployment
#macro CONST_OBJ_STAGECONTROLLER_MAINTENANCE oStageControllerMaintenance
#macro CONST_OBJ_SOUNDPLAYER oSoundPlayer
#macro CONST_OBJ_LOCALLOG oLocalLogObject
#macro CONST_OBJ_REQUEST oRequestObject
//macros for rooms
#macro CONST_ROOM_MENU rMenu
#macro CONST_ROOM_BRIEFING rBriefing
#macro CONST_ROOM_GAMEOVER rGameOver
#macro CONST_ROOM_STAGE_PS rStageProjectSelection
#macro CONST_ROOM_STAGE_PS_AGILE rStageProjectSelectionAgile
#macro CONST_ROOM_STAGE_RA rStageRequirementsAnalysis
#macro CONST_ROOM_STAGE_RA_AGILE rStageRequirementsAnalysisAgile
#macro CONST_ROOM_STAGE_RC rStageRequirementCategorization
#macro CONST_ROOM_STAGE_DS rStageDesign
#macro CONST_ROOM_STAGE_D rStageDevelopment
#macro CONST_ROOM_STAGE_D_AGILE rStageDevelopmentAgile
#macro CONST_ROOM_STAGE_T rStageTesting
#macro CONST_ROOM_STAGE_T_AGILE rStageTestingAgile
#macro CONST_ROOM_STAGE_DP rStageDeployment
#macro CONST_ROOM_STAGE_MT rStageMaintenance
//macros for audio groups
#macro CONST_AG_EFFECT AG_Effect
#macro CONST_AG_MUSIC AG_Music
#macro CONST_AG_VOICE AG_Voice
//enums for methods
enum ENUM_METHOD {
	none,
	waterfall,
	agile
}
//enum for cutscenes
enum ENUM_CUTSCENE_ID {
	stagePS_tutorial,
	stageRA_tutorial,
	stageRC_tutorial,
	stageDs_tutorial,
	stageD_tutorial,
	stageT_tutorial,
	stageDp_tutorial,
	stageMt_tutorial,
	stageMt_intro,
	stageMt_yearpass,
	stageMt_shutdown
}
//enum for cursor sprites
enum ENUM_CURSOR_ID {
	nothing,
	pencil,
	cursor_arrow,
	cursor_pointing,
	hand_open,
	hand_pointing,
	hand_grabbing,
	crosshair
}
//enum for extras
enum ENUM_EXTRAS_ID {
	menu_book,
	starting_stage,
	speedrunner_mode,
	scary_mood,
	not_unity,
	moodle_news,
	vine_boom,
	cat_mode,
	devdev_language
}
//enum for log actions
global.ENUM_LOG_ACTION = {
	stage_begin : "stage_begin",
	stage_end : "stage_end",
	game_ended : "game_end",
	stagePS_project_clicked : "stagePS_project_clicked",
	stageRA_choice_made : "stageRG_choice_made",
	stageRC_paper_placed : "stageRA_paper_placed",
	stageDS_question_answered : "stageDS_question_answered",
	stageDS_task_checked : "stageDS_task_checked",
	stageDS_fatGPT_killed : "stageDS_fatGPT_killed",
	stageD_task_done : "stageD_task_done",
	stageT_module_completed : "stageT_module_completed",
	stageDP_task_done : "stageDP_task_done",
	stageMT_request_completed : "stageMT_request_completed",
	stageMT_system_updated : "stageMT_system_updated"
}
//macros for cutscenes
#macro CONST_CUTSCENE_COUNT 11
//setting some variables according to macros and enums
global.G_savefile_cutscene_watched = array_create(CONST_CUTSCENE_COUNT, false) ;
global.G_savefile_cutscene_watched_local = array_create(CONST_CUTSCENE_COUNT, false) ;
#endregion

#region ||AUDIO VARIABLES & ACTIONS||
//Audio Groups
GameController_audiogroup_loading = true ;
audio_group_load(CONST_AG_EFFECT) ;
audio_group_load(CONST_AG_MUSIC) ;
audio_group_load(CONST_AG_VOICE) ;
//Musics
GameController_music_playing = noone ;
GameController_music_willplay = noone ;
GameController_music_willplay_loop = false ;
GameController_music_willplay_smoothly_enter = false ;
GameController_music_willplay_smoothly_exit = false ;
GameController_music_willplay_smoothly_enter_timer = 0 ;
GameController_music_willplay_smoothly_exit_timer = 0 ;
GameController_music_willplay_smoothly_exit_doitonce = true ;
global.GameController_music_current = noone ;
#endregion

#region ||VIS LOGO VARIABLES||
GameController_logo_draw = true ;
GameController_logo_draw_end = false ;
GameController_logo_alpha = 0 ;
GameController_logo_size = 1 ;
GameController_logo_timer = 60 ;
#endregion

#region ||QUITTING GAME VARIABLES||
GameController_gamequit_time_max = 1.5*60 ;
GameController_gamequit_time = GameController_gamequit_time_max ;
#endregion

#region ||GAME OVER SCREEN VARIABLES||
GameController_gameover_draw = false ;
GameController_gameover_draw_end = false ;
GameController_gameover_draw_end_timer_max = 2*60 ;
GameController_gameover_draw_end_timer = 0 ;
GameController_gameover_draw_sprite_waterfall = sGameoverTableWaterfall ;
GameController_gameover_draw_sprite_waterfall_deathframedislocation = (sprite_get_number(GameController_gameover_draw_sprite_waterfall)-1)/2 ;
GameController_gameover_draw_sprite_agile = sGameoverTableAgile ;
GameController_gameover_draw_sprite_agile_deathframedislocation = (sprite_get_number(GameController_gameover_draw_sprite_agile)-1)/2 ;
GameController_gameover_draw_color_project_0 = make_color_rgb(0, 204, 0) ;
GameController_gameover_draw_color_project_1 = make_color_rgb(0, 102, 0) ;
GameController_gameover_draw_color_steps = make_color_rgb(102, 0, 0) ;
GameController_gameover_draw_stage_failtext = "DID NOT\nMAKE IT\nHERE" ;
GameController_gameover_draw_stage_failalpha = 0.4 ;
GameController_gameover_draw_stagePS_x = CONST_GUI_W-10 ;
GameController_gameover_draw_stagePS_y = 10 ;
GameController_gameover_draw_stagePS_yy = 26 ;
GameController_gameover_draw_stageRA_x = 400 ;
GameController_gameover_draw_stageRA_y = 20 ;
GameController_gameover_draw_stageRC_x = 105 ;
GameController_gameover_draw_stageRC_y = 350 ;
GameController_gameover_draw_stageDs_x = 590 ;
GameController_gameover_draw_stageDs_y = 145 ;
GameController_gameover_draw_stageD_x = 460 ;
GameController_gameover_draw_stageD_y = 530 ;
GameController_gameover_draw_stageT_x = 890 ;
GameController_gameover_draw_stageT_y = 190 ;
GameController_gameover_draw_stageDp_x = 665 ;
GameController_gameover_draw_stageDp_y = 590 ;
GameController_gameover_draw_stageMt_x = 1130 ;
GameController_gameover_draw_stageMt_y = 310 ;
GameController_gameover_draw_totals_color = c_yellow ;
GameController_gameover_draw_totals_x = CONST_GUI_W/2 ;
GameController_gameover_draw_totals_y = CONST_GUI_H-5 ;
GameController_gameover_draw_skiptext_timer_max = 2*60 ;
GameController_gameover_draw_skiptext_timer = 0 ;
GameController_gameover_draw_skiptext = "[SPACE] to exit" ;
GameController_gameover_draw_skiptext_color = c_olive ;
GameController_gameover_draw_skiptext_x = CONST_GUI_W-5 ;
GameController_gameover_draw_skiptext_y = CONST_GUI_H-5 ;
GameController_gameover_draw_music = snGameoverMusic ;
#endregion

#region ||CURSOR VARIABLES||
GameController_cursor_sprite_menu = sCursorMenu ;
GameController_cursor_sprite_stage_ps = array_create(2) ;
GameController_cursor_sprite_stage_ps[0] = sCursorStagePS0 ;
GameController_cursor_sprite_stage_ps[1] = sCursorStagePS1 ;
GameController_cursor_sprite_stage_ra = array_create(2) ;
GameController_cursor_sprite_stage_ra[0] = sCursorStageRA0 ;
GameController_cursor_sprite_stage_ra[1] = sCursorStageRA1 ;
GameController_cursor_sprite_stage_rc = array_create(1) ;
GameController_cursor_sprite_stage_rc[0] = sCursorStageRC0 ;
GameController_cursor_sprite_stage_ds[0] = sCursorStageDs0 ;
#endregion

#region ||SCREEN FUNCTIONS VARIABLES||
//blacken
GameController_screen_blacken = false ;
GameController_screen_blacken_alpha = 0 ;
GameController_screen_blacken_alpha_speed = 0 ;
//screen shake
GameController_screen_shake = false ;
GameController_screen_shake_size_y = 8 ;
GameController_screen_shake_power = 0 ;
GameController_screen_shake_power_speed = 0.1 ;
GameController_screen_shake_power_speed_factor = 1 ;
//briefing room skip button
GameController_screen_briefingskip = false ;
GameController_screen_briefingskip_text = "press SPACE to Skip" ;
GameController_screen_briefingskip_timer_max = 10*60 ;
GameController_screen_briefingskip_timer = 0 ;
//screen light
GameController_screen_light = false ;
GameController_screen_light_follow = true ;
GameController_screen_light_following_x = 0 ;
GameController_screen_light_following_y = 0 ;
GameController_screen_light_surface = surface_create(CONST_GUI_W, CONST_GUI_H) ;
GameController_screen_light_color = c_white ;
GameController_screen_light_r = 384 ;
//screen noise
GameController_screen_noise = false ;
GameController_screen_noise_forcestop = false ;
GameController_screen_noise_alpha = 0 ;
GameController_screen_noise_alpha_speed = 0.05 ;
GameController_screen_noise_alpha_speed_factor = 0 ;
GameController_screen_noise_size = 8 ;
GameController_screen_noise_timer = 60 ;
GameController_screen_noise_color = c_white ;
GameController_screen_noise_sound = snScreenNoise ;
#endregion

#region ||PLANNED ROOM CHANGE VARIABLES||
GameController_roomchange_newroom = noone ;
GameController_roomchange_timer = 0 ;
#endregion

#region ||SCOREBOARD VARIABLES||
GameController_scoreboard_dataget_timer_active = false ;
GameController_scoreboard_dataget_timer_hold = false ;
GameController_scoreboard_dataget_timer_max = global.G_includedfile_request_repeated_period ;
GameController_scoreboard_dataget_timer = global.G_includedfile_request_repeated_period ;
GameController_scoreboard_dataget_looked_counter = 0 ;

GameController_scoreboard_playercount = -1 ;
GameController_scoreboard_showcount = 0 ;
GameController_scoreboard_showcount_absolute = 5 ;
GameController_scoreboard_thisuserisextra = false ;
GameController_scoreboard_thisuserisextra_placement = -1 ;

GameController_scoreboard_background_alpha = 0.75 ;
GameController_scoreboard_backbar_color = make_color_rgb(150, 150, 0) ;
GameController_scoreboard_backbar_alpha = 1 ;
GameController_scoreboard_backbar_x = floor(CONST_GUI_W/8) ;
GameController_scoreboard_backbar_y = floor(CONST_GUI_H*3/16) ;
GameController_scoreboard_backbar_xx = floor(CONST_GUI_W*6/8) ;
GameController_scoreboard_backbar_yy = floor(CONST_GUI_H/16) ;
GameController_scoreboard_backbar_yy_next = floor(CONST_GUI_H/32) ;
GameController_scoreboard_backbar_outline_color = make_color_rgb(100, 100, 0) ;
GameController_scoreboard_backbar_outline_size = 4 ;

GameController_scoreboard_backbar_color_thisuser = make_color_rgb(150, 150, 0) ;
GameController_scoreboard_backbar_outline_color_thisuser = scColorSaturation(#2EFF83, -100) ;

GameController_scoreboard_titles_bar_color = make_color_rgb(30, 30, 0) ;
GameController_scoreboard_titles_bar_alpha = 1 ;
GameController_scoreboard_titles_bar_yy = floor(CONST_GUI_H/16) ;
GameController_scoreboard_titles_bar_y = GameController_scoreboard_backbar_y-GameController_scoreboard_titles_bar_yy-GameController_scoreboard_backbar_yy_next ;
GameController_scoreboard_titles_bar_outline_color = make_color_rgb(60, 60, 0) ;
GameController_scoreboard_titles_bar_outline_size = 4 ;
GameController_scoreboard_titles_text_color = make_color_rgb(100, 100, 0) ;
GameController_scoreboard_titles_text_size = 1 ;
GameController_scoreboard_titles_text_offset_y = floor(GameController_scoreboard_titles_bar_yy/2)+2 ;
GameController_scoreboard_titles_text = array_create(5) ;
GameController_scoreboard_titles_text[0] = "PLACE" ;
GameController_scoreboard_titles_text[1] = "PLAYER" ;
GameController_scoreboard_titles_text[2] = "STATUS" ;
GameController_scoreboard_titles_text[3] = "RUN" ;
GameController_scoreboard_titles_text[4] = "STAGE" ;
GameController_scoreboard_titles_text[5] = "SCORE" ;

GameController_scoreboard_general_offset_x = 16 ;
GameController_scoreboard_general_offset_y = floor(GameController_scoreboard_backbar_yy/2)+2 ;

GameController_scoreboard_placement_sprite = sScoreboardPlacementMedals ;
GameController_scoreboard_placement_sprite_size = 1.5 ;
GameController_scoreboard_placement_text_color = c_black ;
GameController_scoreboard_placement_text_size = 1 ;

GameController_scoreboard_studentid = array_create(GameController_scoreboard_showcount+1, "") ;
GameController_scoreboard_studentid_color = c_maroon ;
GameController_scoreboard_studentid_size = 1 ;
GameController_scoreboard_studentid_offset_x = 96 ;

GameController_scoreboard_howitended = array_create(GameController_scoreboard_showcount+1, 0) ;
GameController_scoreboard_howitended_sprite = sScoreboardHowItEnded ;
GameController_scoreboard_howitended_sprite_size = 1 ;
GameController_scoreboard_howitended_offset_x = 272 ;

GameController_scoreboard_runid = array_create(GameController_scoreboard_showcount+1, 0) ;
GameController_scoreboard_runid_color = c_purple ;
GameController_scoreboard_runid_size = 1 ;
GameController_scoreboard_runid_offset_x = 128 ;

GameController_scoreboard_stage = array_create(GameController_scoreboard_showcount+1, "") ;
GameController_scoreboard_stage_color = c_teal ;
GameController_scoreboard_stage_size = 1 ;
GameController_scoreboard_stage_offset_x = 176 ;

GameController_scoreboard_score = array_create(GameController_scoreboard_showcount+1, 0) ;
GameController_scoreboard_score_color = c_green ;
GameController_scoreboard_score_size = 1 ;
GameController_scoreboard_score_offset_x = 160 ;

GameController_scoreboard_threedots_color = c_olive ;
GameController_scoreboard_threedots_r = 6 ;
GameController_scoreboard_threedots_yy = 24 ;
GameController_scoreboard_threedots_outline_color = make_color_rgb(100, 100, 0) ;
GameController_scoreboard_threedots_outline_r = 9 ;

if(global.G_home_edition_active)
{
	GameController_scoreboard_titles_text[5] = "HIGH SCORE" ;
	GameController_scoreboard_score_offset_x = 128 ;
}
#endregion

#region ||STILL LOGGED IN CHECK VARIABLES||
GameController_loggedinstatus_dataget_forcedlogout_activated = false ;
GameController_loggedinstatus_dataget_timer_active = false ;
GameController_loggedinstatus_dataget_timer_hold = false ;
GameController_loggedinstatus_dataget_timer_max = global.G_includedfile_request_repeated_period ;
GameController_loggedinstatus_dataget_timer = floor(global.G_includedfile_request_repeated_period/2) ;
#endregion

#region ||SUBTITLES VARIABLES||
GameController_subtitle_voice_noone = snMenuNarratorTest ;
GameController_subtitle_voice = GameController_subtitle_voice_noone ;
GameController_subtitle_voice_unique_id = -1 ;
GameController_subtitle_map = ds_map_create() ;
GameController_subtitle_text_index = 0 ;
GameController_subtitle_text_color_a = scColorSaturation(c_yellow, -100) ;
GameController_subtitle_text_color_t = scColorSaturation(c_red, -100) ;
GameController_subtitle_text_color_s = scColorSaturation(#2EFF83, -100) ;
GameController_subtitle_text_color_b = scColorSaturation(c_blue, -100) ;//#B2B1FF ;
GameController_subtitle_text_color_a_and_t = scColorSaturation(c_orange, -100) ;
GameController_subtitle_text_x = floor(CONST_GUI_W/2) ;
GameController_subtitle_text_y = floor(CONST_GUI_H*9/10) ;
GameController_subtitle_text_sep = 26 ;
GameController_subtitle_text_w = floor(CONST_GUI_W*4/5) ;
GameController_subtitle_background_alpha = 0.9 ;
#endregion

#region ||GAME DATA VARIABLES||
//player data
GameController_gamedata_player_ready = false ;
GameController_gamedata_player_studentid = "" ;
GameController_gamedata_player_name = "" ;
GameController_gamedata_player_surname = "" ;
GameController_gamedata_player_gender = "" ;
GameController_gamedata_player_age = -1 ;
GameController_gamedata_player_gamerrate = -1 ;
GameController_gamedata_player_password = "" ;
GameController_gamedata_player_run_id = -1 ;
GameController_gamedata_player_fullname = "" ;
GameController_gamedata_player_identifier_token = "" ;
//game data
GameController_gamedata_stage = -1 ;
GameController_gamedata_method = noone ;
GameController_gamedata_gamesuccess = false ;
GameController_gamedata_projectcompletition = -1 ;
GameController_gamedata_projectcompletition_increase = 10 ;
GameController_gamedata_projectcompletition_decrease = 10 ;
GameController_gamedata_projectcompletition_draw = false ;
//collected data
GameController_collecteddata_stagePS_globaltime = -1 ;
GameController_collecteddata_stagePS_globalscore = 0 ;
GameController_collecteddata_stagePS_projectname = "" ;
GameController_collecteddata_stageRA_globaltime = -1 ;
GameController_collecteddata_stageRA_globalscore = 0 ;
GameController_collecteddata_stageRA_reqcollected = 0 ;
GameController_collecteddata_stageRA_mistakemade = 0 ;
GameController_collecteddata_stageRC_globaltime = -1 ;
GameController_collecteddata_stageRC_globalscore = 0 ;
GameController_collecteddata_stageRC_reqcount = 0 ;
GameController_collecteddata_stageRC_mistakemade = 0 ;
GameController_collecteddata_stageDs_globaltime = -1 ;
GameController_collecteddata_stageDs_globalscore = 0 ;
GameController_collecteddata_stageDs_questioncount = 0 ;
GameController_collecteddata_stageDs_mistakemade = 0 ;
GameController_collecteddata_stageD_globaltime = -1 ;
GameController_collecteddata_stageD_globalscore = 0 ;
GameController_collecteddata_stageT_globaltime = -1 ;
GameController_collecteddata_stageT_globalscore = 0 ;
GameController_collecteddata_stageT_mistakemade = 0 ;
GameController_collecteddata_stageDp_globaltime = -1 ;
GameController_collecteddata_stageDp_globalscore = 0 ;
GameController_collecteddata_stageMt_globaltime = -1 ;
GameController_collecteddata_stageMt_globalscore = 0 ;
GameController_collecteddata_stageMt_mistakemade = 0 ;
#endregion

#region ||DEBUG MODE VARIABLES||
GameController_debug_speedrunner_active = false ;
if(global.G_includedfile_network_active)
{
	GameController_debug_lastdata_requestobject_current = "none" ;
	GameController_debug_lastdata_menurequest_current = "none" ;
}
#endregion

//FUNCTIONS
//check if player data is entered
function GameController_fun_IsPlayerDataEntered()
{
	return GameController_gamedata_player_ready ;
}

//set player data at menu (already existing player)
function GameController_fun_SetPlayerDataExisting(_studentid, _run_id, _fullname, _auth_token)
{
	GameController_gamedata_player_studentid = _studentid ;
	GameController_gamedata_player_run_id = _run_id ;
	GameController_gamedata_player_fullname = _fullname ;
	GameController_gamedata_player_identifier_token = _auth_token ;
	GameController_gamedata_player_ready = true ;
}

//get player student_id in game
function GameController_fun_GetPlayerDataStudentId()
{
	return GameController_gamedata_player_studentid ;
}

//get player run_id in game
function GameController_fun_GetPlayerDataRunId()
{
	return GameController_gamedata_player_run_id ;
}

//get stage_id in game
function GameController_fun_GetStageId()
{
	return GameController_gamedata_stage ;
}

//get identifier token in game
function GameController_fun_GetPlayerDataIdentifierToken()
{
	return GameController_gamedata_player_identifier_token ;
}

//set player data at menu (new player)
function GameController_fun_SetPlayerDataNew(_studentid, _name, _surname, _gender, _age, _gamerrate, _password, _run_id, _auth_token)
{
	GameController_gamedata_player_studentid = _studentid ;
	GameController_gamedata_player_name = _name ;
	GameController_gamedata_player_surname = _surname ;
	GameController_gamedata_player_gender = _gender ;
	GameController_gamedata_player_age = _age ;
	GameController_gamedata_player_gamerrate = _gamerrate ;
	GameController_gamedata_player_password = _password ;
	GameController_gamedata_player_run_id = _run_id ;
	GameController_gamedata_player_fullname = _name + " " + _surname ;
	GameController_gamedata_player_identifier_token = _auth_token ;
	GameController_gamedata_player_ready = true ;
}

//reset game data
function GameController_fun_ResetGameData()
{
	GameController_gamedata_player_ready = false ;
	GameController_gamedata_player_studentid = "" ;
	GameController_gamedata_player_name = "" ;
	GameController_gamedata_player_surname = "" ;
	GameController_gamedata_player_gender = "" ;
	GameController_gamedata_player_age = -1 ;
	GameController_gamedata_player_gamerrate = -1 ;
	GameController_gamedata_player_password = "" ;
	GameController_gamedata_player_run_id = -1 ;
	GameController_gamedata_player_fullname = "" ;
	GameController_gamedata_player_identifier_token = "" ;
	
	GameController_gamedata_stage = -1 ;
	GameController_gamedata_method = noone ;
	GameController_gamedata_gamesuccess = false ;
	GameController_gamedata_projectcompletition = -1 ;
	
	GameController_collecteddata_stagePS_globaltime = -1 ;
	GameController_collecteddata_stagePS_globalscore = 0 ;
	GameController_collecteddata_stagePS_projectname = "" ;
	GameController_collecteddata_stageRA_globaltime = -1 ;
	GameController_collecteddata_stageRA_globalscore = 0 ;
	GameController_collecteddata_stageRA_reqcollected = 0 ;
	GameController_collecteddata_stageRA_mistakemade = 0 ;
	GameController_collecteddata_stageRC_globaltime = -1 ;
	GameController_collecteddata_stageRC_globalscore = 0 ;
	GameController_collecteddata_stageRC_reqcount = 0 ;
	GameController_collecteddata_stageRC_mistakemade = 0 ;
	GameController_collecteddata_stageDs_globaltime = -1 ;
	GameController_collecteddata_stageDs_globalscore = 0 ;
	GameController_collecteddata_stageDs_questioncount = 0 ;
	GameController_collecteddata_stageDs_mistakemade = 0 ;
	GameController_collecteddata_stageD_globaltime = -1 ;
	GameController_collecteddata_stageD_globalscore = 0 ;
	GameController_collecteddata_stageT_globaltime = -1 ;
	GameController_collecteddata_stageT_globalscore = 0 ;
	GameController_collecteddata_stageT_mistakemade = 0 ;
	GameController_collecteddata_stageDp_globaltime = -1 ;
	GameController_collecteddata_stageDp_globalscore = 0 ;
	GameController_collecteddata_stageMt_globaltime = -1 ;
	GameController_collecteddata_stageMt_globalscore = 0 ;
	GameController_collecteddata_stageMt_mistakemade = 0 ;
}

//get game data methodology
function GameController_fun_GetGameDataMethodology()
{
	return GameController_gamedata_method ;
}

//get game data methodology as string
function GameController_fun_GetGameDataMethodologyAsString()
{
	var _string = "" ;
	
	switch(GameController_gamedata_method)
	{
		case ENUM_METHOD.waterfall:
			_string = "waterfall" ;
			break ;
		
		case ENUM_METHOD.agile:
			_string = "agile" ;
			break ;
		
		default:
			_string = "none" ;
	}
	
	return _string ;
}

//setting game data at menu
function GameController_fun_SetGameData(_method)
{
	GameController_gamedata_stage = global.G_savefile_extras_game_start_from_stage ;
	//GameController_gamedata_stage = 7 ; //start stage from this
	GameController_gamedata_method = _method ;
	
	if(_method == ENUM_METHOD.agile)
	{
		GameController_gamedata_projectcompletition = 0 ;
	}
}

//setting game finish status
function GameController_fun_SetGameFinishStatus(_is_won)
{
	GameController_gamedata_gamesuccess = _is_won ;
}

//changing project completition rate
function GameController_fun_ChangeProjectCompletition(_change)
{
	if((_change < 0) and ((GameController_gamedata_projectcompletition+_change) < 0))
	{
		GameController_gamedata_projectcompletition = 0 ;
		return false ;
	}
	
	GameController_gamedata_projectcompletition += _change ;
	return true ;
}

//setting collected data in game
function GameController_fun_SetCollectedData(_stage_id = GameController_gamedata_stage, _data_array)
{
	switch(_stage_id)
	{
		case 0: //project selection
			GameController_collecteddata_stagePS_globaltime = _data_array[0] ;
			GameController_collecteddata_stagePS_globalscore = _data_array[1] ;
			GameController_collecteddata_stagePS_projectname = _data_array[2] ;
			break ;
		
		case 1: //requirement gathering
			if(GameController_collecteddata_stageRA_globaltime == -1)
			{
				GameController_collecteddata_stageRA_globaltime = 0 ;
			}
			GameController_collecteddata_stageRA_globaltime += _data_array[0] ;
			GameController_collecteddata_stageRA_globalscore += _data_array[1] ;
			GameController_collecteddata_stageRA_reqcollected += _data_array[2] ;
			GameController_collecteddata_stageRA_mistakemade += _data_array[3] ;
			break ;
		
		case 2: //requirement analysis
			if(GameController_collecteddata_stageRC_globaltime == -1)
			{
				GameController_collecteddata_stageRC_globaltime = 0 ;
			}
			GameController_collecteddata_stageRC_globaltime += _data_array[0] ;
			GameController_collecteddata_stageRC_globalscore += _data_array[1] ;
			GameController_collecteddata_stageRC_reqcount += _data_array[2] ;
			GameController_collecteddata_stageRC_mistakemade += _data_array[3] ;
			break ;
		
		case 3: //design
			if(GameController_collecteddata_stageDs_globaltime == -1)
			{
				GameController_collecteddata_stageDs_globaltime = 0 ;
			}
			GameController_collecteddata_stageDs_globaltime += _data_array[0] ;
			GameController_collecteddata_stageDs_globalscore += _data_array[1] ;
			GameController_collecteddata_stageDs_questioncount += _data_array[2] ;
			GameController_collecteddata_stageDs_mistakemade += _data_array[3] ;
			break ;
		
		case 4: //development
			if(GameController_collecteddata_stageD_globaltime == -1)
			{
				GameController_collecteddata_stageD_globaltime = 0 ;
			}
			GameController_collecteddata_stageD_globaltime += _data_array[0] ;
			GameController_collecteddata_stageD_globalscore += _data_array[1] ;
			break ;
		
		case 5: //testing
			if(GameController_collecteddata_stageT_globaltime == -1)
			{
				GameController_collecteddata_stageT_globaltime = 0 ;
			}
			GameController_collecteddata_stageT_globaltime += _data_array[0] ;
			GameController_collecteddata_stageT_globalscore += _data_array[1] ;
			GameController_collecteddata_stageT_mistakemade += _data_array[2] ;
			break ;
		
		case 6: //deployment
			if(GameController_collecteddata_stageDp_globaltime == -1)
			{
				GameController_collecteddata_stageDp_globaltime = 0 ;
			}
			GameController_collecteddata_stageDp_globaltime += _data_array[0] ;
			GameController_collecteddata_stageDp_globalscore += _data_array[1] ;
			break ;
		
		case 7: //maintenance
			if(GameController_collecteddata_stageMt_globaltime == -1)
			{
				GameController_collecteddata_stageMt_globaltime = 0 ;
			}
			GameController_collecteddata_stageMt_globaltime += _data_array[0] ;
			GameController_collecteddata_stageMt_globalscore += _data_array[1] ;
			GameController_collecteddata_stageMt_mistakemade += _data_array[2] ;
			break ;
		
		default:
	}
}

//update game stage
function GameController_fun_UpdateGameStage(_new_stage_id = noone, _stage_id_change = 1, _change_projectcompletition = true, _mistake_count_for_projectcompletition = 0)
{
	if(_new_stage_id != noone)
	{
		GameController_gamedata_stage = _new_stage_id ;
	}
	else
	{
		GameController_gamedata_stage += _stage_id_change ;
		
		if(GameController_gamedata_method == ENUM_METHOD.agile)
		{
			if(_change_projectcompletition)
			{
				if(_stage_id_change > 0)
				{
					return(GameController_fun_ChangeProjectCompletition((GameController_gamedata_projectcompletition_increase-_mistake_count_for_projectcompletition)*_stage_id_change)) ;
				}
				else if(_stage_id_change < 0)
				{
					return(GameController_fun_ChangeProjectCompletition(-GameController_gamedata_projectcompletition_decrease*abs(_stage_id_change))) ;
				}
			}
		}
	}
	
	return true ;
}

//update subtitle voice
function GameController_fun_UpdateSubtitleVoice(_new_voice = GameController_subtitle_voice_noone, _unique_id = -1)
{
	GameController_subtitle_voice = _new_voice ;
	GameController_subtitle_voice_unique_id = _unique_id ;
	GameController_subtitle_text_index = 0 ;
}

//setting briefing skip indicator
function GameController_fun_SetBriefingSkipIndicator(_do_it, _time_in_frames = GameController_screen_briefingskip_timer_max)
{
	GameController_screen_briefingskip = _do_it ;
	if(_do_it)
	{
		GameController_screen_briefingskip_timer = _time_in_frames ;
	}
}

//save savefiles
function GameController_fun_SaveGame(_file_name)
{
	if(global.G_savefile_getfromsavefiles)
	{
		var _file ;
	
		switch(_file_name)
		{			
			case CONST_SAVEFILE_NAME_OPTIONS:
				#region //OPTIONS
				if(file_exists(_file_name))
				{
					_file = file_text_open_write(_file_name) ;
	
					file_text_write_real(_file, global.G_savefile_sound_effect_level) ;
					file_text_write_string(_file, " = sound effect level") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_sound_music_level) ;
					file_text_write_string(_file, " = sound music level") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_sound_voice_level) ;
					file_text_write_string(_file, " = sound voice level") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_subtitles_language_id) ;
					file_text_write_string(_file, " = subtitles language ID") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_menubook_id) ;
					file_text_write_string(_file, " = extra - menu book ID") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_game_start_from_stage) ;
					file_text_write_string(_file, " = extra - start game from this stage") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_scarymood) ;
					file_text_write_string(_file, " = extra - scarymood") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_catmode) ;
					file_text_write_string(_file, " = extra - cat mode") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_moodlenews) ;
					file_text_write_string(_file, " = extra - moodle news") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_occasionally_vineboom) ;
					file_text_write_string(_file, " = extra - ocasionally vine boom") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_not_made_with_unity) ;
					file_text_write_string(_file, " = extra - not made with unity") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_devdev_language_pack) ;
					file_text_write_string(_file, " = extra - DevDev language pack") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_speedrunner_mode) ;
					file_text_write_string(_file, " = extra - speedrunner mode") ;
					
					file_text_close(_file) ;
				}
				#endregion
				break ;
			
			case CONST_SAVEFILE_NAME_CUTSCENESKIP:
				#region //CUTSCENE SKIPPABILITY
				_file_name = CONST_SAVEFILE_NAME_CUTSCENESKIP_FOLDER + "\\" + string_replace_all(_file_name, "$", GameController_gamedata_player_studentid) ;
				
				if(file_exists(_file_name))
				{
					var _size = array_length(global.G_savefile_cutscene_watched),
						_c ;
				
					_file = file_text_open_write(_file_name) ;
				
					for(_c = 0; _c < _size; _c++)
					{
						file_text_write_real(_file, global.G_savefile_cutscene_watched[_c]) ;
						file_text_write_string(_file, " = cutscene is skippable with ID " + string(_c)) ;
						file_text_writeln(_file) ;
					}
				
					file_text_close(_file) ;
				}
				#endregion
				break ;
			
			case CONST_SAVEFILE_NAME_CUTSCENESKIP_LOCAL:
				#region //CUTSCENE SKIPPABILITY (LOCAL)
				_file_name = CONST_SAVEFILE_NAME_CUTSCENESKIP_FOLDER + "\\" + _file_name ;
				
				if(file_exists(_file_name))
				{
					var _size = array_length(global.G_savefile_cutscene_watched_local),
						_c ;
				
					_file = file_text_open_write(_file_name) ;
				
					for(_c = 0; _c < _size; _c++)
					{
						file_text_write_real(_file, global.G_savefile_cutscene_watched_local[_c]) ;
						file_text_write_string(_file, " = cutscene is skippable with ID " + string(_c)) ;
						file_text_writeln(_file) ;
					}
		
					file_text_close(_file) ;
				}
				#endregion
				break ;
		
			default:
		}
	}
}

//read savefiles
function GameController_fun_ReadSaveFile(_file_name)
{
	if(global.G_savefile_getfromsavefiles)
	{
		var _file ;
		
		switch(_file_name)
		{		
			case CONST_SAVEFILE_NAME_OPTIONS:
				#region //OPTIONS
				if(file_exists(_file_name))
				{
					_file = file_text_open_read(_file_name) ;
	
					global.G_savefile_sound_effect_level = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_sound_music_level = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_sound_voice_level = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_subtitles_language_id = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_extras_menubook_id = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_extras_game_start_from_stage = file_text_read_real(_file) ;
					
					if(global.G_home_edition_active)
					{
						global.G_savefile_extras_game_start_from_stage = 0 ;
					}
					
					file_text_readln(_file) ;
					global.G_savefile_extras_scarymood = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_extras_catmode = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_extras_moodlenews = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_extras_occasionally_vineboom = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_extras_not_made_with_unity = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_extras_devdev_language_pack = file_text_read_real(_file) ;
					file_text_readln(_file) ;
					global.G_savefile_extras_speedrunner_mode = file_text_read_real(_file) ;
					
					file_text_close(_file) ;
				}
				else
				{
					_file = file_text_open_write(_file_name) ;
					
					file_text_write_real(_file, global.G_savefile_sound_effect_level) ;
					file_text_write_string(_file, " = sound effect level") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_sound_music_level) ;
					file_text_write_string(_file, " = sound music level") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_sound_voice_level) ;
					file_text_write_string(_file, " = sound voice level") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_subtitles_language_id) ;
					file_text_write_string(_file, " = subtitles language ID") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_menubook_id) ;
					file_text_write_string(_file, " = extra - menu book ID") ;
					
					if(global.G_home_edition_active)
					{
						global.G_savefile_extras_game_start_from_stage = 0 ;
					}
					
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_game_start_from_stage) ;
					file_text_write_string(_file, " = extra - start game from this stage") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_scarymood) ;
					file_text_write_string(_file, " = extra - scarymood") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_catmode) ;
					file_text_write_string(_file, " = extra - cat mode") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_moodlenews) ;
					file_text_write_string(_file, " = extra - moodle news") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_occasionally_vineboom) ;
					file_text_write_string(_file, " = extra - ocasionally vine boom") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_not_made_with_unity) ;
					file_text_write_string(_file, " = extra - not made with unity") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_devdev_language_pack) ;
					file_text_write_string(_file, " = extra - DevDev language pack") ;
					file_text_writeln(_file) ;
					file_text_write_real(_file, global.G_savefile_extras_speedrunner_mode) ;
					file_text_write_string(_file, " = extra - speedrunner mode") ;
					
					file_text_close(_file) ;
				}
				#endregion
				break ;
			
			case CONST_SAVEFILE_NAME_CUTSCENESKIP:
				#region //CUTSCENE SKIPPABILITY
				_file_name = CONST_SAVEFILE_NAME_CUTSCENESKIP_FOLDER + "\\" + string_replace_all(_file_name, "$", GameController_gamedata_player_studentid) ;
				
				var _size = array_length(global.G_savefile_cutscene_watched),
					_c ;
				
				if(file_exists(_file_name))
				{
					_file = file_text_open_read(_file_name) ;
					
					for(_c = 0; _c < _size; _c++)
					{
						global.G_savefile_cutscene_watched[_c] = file_text_read_real(_file) ;
						file_text_readln(_file) ;
					}
		
					file_text_close(_file) ;
				}
				else
				{
					_file = file_text_open_write(_file_name) ;
					
					for(_c = 0; _c < _size; _c++)
					{
						file_text_write_real(_file, global.G_savefile_cutscene_watched[_c]) ;
						file_text_write_string(_file, " = cutscene is skippable with ID " + string(_c)) ;
						file_text_writeln(_file) ;
					}
		
					file_text_close(_file) ;
				}
				#endregion
				break ;
			
			case CONST_SAVEFILE_NAME_CUTSCENESKIP_LOCAL:
				#region //CUTSCENE SKIPPABILITY (LOCAL)
				_file_name = CONST_SAVEFILE_NAME_CUTSCENESKIP_FOLDER + "\\" + _file_name ;
				
				var _size = array_length(global.G_savefile_cutscene_watched_local),
					_c ;
				
				if(file_exists(_file_name))
				{
					_file = file_text_open_read(_file_name) ;
					
					for(_c = 0; _c < _size; _c++)
					{
						global.G_savefile_cutscene_watched_local[_c] = file_text_read_real(_file) ;
						file_text_readln(_file) ;
					}
		
					file_text_close(_file) ;
				}
				else
				{
					_file = file_text_open_write(_file_name) ;
					
					for(_c = 0; _c < _size; _c++)
					{
						file_text_write_real(_file, global.G_savefile_cutscene_watched_local[_c]) ;
						file_text_write_string(_file, " = cutscene is skippable with ID " + string(_c)) ;
						file_text_writeln(_file) ;
					}
		
					file_text_close(_file) ;
				}
				#endregion
				break ;
		
			default:
		}
	}
}

//delete savefiles
function GameController_fun_DeleteSaveFile(_file_name)
{
	if(file_exists(_file_name))
	{
		file_delete(_file_name) ;
	}
	else if(directory_exists(_file_name))
	{
		directory_destroy(_file_name) ;
	}
}

//setting cutscene watched status
function GameController_fun_SetCutsceneWatched(_cutscene_id, _is_watched)
{
	if(global.G_includedfile_network_active)
	{
		if(global.G_savefile_cutscene_watched[_cutscene_id] != _is_watched)
		{
			global.G_savefile_cutscene_watched[_cutscene_id] = _is_watched ;
		}
	}
	
	if(global.G_savefile_cutscene_watched_local[_cutscene_id] != _is_watched)
	{
		global.G_savefile_cutscene_watched_local[_cutscene_id] = _is_watched ;
	}
}

//randomizing book id
function GameController_fun_RandomizeBookID()
{
	var _dummy_array = array_create(0),
		_c = 0 ;
	
	for(; _c < global.G_savefile_extras_menubook_id_count; _c++)
	{
		if(_c != global.G_savefile_extras_menubook_id)
		{
			array_push(_dummy_array, _c) ;
		}
	}
	
	global.G_savefile_extras_menubook_id = scRandFromArray(_dummy_array) ;
}

//starting request timers
function GameController_fun_StartRequestTimers()
{
	GameController_scoreboard_dataget_timer_active = true ;
	GameController_loggedinstatus_dataget_timer_active = true ;
}

//stopping reqeust timers
function GameController_fun_StopRequestTimers()
{
	GameController_scoreboard_dataget_timer_active = false ;
	GameController_scoreboard_dataget_timer_hold = false ;
	GameController_scoreboard_dataget_timer = GameController_scoreboard_dataget_timer_max ;
	GameController_loggedinstatus_dataget_timer_active = false ;
	GameController_loggedinstatus_dataget_timer_hold = false ;
	GameController_loggedinstatus_dataget_timer = floor(GameController_loggedinstatus_dataget_timer/2) ;
}

//resetting scoreboard data
function GameController_fun_ResetScoreboardData()
{
	GameController_scoreboard_playercount = -1 ;
	GameController_scoreboard_showcount = 0 ;
	GameController_scoreboard_thisuserisextra = false ;
	GameController_scoreboard_thisuserisextra_placement = -1 ;
	GameController_scoreboard_studentid = array_create(GameController_scoreboard_showcount+1, "") ;
	GameController_scoreboard_howitended = array_create(GameController_scoreboard_showcount+1, 0) ;
	GameController_scoreboard_runid = array_create(GameController_scoreboard_showcount+1, 0) ;
	GameController_scoreboard_stage = array_create(GameController_scoreboard_showcount+1, "") ;
	GameController_scoreboard_score = array_create(GameController_scoreboard_showcount+1, 0) ;
}

//setting scoreboard data
function GameController_fun_SetScoreboardData(_data)
{
	//starting request timer once again
	GameController_scoreboard_dataget_timer_hold = false ;
	
	//getting ds_map
	var _GameController_scoreboard_dataget_map = _data ;
	
	//checking if it is a ds_map or not, and if so, if it is filled or not
	if(ds_exists(_GameController_scoreboard_dataget_map, ds_type_map))
	{
		if(!ds_map_empty(_GameController_scoreboard_dataget_map))
		{
			//local variables
			var _k, _v, _c = 0,
				_array0 = array_create(1),
				_array1 = array_create(1),
				_struct,
				_dummy ;

			//resetting variables
			GameController_scoreboard_playercount = ds_map_size(_GameController_scoreboard_dataget_map) ;
			GameController_scoreboard_showcount = min(GameController_scoreboard_showcount_absolute, GameController_scoreboard_playercount) ;
			GameController_scoreboard_thisuserisextra = false ;

			//writing keys and values on different arrays
			for(_k = ds_map_find_first(_GameController_scoreboard_dataget_map); !is_undefined(_k); _k = ds_map_find_next(_GameController_scoreboard_dataget_map, _k))
			{
				_v = _GameController_scoreboard_dataget_map[? _k] ;
	
				_array0[_c] = _k ;
				
				if(global.G_home_edition_active)
				{
					_array1[_c] = _v[? "high_score"] ;
				}
				else
				{
					_array1[_c] = _v[? "score"] ;
				}
				
				_c++ ;
			}

			//sorting arrays together according to score values
			_struct = scArraySortingMergeSort(_array1, 0, array_length(_array1)-1, _array0) ;
			_array0 = array_reverse(_struct.array1) ;

			//setting students information of shown part
			for(_c = 0; _c < GameController_scoreboard_showcount; _c++)
			{
				GameController_scoreboard_studentid[_c] = _array0[_c] ;
				
				if(global.G_home_edition_active)
				{
					GameController_scoreboard_score[_c] = _GameController_scoreboard_dataget_map[? _array0[_c]][? "high_score"] ;
					GameController_scoreboard_runid[_c] = _GameController_scoreboard_dataget_map[? _array0[_c]][? "run_id"]+1 ;
				}
				else
				{
					GameController_scoreboard_howitended[_c] = _GameController_scoreboard_dataget_map[? _array0[_c]][? "status"]+2 ;
					GameController_scoreboard_score[_c] = _GameController_scoreboard_dataget_map[? _array0[_c]][? "score"] ;
					GameController_scoreboard_stage[_c] = GameController_fun_ConvertStageIDToName(_GameController_scoreboard_dataget_map[? _array0[_c]][? "stage_id"]) ;
					GameController_scoreboard_runid[_c] = _GameController_scoreboard_dataget_map[? _array0[_c]][? "run_id"]+1 ;
				}
			}
		
			//getting player's placement
			GameController_scoreboard_thisuserisextra_placement = array_get_index(_array0, GameController_gamedata_player_studentid) ;
		
			//checking if player is in the shown part
			if(GameController_scoreboard_playercount > GameController_scoreboard_showcount)
			{
				if(GameController_scoreboard_showcount <= GameController_scoreboard_thisuserisextra_placement)
				{
					GameController_scoreboard_thisuserisextra = true ;
					GameController_scoreboard_studentid[GameController_scoreboard_showcount] = _array0[GameController_scoreboard_thisuserisextra_placement] + " - You" ;
					
					if(global.G_home_edition_active)
					{
						GameController_scoreboard_score[GameController_scoreboard_showcount] = _GameController_scoreboard_dataget_map[? _array0[GameController_scoreboard_thisuserisextra_placement]][? "high_score"] ;
						GameController_scoreboard_runid[GameController_scoreboard_showcount] = _GameController_scoreboard_dataget_map[? _array0[GameController_scoreboard_thisuserisextra_placement]][? "run_id"]+1 ;
					}
					else
					{
						GameController_scoreboard_howitended[GameController_scoreboard_showcount] = _GameController_scoreboard_dataget_map[? _array0[GameController_scoreboard_thisuserisextra_placement]][? "status"]+2 ;
						GameController_scoreboard_score[GameController_scoreboard_showcount] = _GameController_scoreboard_dataget_map[? _array0[GameController_scoreboard_thisuserisextra_placement]][? "score"] ;
						GameController_scoreboard_stage[GameController_scoreboard_showcount] = GameController_fun_ConvertStageIDToName(_GameController_scoreboard_dataget_map[? _array0[GameController_scoreboard_thisuserisextra_placement]][? "stage_id"]) ;
						GameController_scoreboard_runid[GameController_scoreboard_showcount] = _GameController_scoreboard_dataget_map[? _array0[GameController_scoreboard_thisuserisextra_placement]][? "run_id"]+1 ;
					}
				}
				else //adding "you" to student id for this player
				{
					GameController_scoreboard_studentid[GameController_scoreboard_thisuserisextra_placement] += " - You" ;
				}
			}
			else //adding "you" to student id for this player
			{
				GameController_scoreboard_studentid[GameController_scoreboard_thisuserisextra_placement] += " - You" ;
			}
			
			//destorying inner ds_maps
			for(_k = ds_map_find_first(_GameController_scoreboard_dataget_map); !is_undefined(_k); _k = ds_map_find_next(_GameController_scoreboard_dataget_map, _k))
			{
				_v = _GameController_scoreboard_dataget_map[? _k] ;
				ds_map_destroy(_v) ;
			}
		}
		else
		{
			GameController_fun_ResetScoreboardData() ;
		}
		
		//destroying ds_map
		ds_map_destroy(_GameController_scoreboard_dataget_map) ;
	}
	else
	{
		GameController_fun_ResetScoreboardData() ;
	}
}

//converting stage id to a name
function GameController_fun_ConvertStageIDToName(_stage_id)
{
	var _name ;
	
	switch(_stage_id)
	{
		case 0:
			_name = "Project Selection" ;
			break ;
					
		case 1:
			_name = "Req. Gathering" ;
			break ;
					
		case 2:
			_name = "Req. Analysis" ;
			break ;
					
		case 3:
			_name = "Design" ;
			break ;
					
		case 4:
			_name = "Development" ;
			break ;
					
		case 5:
			_name = "Testing" ;
			break ;
					
		case 6:
			_name = "Deployment" ;
			break ;
					
		case 7:
			_name = "Maintenance" ;
			break ;
					
		default:
			_name = "---" ;
	}
	
	return _name ;
}

//force log out
function GameController_fun_ForceLogOut(_do_it)
{
	GameController_loggedinstatus_dataget_timer_hold = false ;
	
	if(_do_it)
	{
		GameController_loggedinstatus_dataget_forcedlogout_activated = true ;
		//GameController_fun_SendLogOutRequest(-2) ;
		
		scSendErrorMessageAndFrozeGame("You have been KICKED from the game by admin.", "Please inform the admin if this was a mistake.", "Yönetici tarafından oyundan ATILDINIZ.", "Eğer bu bir hataysa yöneticiyi bilgilendiriniz.") ;
		game_restart() ;
	}
}

//log out request after request objects
function GameController_fun_SendLogOutRequestAfterRequestObjects(_won_status)
{
	GameController_network_waitforrequestobjects_forlogout = true ;
	GameController_network_waitforrequestobjects_forlogout_wonstatus = _won_status ;
}

//log out request
function GameController_fun_SendLogOutRequest(_won_status)
{
	if((GameController_gamedata_player_studentid != "") and (GameController_gamedata_player_identifier_token != ""))
	{
		var _map = ds_map_create(),
			_data = {
				"student_id": GameController_gamedata_player_studentid,
				"identifier_token": GameController_gamedata_player_identifier_token,
				"won_status": _won_status
				} ;
			
		ds_map_add(_map, "Content-Type", "application/json") ;
		http_request(global.G_includedfile_network_ip_port+"/student_logged_out", "POST", _map, json_stringify(_data)) ;
		ds_map_destroy(_map) ;
		
		GameController_fun_SaveGame(CONST_SAVEFILE_NAME_CUTSCENESKIP) ;
		
		show_message("You have been logged out.") ;
	}
}

#region ||SAVE FILES OPERATIONS||
//Reading Save Files
if(global.G_savefile_getfromsavefiles)
{
	//options
	GameController_fun_ReadSaveFile(CONST_SAVEFILE_NAME_OPTIONS) ;
	
	//cutscene skippability (local)
	GameController_fun_ReadSaveFile(CONST_SAVEFILE_NAME_CUTSCENESKIP_LOCAL) ;
	
	//extra operations
	if(global.G_savefile_extras_scarymood)
	{
		scScreenLight(true) ;
	}
	if(global.G_savefile_extras_occasionally_vineboom)
	{
		instance_create_depth(0, 0, -100, oExtraVineBoom) ;
	}
	if(global.G_savefile_extras_devdev_language_pack)
	{
		global.G_savefile_subtitles_language_id_max++ ;
	}
	if(global.G_savefile_extras_speedrunner_mode)
	{
		GameController_debug_speedrunner_active = true ;
	}
}
//Mapping Every Subtitle
event_user(0) ;
#endregion