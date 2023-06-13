//METHODOLOGY
StageControllerRA_method = CONST_OBJ_GAMECONTROLLER.GameController_fun_GetGameDataMethodology() ;
switch(StageControllerRA_method)
{
	case ENUM_METHOD.waterfall:
		StageControllerRA_method = ENUM_METHOD.waterfall ;
		break ;
	
	case ENUM_METHOD.agile:
		StageControllerRA_method = ENUM_METHOD.agile ;
		break ;
}

//STORY FLOW VARIABLES
StageControllerRA_storyflow_id = -1 ;
StageControllerRA_storyflow_timer = array_create(1) ;
StageControllerRA_storyflow_timer[0] = 60 ;
StageControllerRA_storyflow_timer[1] = 3*60 ;
StageControllerRA_storyflow_timer[2] = 1.5*60 ;
StageControllerRA_storyflow_timer[3] = 1.5*60 ;
StageControllerRA_storyflow_timer[4] = 1.5*60 ;
StageControllerRA_storyflow_timer[5] = 1.5*60 ;
StageControllerRA_storyflow_timer[6] = 1.5*60 ;
StageControllerRA_storyflow_timer[7] = 1.5*60 ;
StageControllerRA_storyflow_timer[8] = 1.5*60 ;
StageControllerRA_storyflow_timer[9] = 1.5*60 ;
StageControllerRA_storyflow_timer[10] = 1.5*60 ;
StageControllerRA_storyflow_timer[11] = 1.5*60 ;
StageControllerRA_storyflow_timer[12] = 1.5*60 ;
StageControllerRA_storyflow_music = array_create(1) ;
StageControllerRA_storyflow_music[0] = snStageRAMusic0 ;
StageControllerRA_storyflow_narratorvoice = array_create(1) ;
StageControllerRA_storyflow_narratorvoice[0] = snStageRANarrator0 ;
StageControllerRA_storyflow_narratorvoice[1] = snStageRANarrator1 ;
StageControllerRA_storyflow_narratorvoice[2] = snStageRANarrator2 ;
StageControllerRA_storyflow_narratorvoice[3] = snStageRANarrator3 ;
StageControllerRA_storyflow_narratorvoice[4] = snStageRANarrator4 ;
StageControllerRA_storyflow_narratorvoice[5] = snStageRANarrator5 ;
StageControllerRA_storyflow_narratorvoice[6] = snStageRANarrator6 ;
StageControllerRA_storyflow_narratorvoice[7] = snStageRANarrator7 ;
StageControllerRA_storyflow_narratorvoice[8] = snStageRANarrator8 ;
StageControllerRA_storyflow_narratorvoice[9] = snStageRANarrator9 ;
StageControllerRA_storyflow_narratorvoice[10] = snStageRANarrator10 ;
StageControllerRA_storyflow_narratorvoice[11] = snStageRANarrator11 ;
StageControllerRA_storyflow_narratorvoice[12] = snStageRANarrator12 ;
StageControllerRA_storyflow_narratorvoice[13] = snStageRANarrator13 ;
StageControllerRA_storyflow_tutorial_button = array_create(1) ;
StageControllerRA_storyflow_tutorial_button[0] = oStageRAButtonTutorialContinue ;
StageControllerRA_storyflow_tutorial_button[1] = oStageRAButtonTutorialTeach ;
StageControllerRA_storyflow_tutorial_whatisreq_do = false ;
StageControllerRA_storyflow_narratorvoice_endgame_playing = noone ;
StageControllerRA_storyflow_narratorvoice_endgame = array_create(1) ;
StageControllerRA_storyflow_narratorvoice_endgame[0] = snStageRANarrator14EndgameWin ;
StageControllerRA_storyflow_narratorvoice_endgame[1] = snStageRANarrator15EndgameLoseByReq ;
StageControllerRA_storyflow_narratorvoice_endgame[2] = snStageRANarrator16EndgameLoseByMoscow ;
StageControllerRA_storyflow_narratorvoice_endgame[3] = snStageRANarrator17EndgameLoseByMistake ;

//STORY FLOW DRAWINGS VARIABLES
//stage title
StageControllerRA_storyflowdrawing_d0_draw = false ;
StageControllerRA_storyflowdrawing_d0_draw_end = false ;
StageControllerRA_storyflowdrawing_d0_sprite = sStageRATitleText ;
StageControllerRA_storyflowdrawing_d0_sprite_size = 1 ;
StageControllerRA_storyflowdrawing_d0_sprite_y = CONST_GUI_H/8 ;
StageControllerRA_storyflowdrawing_d0_sprite_x_start = -CONST_GUI_W/4 ;
StageControllerRA_storyflowdrawing_d0_sprite_x_end = CONST_GUI_W/4 ;
StageControllerRA_storyflowdrawing_d0_sprite_x = StageControllerRA_storyflowdrawing_d0_sprite_x_start ;
StageControllerRA_storyflowdrawing_d0_sprite_x_speed_divider = 20 ;
StageControllerRA_storyflowdrawing_d0_sprite_x_tolerance = 1 ;
//what is a req tutorial
StageControllerRA_storyflowdrawing_d1_draw = false ;
StageControllerRA_storyflowdrawing_d1_draw_end = false ;
StageControllerRA_storyflowdrawing_d1_sprite = sStageRATutorial ;
StageControllerRA_storyflowdrawing_d1_sprite_frame = 0 ;
StageControllerRA_storyflowdrawing_d1_sprite_size = 0 ;
StageControllerRA_storyflowdrawing_d1_sprite_size_max = 2 ;
StageControllerRA_storyflowdrawing_d1_sprite_size_speed_divider = 20 ;
StageControllerRA_storyflowdrawing_d1_sprite_size_tolerance = 0.02 ;
StageControllerRA_storyflowdrawing_d1_sprite_x = CONST_GUI_W/2 ;
StageControllerRA_storyflowdrawing_d1_sprite_y = CONST_GUI_H/2 ;

//GAMEPLAY VARIABLES
StageControllerRA_gameplay_globaltime = 0 ;
StageControllerRA_gameplay_globalscore = 1000 ;
StageControllerRA_gameplay_globalscore_period_max = 30 ;
StageControllerRA_gameplay_globalscore_period = StageControllerRA_gameplay_globalscore_period_max ;
StageControllerRA_gameplay_globalscore_increase_correct = 100 ;
StageControllerRA_gameplay_globalscore_decrease_mistake = 50 ;
StageControllerRA_gameplay_started = false ;
StageControllerRA_gameplay_id = 0 ;
StageControllerRA_gameplay_end_available = false ;
StageControllerRA_gameplay_end_result_id = -1 ; //0: won, 1: lose with mistake, 2: lose with insufficent requirement (any type), 3: lose with insufficent moscow (any type)
StageControllerRA_gameplay_cursor_sprite = array_create(2) ;
StageControllerRA_gameplay_cursor_sprite[0] = sCursorStageRA0 ;
StageControllerRA_gameplay_cursor_sprite[1] = sCursorStageRA1 ;
StageControllerRA_gameplay_timer_draw = true ;
StageControllerRA_gameplay_timer_active = true ;
StageControllerRA_gameplay_timer_sprite = sStageRAWallClockNeedle ;
StageControllerRA_gameplay_timer_sprite_x = 212 ;
StageControllerRA_gameplay_timer_sprite_y = 101 ;
StageControllerRA_gameplay_timer_countdown_max = 0 ; //will be decided after deciding needed reqs
StageControllerRA_gameplay_timer_countdown = 0 ; //will be decided after deciding needed reqs
StageControllerRA_gameplay_timer_secperneeded = 25 ;
StageControllerRA_gameplay_collected_indicator_mistake_draw = true ;
StageControllerRA_gameplay_collected_indicator_numbers_draw = true ;
StageControllerRA_gameplay_collected_indicator_mininumbers_draw = true ;
StageControllerRA_gameplay_collected_indicator_mistake = sStageRAMistakeMarker ;
StageControllerRA_gameplay_collected_indicator_mistake_x = 202 ;
StageControllerRA_gameplay_collected_indicator_mistake_y = 290 ;
StageControllerRA_gameplay_collected_indicator_mistake_xy = 27 ;
StageControllerRA_gameplay_collected_indicator_numbers = sStageRABigNumbers ;
StageControllerRA_gameplay_collected_indicator_numbers_count = 5 ;
StageControllerRA_gameplay_collected_indicator_numbers_x = array_create(StageControllerRA_gameplay_collected_indicator_numbers_count) ;
StageControllerRA_gameplay_collected_indicator_numbers_x[0] = 517 ;
StageControllerRA_gameplay_collected_indicator_numbers_x[1] = 517 ;
StageControllerRA_gameplay_collected_indicator_numbers_x[2] = 517 ;
StageControllerRA_gameplay_collected_indicator_numbers_x[3] = 517 ;
StageControllerRA_gameplay_collected_indicator_numbers_x[4] = 517 ;
StageControllerRA_gameplay_collected_indicator_numbers_y = array_create(StageControllerRA_gameplay_collected_indicator_numbers_count) ;
StageControllerRA_gameplay_collected_indicator_numbers_y[0] = 190 ;
StageControllerRA_gameplay_collected_indicator_numbers_y[1] = 225 ;
StageControllerRA_gameplay_collected_indicator_numbers_y[2] = 260 ;
StageControllerRA_gameplay_collected_indicator_numbers_y[3] = 299 ;
StageControllerRA_gameplay_collected_indicator_numbers_y[4] = 334 ;
StageControllerRA_gameplay_collected_indicator_mininumbers = sStageRASmallNumbers ;
StageControllerRA_gameplay_collected_indicator_mininumbers_xx = 14 ;
StageControllerRA_gameplay_collected_indicator_mininumbers_yy = 10 ;
StageControllerRA_gameplay_collected_counter_mistake = 0 ;
StageControllerRA_gameplay_collected_counter_fun = 0 ;
StageControllerRA_gameplay_collected_counter_nonfun = 0 ;
StageControllerRA_gameplay_collected_counter_musthave = 0 ;
StageControllerRA_gameplay_collected_counter_shouldhave = 0 ;
StageControllerRA_gameplay_collected_counter_couldhave = 0 ;
StageControllerRA_gameplay_needed_count_mistake = 5 ;
StageControllerRA_gameplay_needed_count_fun = irandom_range(3, 7) ;
StageControllerRA_gameplay_needed_count_nonfun = 10-StageControllerRA_gameplay_needed_count_fun ;
StageControllerRA_gameplay_needed_count_musthave = 0 ;
StageControllerRA_gameplay_needed_count_shouldhave = 0 ;
StageControllerRA_gameplay_needed_count_couldhave = 0 ;
StageControllerRA_gameplay_timer_countdown_max = ceil((StageControllerRA_gameplay_needed_count_fun+StageControllerRA_gameplay_needed_count_nonfun)*StageControllerRA_gameplay_timer_secperneeded)*60 ; //deciding time according to decided needed reqs
StageControllerRA_gameplay_timer_countdown = StageControllerRA_gameplay_timer_countdown_max ; //deciding time according to decided needed reqs
StageControllerRA_gameplay_trapdoor_draw = true ;
StageControllerRA_gameplay_trapdoor_sprite = sStageRATrapDoor ;
StageControllerRA_gameplay_trapdoor_sprite_frame = 0 ;
StageControllerRA_gameplay_trapdoor_x = 85 ;
StageControllerRA_gameplay_trapdoor_y = CONST_GUI_H ;
StageControllerRA_gameplay_trapdoor_cooldown_max = 30 ;
StageControllerRA_gameplay_trapdoor_cooldown = 0 ;
StageControllerRA_gameplay_reqtext_draw = true ;
StageControllerRA_gameplay_reqtext_draw_end = false ;
StageControllerRA_gameplay_reqtext_draw_general_alpha_speed = 0.05 ;
StageControllerRA_gameplay_reqtext_draw_textbox_x0 = 400 ; //for triangle
StageControllerRA_gameplay_reqtext_draw_textbox_y0 = 200 ; //for triangle
StageControllerRA_gameplay_reqtext_draw_textbox_x1 = 600 ;
StageControllerRA_gameplay_reqtext_draw_textbox_y1 = 50 ;
StageControllerRA_gameplay_reqtext_draw_textbox_x2 = 1200 ;
StageControllerRA_gameplay_reqtext_draw_textbox_y2 = 250 ;
StageControllerRA_gameplay_reqtext_draw_textbox_border_sprite = sStageRATextboxBorder ;
StageControllerRA_gameplay_reqtext_draw_textbox_border_xy = 6 ;
StageControllerRA_gameplay_reqtext_draw_textbox_alpha = 0 ;
StageControllerRA_gameplay_reqtext_draw_text_x = 616 ;
StageControllerRA_gameplay_reqtext_draw_text_y = 60 ;
StageControllerRA_gameplay_reqtext_draw_text_alpha = 0 ;
StageControllerRA_gameplay_reqtext_draw_text_sep = 24 ;
StageControllerRA_gameplay_reqtext_draw_text_w = 568 ;
StageControllerRA_gameplay_reqtext_draw_owner_x = 616 ;
StageControllerRA_gameplay_reqtext_draw_owner_y = 245 ;
StageControllerRA_gameplay_reqtext_draw_buttons_sprite = sStageRAButtonRequirement ;
StageControllerRA_gameplay_reqtext_draw_buttons_sprite_w = sprite_get_width(StageControllerRA_gameplay_reqtext_draw_buttons_sprite) ;
StageControllerRA_gameplay_reqtext_draw_buttons_sprite_h = sprite_get_height(StageControllerRA_gameplay_reqtext_draw_buttons_sprite) ;
StageControllerRA_gameplay_reqtext_draw_buttons_deny_x = 1195-StageControllerRA_gameplay_reqtext_draw_buttons_sprite_w ;
StageControllerRA_gameplay_reqtext_draw_buttons_deny_y = 245 ;
StageControllerRA_gameplay_reqtext_draw_buttons_accept_x = StageControllerRA_gameplay_reqtext_draw_buttons_deny_x-10-StageControllerRA_gameplay_reqtext_draw_buttons_sprite_w ;
StageControllerRA_gameplay_reqtext_draw_buttons_accept_y = 245 ;
StageControllerRA_gameplay_reqtext_current = noone ;
StageControllerRA_gameplay_reqtext_funreq_last = -1 ;
StageControllerRA_gameplay_reqtext_funreq = array_create(1) ;
StageControllerRA_gameplay_reqtext_funreq[0] = "Things are getting crazy! You won't believe your eyes! I will show you, so, _ upload my newborn's picture into your system!" ;
StageControllerRA_gameplay_reqtext_funreq[1] = "Well, listen... _ get a sales report from the system every day before my wife goes to bed." ;
StageControllerRA_gameplay_reqtext_funreq[2] = "My son missed school once again... _ be able to update the timetables when my son misses school." ;
StageControllerRA_gameplay_reqtext_funreq[3] = "Our company burned down yesterday! _ be able to save the software's status in case of a fire." ;
StageControllerRA_gameplay_reqtext_funreq[4] = "I love you and I have OCD, so _ get a system report on my phone." ;
StageControllerRA_gameplay_reqtext_funreq[5] = "_ use this system to control the lights at my house, so I can scare my husband." ;
StageControllerRA_gameplay_reqtext_funreq[6] = "When I get bored, _ be able to play some games on the system." ;
StageControllerRA_gameplay_reqtext_funreq[7] = "I'm really hungry all the time, _ use this system to order some food!" ;
StageControllerRA_gameplay_reqtext_funreq[8] = "Do you like Eminmen? I really like Eminmen, so _ be able to use this program to listen to music." ;
StageControllerRA_gameplay_reqtext_funreq[9] = "I let my kids play with this system every morning, but I'm afraid they see some inappropriate words in there! _ give them a system that can censor those words." ;
StageControllerRA_gameplay_reqtext_funreq[10] = "Come on now, my phone has broken because of your service! _ be able to call a repair service with your service. This can solve all of my problems." ;
StageControllerRA_gameplay_reqtext_funreq[11] = "Tolga spilled his coffee again. _ be able to call a celaning service with your service. Because this is the fourth time this week." ;
StageControllerRA_gameplay_reqtext_funreq[12] = "I lost my wife to a software accident. _ be able to upload her old pictures to your system. I will remember her forever." ;
StageControllerRA_gameplay_reqtext_funreq[13] = "You know, I am a crazy dude. I do things differently. So, _ order some extreme tools with your system." ;
StageControllerRA_gameplay_reqtext_funreq[14] = "Oh no... Oh god... You have to help me! I just got stabbed by somebody here! _ be able to call an ambulance using your software. It can be useful later." ;
StageControllerRA_gameplay_reqtext_funreq[15] = "I couldn't sleep last night! My bed is not good enough. _ order beds using your service. I hope you understand." ;
StageControllerRA_gameplay_reqtext_funreq[16] = "Did you see what Kanye East said? Because I don't know and this makes me nervous. _ be able to watch funny videos with your system. Yeah, this is the solution." ;
StageControllerRA_gameplay_reqtext_funreq[17] = "Do you know Dave? We like Dave. He's a really short guy, but that doesn't matter. _ be able to make calls with your service." ;
StageControllerRA_gameplay_reqtext_funreq[18] = "Please don't send me down there, I have a family and 2 cats. Anyway, _ upload my family videos to your system. I have lots of videos." ;
StageControllerRA_gameplay_reqtext_funreq[19] = "This is crazy! Listen, listen! Have you seen the guy who stabbed someone? _ be able to access criminal activities with your system." ;
StageControllerRA_gameplay_reqtext_funreq[20] = "Where is Arif? I saw him a minute ago, but then he disappeared! _ be able to access to the GPS with your software." ;
StageControllerRA_gameplay_reqtext_nonfunreq_last = -1 ;
StageControllerRA_gameplay_reqtext_nonfunreq = array_create(1) ;
StageControllerRA_gameplay_reqtext_nonfunreq[0] = "I'm a busy guy, so, _ use your service even while having a shower at 11pm." ;
StageControllerRA_gameplay_reqtext_nonfunreq[1] = "I had a little accident at the bathroom. _ be able to access the system from home." ;
StageControllerRA_gameplay_reqtext_nonfunreq[2] = "How are you? Anyway, _ have a fast working system. Like, REALLY fast." ;
StageControllerRA_gameplay_reqtext_nonfunreq[3] = "I have a very old computer but I want to use this system for some reason, so _ be able to run this on Windows 96." ;
StageControllerRA_gameplay_reqtext_nonfunreq[4] = "When I was a young boy, my father took me into the city. He said \"_ have a son who can use this system even if he goes blind.\". Somehow I did go blind, so now _ be able to use this system." ;
StageControllerRA_gameplay_reqtext_nonfunreq[5] = "I just stabbed someone. Oh my god. I think... I think I'm going to jail. _ be able to access this system through a website or something, is that possible?" ;
StageControllerRA_gameplay_reqtext_nonfunreq[6] = "Look, honestly I don't know how any of this works. But _ have something that supports multiple languages, you know?" ;
StageControllerRA_gameplay_reqtext_nonfunreq[7] = "I had serious diarrhea last night. It was really bad. I tried to use the system but I couldn't read any of the text because it was too small! _ be able to read everything, make it readable!" ;
StageControllerRA_gameplay_reqtext_nonfunreq[8] = "Ever since Seyit spilled his drink on my keyboard, I haven't been able to login since the E key doesn't work anymore. _ have an on-screen keyboard so I can login!" ;
StageControllerRA_gameplay_reqtext_nonfunreq[9] = "Hi! I sh- Sorry, I'm a little nervous. I was using the service last night and I got curious and pressed \"DELETE DATA\" and it deleted my data! _ be warned next time." ;
StageControllerRA_gameplay_reqtext_nonfunreq[10] = "Come on now, my phone has broken because of your service! _ see this software more secure. This is the only way." ;
StageControllerRA_gameplay_reqtext_nonfunreq[11] = "Tolga spilled his coffee again. _ know that this software will track people's coffee activities every day. Because this is the fourth time this week." ;
StageControllerRA_gameplay_reqtext_nonfunreq[12] = "I lost my wife to a software accident. _ know that your software will be secure. Something like this shouldn't happen again. It was a sad sight to look at." ;
StageControllerRA_gameplay_reqtext_nonfunreq[13] = "You know, I am a crazy dude. I do things differently. So, _ see this software track my routine every single day of the week." ;
StageControllerRA_gameplay_reqtext_nonfunreq[14] = "Oh no... Oh god... You have to help me! I just got stabbed by somebody here! _ be able to access this software from my phone since I will be at a hospital." ;
StageControllerRA_gameplay_reqtext_nonfunreq[15] = "I couldn't sleep last night! My bed is not good enough. _ know that your software will be user friendly unlike my bed." ;
StageControllerRA_gameplay_reqtext_nonfunreq[16] = "Did you see what Kanye East said? Because I didn't and I don't care. I just wanted to say something to you. _ use your system from 4am to 8am. Don't ask why." ;
StageControllerRA_gameplay_reqtext_nonfunreq[17] = "Do you know Dave? We like Dave. He's a really short guy, but that doesn't matter. _ be able to use your service all day for Dave." ;
StageControllerRA_gameplay_reqtext_nonfunreq[18] = "Please don't send me down there, I have a family and 2 cats. Anyway, _ know that your service can be used while five thousand people are logged in. My family is... really big." ;
StageControllerRA_gameplay_reqtext_nonfunreq[19] = "This is crazy! Listen, listen! Have you seen the guy who stabbed someone? _ be able to access criminal activities whenever I want with your system." ;
StageControllerRA_gameplay_reqtext_nonfunreq[20] = "Where is Arif? I saw him a minute ago, but then he disappeared! _ be logged in to your software all day. I will use GPS feature regularly..." ;
StageControllerRA_gameplay_reqtext_moscow_musthave = array_create(1) ;
StageControllerRA_gameplay_reqtext_moscow_musthave[0] = "I HAVE TO" ;
StageControllerRA_gameplay_reqtext_moscow_musthave[1] = "I NEED TO" ;
StageControllerRA_gameplay_reqtext_moscow_musthave[2] = "I REALLY WANT TO" ;
StageControllerRA_gameplay_reqtext_moscow_musthave[3] = "I MUST" ;
StageControllerRA_gameplay_reqtext_moscow_shouldhave = array_create(1) ;
StageControllerRA_gameplay_reqtext_moscow_shouldhave[0] = "I WOULD LIKE TO" ;
StageControllerRA_gameplay_reqtext_moscow_shouldhave[1] = "I WANT TO" ;
StageControllerRA_gameplay_reqtext_moscow_shouldhave[2] = "I SHOULD" ;
StageControllerRA_gameplay_reqtext_moscow_couldhave = array_create(1) ;
StageControllerRA_gameplay_reqtext_moscow_couldhave[0] = "I THINK IT WOULD BE COOL TO" ;
StageControllerRA_gameplay_reqtext_notreq_last = -1 ;
StageControllerRA_gameplay_reqtext_notreq = array_create(1) ;
StageControllerRA_gameplay_reqtext_notreq[0] = "Come on now, my phone has broken because of your service! _ see you cry immediately!" ;
StageControllerRA_gameplay_reqtext_notreq[1] = "Tolga spilled his coffee again. This is the fourth time this week. _ see him leave this world." ;
StageControllerRA_gameplay_reqtext_notreq[2] = "I lost my wife to a software accident. It was a sad sight to look at. _ be able to bring her back." ;
StageControllerRA_gameplay_reqtext_notreq[3] = "You know, I am a crazy dude. I do things differently. So, _ see this software drink water while it's underwater." ;
StageControllerRA_gameplay_reqtext_notreq[4] = "Oh no... Oh god... You have to help me! I just got stabbed by somebody here! _ go to a hospital!" ;
StageControllerRA_gameplay_reqtext_notreq[5] = "I couldn't sleep last night! My bed is not good enough. _ get a new bed, do you? Well, probably you do." ;
StageControllerRA_gameplay_reqtext_notreq[6] = "Did you see what Kanye East said? _ know that system will punch people like that." ;
StageControllerRA_gameplay_reqtext_notreq[7] = "Do you know Dave? We like Dave. He's a really short guy, so, _ know that the software will not be very tall." ;
StageControllerRA_gameplay_reqtext_notreq[8] = "Please don't send me down there, I have a family and 2 cats, but _ get some free coffee." ;
StageControllerRA_gameplay_reqtext_notreq[9] = "This is crazy! Listen, listen! Have you seen the guy who stabbed someone? _ find him." ;
StageControllerRA_gameplay_reqtext_notreq[10] = "Things are getting crazy! You won't believe your eyes! I will show you, so, _ eat some baby stuff because I will be a father!" ;
StageControllerRA_gameplay_reqtext_notreq[11] = "Well, listen... _ get some massage from you before my wife finds us." ;
StageControllerRA_gameplay_reqtext_notreq[12] = "My son missed school once again... _ scare him so much that he will never be able to miss school. Do you think I am a terrible parent? I don't think so." ;
StageControllerRA_gameplay_reqtext_notreq[13] = "Our company burned down yesterday! Why is this always happening to me? _ be lucky once in a while..." ;
StageControllerRA_gameplay_reqtext_notreq[14] = "I love you and I have OCD, so, _ dance with you every day." ;
StageControllerRA_gameplay_reqtext_notreq[15] = "_ be able to fly around with my super powers, so I can scare my husband. " ;
StageControllerRA_gameplay_reqtext_notreq[16] = "When I get bored, _ find some friends, because I don't have any friends." ;
StageControllerRA_gameplay_reqtext_notreq[17] = "I'm really hungry all the time. _ eat food. _ eat apple. _ eat meat. _ eat human meat. _ eat you." ;
StageControllerRA_gameplay_reqtext_notreq[18] = "Do you like Eminmen? I really like Eminmen, so _ listen Eminmen, you and me, alone in a closet." ;
StageControllerRA_gameplay_reqtext_notreq[19] = "I let my kids play with this system every morning, but I'm afraid they see some inappropriate words in there! That's why _ block you in social media." ;
StageControllerRA_gameplay_reqtext_notreq[20] = "I'm a busy guy, so, _ shower with you. Yes. Yeah. What? It's okay." ;
StageControllerRA_gameplay_reqtext_notreq[21] = "I had a little accident at the bathroom. Can you hold this knife for me? _ clean my shoes." ;
StageControllerRA_gameplay_reqtext_notreq[22] = "How are you? Anyway, _ be the fastest man alive. I will go places that no human has ever able to go. So, hold my hand." ;
StageControllerRA_gameplay_reqtext_notreq[23] = "I have a very old computer but I want to use this system for some reason, so, _ go out into a forest and burn down some trees. Then government will acknowledge my presence and give me a good computer." ;
StageControllerRA_gameplay_reqtext_notreq[24] = "When I was a young boy, my father took me into the city. He said \"_ have a son who is blind.\". Somehow I am blind, so now I don't really care. Bye." ;
StageControllerRA_gameplay_reqtext_notreq[25] = "I just stabbed someone. Oh my god. I think... I think I'm going to jail. _ be able to escape! Help me! Come on!" ;
StageControllerRA_gameplay_reqtext_notreq[26] = "Look, honestly I don't know how any of this works. But _ speak alien language. Gsaat tull findel milon baldons. I know, I'm awesome." ;
StageControllerRA_gameplay_reqtext_notreq[27] = "I had serious diarrhea last night. It was really bad. I tried to use the system but I couldn't read any of the text because it was too small! Then I have to sit in my toilet longer. _ know that you are sorry!" ;
StageControllerRA_gameplay_reqtext_notreq[28] = "Ever since Seyit spilled his drink on my keyboard, I haven't been able to login since the E key doesn't work anymore. So _ hire a hitman to go after Seyit, but I love my money." ;
StageControllerRA_gameplay_reqtext_notreq[29] = "Hi! I sh- Sorry, I'm a little nervous. I was using the service last night and I got curious and pressed \"DELETE DATA\" and it deleted my data! Isn't it crazy? _ do it again." ;
StageControllerRA_gameplay_reqtext_notreq[30] = "Where is Arif? I saw him a minute ago, but then he disappeared! _ go with you and find him together. Come on, this way." ;
StageControllerRA_gameplay_reqtext_owner = array_create(1) ;
StageControllerRA_gameplay_reqtext_owner[0] = "CUSTOMER" ;
StageControllerRA_gameplay_reqtext_owner[1] = "STAKEHOLDER" ;
StageControllerRA_gameplay_reqtext_owner_tag = array_create(1) ;
StageControllerRA_gameplay_reqtext_owner_tag[0] = "PLAIN" ;
StageControllerRA_gameplay_reqtext_owner_tag[1] = "ELEGANT" ;
StageControllerRA_gameplay_reqtext_owner_tag[2] = "TIRED" ;
StageControllerRA_gameplay_reqtext_owner_tag[3] = "CHILL" ;
StageControllerRA_gameplay_reqtext_owner_tag[4] = "LOST" ;
StageControllerRA_gameplay_reqtext_owner_tag[5] = "DRAMATIC" ;
StageControllerRA_gameplay_reqtext_owner_tag[6] = "MODERN" ;
StageControllerRA_gameplay_reqtext_owner_tag[7] = "MELONHEAD" ;
StageControllerRA_gameplay_reqtext_owner_tag[8] = "DANCING" ;
StageControllerRA_gameplay_reqtext_owner_tag[9] = "SAILOR" ;
StageControllerRA_gameplay_reqtext_owner_tag[10] = "DANK" ;
StageControllerRA_gameplay_reqtext_owner_tag[11] = "SHY" ;
StageControllerRA_gameplay_reqtext_owner_tag[12] = "UNDEFINED" ;
StageControllerRA_gameplay_reqtext_owner_tag[13] = "ANGRY" ;
StageControllerRA_gameplay_reqtext_owner_tag[14] = "HASTY" ;
StageControllerRA_gameplay_reqtext_owner_tag[15] = "NICE" ;
StageControllerRA_gameplay_reqtext_owner_tag[16] = "EPIC" ;
StageControllerRA_gameplay_reqtext_owner_tag[17] = "COWBOY" ;
StageControllerRA_gameplay_reqtext_owner_tag[18] = "DUMB" ;
StageControllerRA_gameplay_reqtext_owner_tag[19] = "COOL" ;
StageControllerRA_gameplay_reqtext_owner_tag[20] = "SUPER" ;
StageControllerRA_gameplay_reqtext_owner_tag[21] = "ADVANCED" ;
StageControllerRA_gameplay_reqtext_owner_tag[22] = "MISERABLE" ;
StageControllerRA_gameplay_reqtext_owner_tag[23] = "SERIOUS" ;
StageControllerRA_gameplay_reqtext_eastereggreq = array_create(1) ;
StageControllerRA_gameplay_reqtext_eastereggreq[0] = "Woof woof! Woof?" ;
StageControllerRA_gameplay_reqtext_eastereggreq[1] = "Are you hungry? I've got some steak for you. Here, eat it." ;
StageControllerRA_gameplay_reqtext_eastereggreq[2] = "Are you enjoying this game?" ;
StageControllerRA_gameplay_reqtext_eastereggreq[3] = "Hurry up with my croissant!" ;
StageControllerRA_gameplay_reqtext_eastereggreq[4] = "Yeah... My parents named me God... What do you think?" ;
StageControllerRA_gameplay_reqtext_eastereggreq[5] = "Did you happen to see my... left boot?" ;
StageControllerRA_gameplay_reqtext_eastereggreq[6] = "Buy FIND YOUR WINGS on Steam now! YOU HAVE TO BUY IT! BUY IT IMMEDIATELY!" ;
StageControllerRA_gameplay_reqtext_eastereggreq[7] = "Would you like some coffee? I can go and get it for you." ;
StageControllerRA_gameplay_reqtext_eastereggreq[8] = "Ehm... Ihm... Eee... Is... I-Is that... Is that a trap d-door?" ;
StageControllerRA_gameplay_reqtext_eastereggreq[9] = "M E O W ." ;
StageControllerRA_gameplay_reqtext_eastereggreq[10] = "How's the project going?" ;
StageControllerRA_gameplay_reqtext_eastereggreq[11] = "Ok, listen. If you are not going to participate in the project activities, just tell us... We won't get angry." ;
StageControllerRA_gameplay_reqtext_eastereggreq[12] = "Do you kno da wae?" ;
StageControllerRA_gameplay_reqtext_eastereggreq_done = array_create(array_length(StageControllerRA_gameplay_reqtext_eastereggreq), false) ;
StageControllerRA_gameplay_reqtext_owner_easteregg = array_create(1) ;
StageControllerRA_gameplay_reqtext_owner_easteregg[0] = "COOL DOG" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[1] = "STEAK HOLDER" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[2] = "DEVELOPER" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[3] = "KANYE EAST" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[4] = "GOD" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[5] = "PUSS IN ONE BOOT" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[6] = "TOLGA VANSIZOĞLU" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[7] = "JANITOR" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[8] = "SUSPICIOUS GUY" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[9] = "PLANT" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[10] = "INSTRUCTOR NERGIZ" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[11] = "BÜNO" ;
StageControllerRA_gameplay_reqtext_owner_easteregg[12] = "HELMET GUY & GREEN ALIEN CHILD" ;
StageControllerRA_gameplay_reqtext_sincelast_notreq = 0 ;
StageControllerRA_gameplay_reqtext_sincelast_easteregg = 0 ;
StageControllerRA_gameplay_character_draw = true ;
StageControllerRA_gameplay_character_active = true ;
StageControllerRA_gameplay_character_sprite_normal = sStageRACharacters ;
StageControllerRA_gameplay_character_sprite_easteregg = sStageRACharactersEasteregg ;
StageControllerRA_gameplay_character_sprite_w = sprite_get_width(StageControllerRA_gameplay_character_sprite_normal) ;
StageControllerRA_gameplay_character_sprite_h = sprite_get_height(StageControllerRA_gameplay_character_sprite_normal) ;
StageControllerRA_gameplay_characters = noone ; //ds_list
StageControllerRA_gameplay_character_seperation_xx = 320 ;
StageControllerRA_gameplay_character_leaving = noone ;
StageControllerRA_gameplay_character_leaving_xy = 100 ;
StageControllerRA_gameplay_character_starttalk_x = 336 ;
StageControllerRA_gameplay_backgroundfallingcharacter = oStageRABackgroundFallingCharacter ;
StageControllerRA_gameplay_sound_correct = array_create(1) ;
StageControllerRA_gameplay_sound_correct[0] = snStageRAEffectCorrect0 ;
StageControllerRA_gameplay_sound_correct[1] = snStageRAEffectCorrect1 ;
StageControllerRA_gameplay_sound_wrong = array_create(1) ;
StageControllerRA_gameplay_sound_wrong[0] = snStageRAEffectWrong0 ;
StageControllerRA_gameplay_sound_wrong[1] = snStageRAEffectWrong1 ;
StageControllerRA_gameplay_sound_wrong[2] = snStageRAEffectWrong2 ;
StageControllerRA_gameplay_sound_narratorvoice_active = true ;
StageControllerRA_gameplay_sound_narratorvoice_playing = noone ;
StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce = array_create(1) ;
StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce[0] = true ;
StageControllerRA_gameplay_sound_narratorvoice_playing_doitonce[1] = true ;
StageControllerRA_gameplay_sound_narratorvoice_playing_cooldown_max = 60 ;
StageControllerRA_gameplay_sound_narratorvoice_playing_cooldown = 0 ;
StageControllerRA_gameplay_sound_narratorvoice = array_create(1) ;
StageControllerRA_gameplay_sound_narratorvoice[0] = snStageRANarrator18GameWasReq ;
StageControllerRA_gameplay_sound_narratorvoice[1] = snStageRANarrator19GameNotReq ;
StageControllerRA_gameplay_sound_narratorvoice[2] = snStageRANarrator20GameDontMethod ;
StageControllerRA_gameplay_sound_scream = snStageRAEffectScream ;
StageControllerRA_gameplay_sound_trapdoor = snStageRAEffectTrapdoorOpen ;

//AGILE CHANGES
if(StageControllerRA_method == ENUM_METHOD.agile)
{
	StageControllerRA_gameplay_globalscore = 100 ;
	StageControllerRA_gameplay_globalscore_decrease_loss = 1000 ;
	
	StageControllerRA_gameplay_trapdoor_sprite = sStageRAAgileTrapDoor ;
	
	StageControllerRA_gameplay_timer_countdown_max = 60*60 ;
	StageControllerRA_gameplay_timer_countdown = StageControllerRA_gameplay_timer_countdown_max ;
	
	StageControllerRA_gameplay_needed_count_mistake = 4 ;
	StageControllerRA_gameplay_needed_count_fun = irandom_range(1, 3) ;
	StageControllerRA_gameplay_needed_count_nonfun = 4-StageControllerRA_gameplay_needed_count_fun ;
	
	var _c = irandom(2) ;
	StageControllerRA_gameplay_needed_count_musthave = (_c == 0) ? -1 : irandom(1) ;
	StageControllerRA_gameplay_needed_count_shouldhave = (_c == 1) ? -1 : irandom(1) ;
	StageControllerRA_gameplay_needed_count_couldhave = (_c == 2) ? -1 : irandom(1) ;
	
	StageControllerRA_gameplay_timer_secperneeded = 20 ;
	StageControllerRA_gameplay_timer_countdown_max = ceil((StageControllerRA_gameplay_needed_count_fun+StageControllerRA_gameplay_needed_count_nonfun)*StageControllerRA_gameplay_timer_secperneeded)*60 ; //deciding time according to decided needed reqs
	StageControllerRA_gameplay_timer_countdown = StageControllerRA_gameplay_timer_countdown_max ;
	
	StageControllerRA_gameplay_reqtext_moscow_musthave[0] = "I have to" ;
	StageControllerRA_gameplay_reqtext_moscow_musthave[1] = "I need to" ;
	StageControllerRA_gameplay_reqtext_moscow_musthave[2] = "I really want to" ;
	StageControllerRA_gameplay_reqtext_moscow_musthave[3] = "I must" ;
	StageControllerRA_gameplay_reqtext_moscow_shouldhave[0] = "I would like to" ;
	StageControllerRA_gameplay_reqtext_moscow_shouldhave[1] = "I want to" ;
	StageControllerRA_gameplay_reqtext_moscow_shouldhave[2] = "I should" ;
	StageControllerRA_gameplay_reqtext_moscow_couldhave[0] = "I think it would be cool to" ;
}
		
//FUNCTINOS
//skipping the whole intro if space is pressed
function StageControllerRA_fun_SkipIntroIfSpacePressed(_narrator_currently_playing = noone)
{
	if((!global.G_includedfile_network_active) or (global.G_savefile_cutscene_watched[ENUM_CUTSCENE_ID.stageRA_tutorial]))
	{
		if((keyboard_check(vk_space)) and (StageControllerRA_storyflow_id <= 27))
		{
			if(StageControllerRA_storyflowdrawing_d0_draw)
			{
				StageControllerRA_storyflowdrawing_d0_draw_end = true ;
			}
		
			if(StageControllerRA_storyflowdrawing_d1_draw)
			{
				StageControllerRA_storyflowdrawing_d1_draw_end = true ;
			}
		
			if(instance_exists(StageControllerRA_storyflow_tutorial_button[0]))
			{
				instance_destroy(StageControllerRA_storyflow_tutorial_button[0]) ;
				instance_destroy(StageControllerRA_storyflow_tutorial_button[1]) ;
			}
		
			if(!audio_is_playing(StageControllerRA_storyflow_music[0]))
			{
				scSoundMusicPlay(StageControllerRA_storyflow_music[0], true) ;
			}
		
			if(_narrator_currently_playing != noone)
			{
				if(audio_is_playing(_narrator_currently_playing))
				{
					audio_stop_sound(_narrator_currently_playing) ;
				}
			
				scSoundMusicGainSet(10, 1) ;
			}
		
			StageControllerRA_storyflow_id = 27 ;
		}
	}
}

//getting what is requirement tutorial choice
function StageControllerRA_fun_GetTutorialWhatIsReq(_do_it)
{
	StageControllerRA_storyflow_tutorial_whatisreq_do = _do_it ;
}

//creating new character and adding it to the queue
function StageControllerRA_fun_CreateNewCharacter()
{
	//variable definitions
	var _chance_easteregg_base = -15,
		_chance_easteregg_increase = 5,
		_new_character = {
		__sprite : noone,
		__frame : 0,
		__x : 1616,
		__y : 400,
		__xx : 0,
		__yy : 0,
		__x_speed : 4,
		__y_speed : 4,
		__angle : 0,
		__angle_speed : 0.5,
		__angle_arc : 10,
		__angle_control : true,
		__easteregg_id : -1
	} ;
	
	//agile check
	if(StageControllerRA_method == ENUM_METHOD.agile)
	{
		_new_character.__x_speed = 16 ;
		_new_character.__y_speed = 16 ;
	}
	
	//deciding on easteregg (base chance of easteregg is -15% and it increases by 5% after each non-easteregg character)
	if(irandom(99) < (_chance_easteregg_base+(_chance_easteregg_increase*StageControllerRA_gameplay_reqtext_sincelast_easteregg)))
	{
		var _easteregg_count = array_length(StageControllerRA_gameplay_reqtext_eastereggreq_done),
			_easteregg_decided_id = irandom(_easteregg_count-1),
			_easteregg_deny_counter = 0 ;
		
		//if this easter egg has done before, then try to find another easteregg
		while(StageControllerRA_gameplay_reqtext_eastereggreq_done[_easteregg_decided_id])
		{
			if(_easteregg_decided_id+1 < _easteregg_count)
			{
				_easteregg_decided_id++ ;
			}
			else
			{
				_easteregg_decided_id = 0 ;
			}
			
			_easteregg_deny_counter++ ;
			if(_easteregg_deny_counter >= _easteregg_count)
			{
				_easteregg_decided_id = irandom(_easteregg_count-1) ;
				break ;
			}
		}
		
		StageControllerRA_gameplay_reqtext_eastereggreq_done[_easteregg_decided_id] = true ;
		_new_character.__easteregg_id = _easteregg_decided_id ;
		StageControllerRA_gameplay_reqtext_sincelast_easteregg = 0 ;
	}
	else
	{
		StageControllerRA_gameplay_reqtext_sincelast_easteregg++ ;
	}
	
	//creating character
	_new_character.__sprite = ((_new_character.__easteregg_id == -1) ? StageControllerRA_gameplay_character_sprite_normal : StageControllerRA_gameplay_character_sprite_easteregg) ;
	_new_character.__frame = ((_new_character.__easteregg_id == -1) ? irandom(sprite_get_number(_new_character.__sprite)-1) : _new_character.__easteregg_id) ;
	_new_character.__angle_speed *= random_range(0.5, 2) ;
	_new_character.__angle_control = choose(true, false) ;
	
	//character is ready to use
	ds_list_add(StageControllerRA_gameplay_characters, _new_character) ;
}

//make every character move one forward
function StageControllerRA_fun_MoveCharacters()
{
	for(var _c = 0; _c < ds_list_size(StageControllerRA_gameplay_characters); _c++)
	{
		StageControllerRA_gameplay_characters[| _c].__xx = -StageControllerRA_gameplay_character_seperation_xx ;
	}
}

//get the first in line character to leave
function StageControllerRA_fun_MakeFirstInLineCharacterLeave()
{
	StageControllerRA_gameplay_character_leaving = StageControllerRA_gameplay_characters[| 0] ;
	ds_list_delete(StageControllerRA_gameplay_characters, 0) ;
	
	StageControllerRA_gameplay_character_leaving.__xx = StageControllerRA_gameplay_character_leaving_xy ;
	StageControllerRA_gameplay_character_leaving.__yy = -StageControllerRA_gameplay_character_leaving_xy ;
	StageControllerRA_gameplay_character_leaving.__x_speed *= 3 ;
	StageControllerRA_gameplay_character_leaving.__y_speed *= 3 ;
	StageControllerRA_gameplay_character_leaving.__angle_speed *= 3 ;
}

//get the first in line character to fall
function StageControllerRA_fun_MakeFirstInLineCharacterFall()
{
	StageControllerRA_gameplay_character_leaving = StageControllerRA_gameplay_characters[| 0] ;
	ds_list_delete(StageControllerRA_gameplay_characters, 0) ;
	
	StageControllerRA_gameplay_character_leaving.__yy = CONST_GUI_H*2 ;
	StageControllerRA_gameplay_character_leaving.__y_speed *= 5 ;
	StageControllerRA_gameplay_character_leaving.__angle_speed *= 0 ;
	
	StageControllerRA_gameplay_trapdoor_sprite_frame = 1 ;
	StageControllerRA_gameplay_trapdoor_cooldown = StageControllerRA_gameplay_trapdoor_cooldown_max ;
	
	StageControllerRA_fun_CreateBackgroundFallingCharacter() ;
	scSoundEffectPlay(StageControllerRA_gameplay_sound_trapdoor, false) ;
	scSoundEffectPlay(StageControllerRA_gameplay_sound_scream, false, 0.75, 1.5) ;
}

//create requirement text box
function StageControllerRA_fun_CreateReqText()
{
	//defining variables
	var _StageControllerRA_gameplay_reqtext = {
		__text : "",
		__fun : false,
		__nonfun : false,
		__notreq : false,
		__easteregg : false,
		__musthave : false,
		__shouldhave : false,
		__couldhave : false,
		__owner : ""
	};
	
	//checking for easteregg
	if(StageControllerRA_gameplay_characters[| 0].__easteregg_id >= 0)
	{
		_StageControllerRA_gameplay_reqtext.__text = StageControllerRA_gameplay_reqtext_eastereggreq[StageControllerRA_gameplay_characters[| 0].__easteregg_id] ;
		_StageControllerRA_gameplay_reqtext.__easteregg = true ;
		_StageControllerRA_gameplay_reqtext.__owner = StageControllerRA_gameplay_reqtext_owner_easteregg[StageControllerRA_gameplay_characters[| 0].__easteregg_id] ;
	}
	else
	{
		//giving an owner
		_StageControllerRA_gameplay_reqtext.__owner = ((StageControllerRA_gameplay_characters[| 0].__frame < sprite_get_number(StageControllerRA_gameplay_characters[| 0].__sprite)) ? StageControllerRA_gameplay_reqtext_owner_tag[StageControllerRA_gameplay_characters[| 0].__frame]+" " : "") + StageControllerRA_gameplay_reqtext_owner[irandom(array_length(StageControllerRA_gameplay_reqtext_owner)-1)] ;
		
		//deciding on notreq (base chance is 10% and it increases by 15% after every non-notreq text)
		var _chance_notreq_base = 10,
			_chance_notreg_increase = 15 ;
		
		if(irandom(99) < (_chance_notreq_base+(_chance_notreg_increase*StageControllerRA_gameplay_reqtext_sincelast_notreq)))
		{
			var _id = irandom(array_length(StageControllerRA_gameplay_reqtext_notreq)-1) ;
			
			if(_id == StageControllerRA_gameplay_reqtext_notreq_last)
			{
				if(_id+1 < array_length(StageControllerRA_gameplay_reqtext_notreq))
				{
					_id++ ;
				}
				else
				{
					_id = 0 ;
				}
			}
			
			_StageControllerRA_gameplay_reqtext.__text = string_replace_all(StageControllerRA_gameplay_reqtext_notreq[_id], "_", scRandFromArray(choose(StageControllerRA_gameplay_reqtext_moscow_musthave, StageControllerRA_gameplay_reqtext_moscow_shouldhave, StageControllerRA_gameplay_reqtext_moscow_couldhave))) ;
			_StageControllerRA_gameplay_reqtext.__notreq = true ;
			StageControllerRA_gameplay_reqtext_notreq_last = _id ;
			StageControllerRA_gameplay_reqtext_sincelast_notreq = 0 ;
		}
		else
		{
			StageControllerRA_gameplay_reqtext_sincelast_notreq++ ;
			
			//banned weight decrease
			var _weight_banned = -3 ;
			
			//deciding on fun or nonfun (default chances are 50% fun 50% nonfun)
			var _difference_power = 5,
				_weight_base = 50,
				_weight_fun = max(1, _weight_base+(_difference_power*(((StageControllerRA_gameplay_needed_count_fun != -1) ? StageControllerRA_gameplay_needed_count_fun : _weight_banned-floor(StageControllerRA_gameplay_needed_count_nonfun))-StageControllerRA_gameplay_collected_counter_fun))),
				_weight_nonfun = max(1, _weight_base+(_difference_power*(((StageControllerRA_gameplay_needed_count_nonfun != -1) ? StageControllerRA_gameplay_needed_count_nonfun : _weight_banned-floor(StageControllerRA_gameplay_needed_count_fun))-StageControllerRA_gameplay_collected_counter_nonfun))),
				_calculated_chance_fun = 100/(1+(_weight_nonfun/_weight_fun)) ;
		
			if(irandom(99) < _calculated_chance_fun) //will be fun
			{
				var _id = irandom(array_length(StageControllerRA_gameplay_reqtext_funreq)-1) ;
				
				if(_id == StageControllerRA_gameplay_reqtext_funreq_last)
				{
					if(_id+1 < array_length(StageControllerRA_gameplay_reqtext_funreq))
					{
						_id++ ;
					}
					else
					{
						_id = 0 ;
					}
				}
				
				_StageControllerRA_gameplay_reqtext.__text = StageControllerRA_gameplay_reqtext_funreq[_id] ;
				_StageControllerRA_gameplay_reqtext.__fun = true ;
				StageControllerRA_gameplay_reqtext_funreq_last = _id ;
			}
			else //will be nonfun
			{
				var _id = irandom(array_length(StageControllerRA_gameplay_reqtext_nonfunreq)-1) ;
				
				if(_id == StageControllerRA_gameplay_reqtext_nonfunreq_last)
				{
					if(_id+1 < array_length(StageControllerRA_gameplay_reqtext_nonfunreq))
					{
						_id++ ;
					}
					else
					{
						_id = 0 ;
					}
				}
				
				_StageControllerRA_gameplay_reqtext.__text = StageControllerRA_gameplay_reqtext_nonfunreq[irandom(array_length(StageControllerRA_gameplay_reqtext_nonfunreq)-1)] ;
				_StageControllerRA_gameplay_reqtext.__nonfun = true ;
				StageControllerRA_gameplay_reqtext_nonfunreq_last = _id ;
			}
			
			//deciding on MOSCOW (default chances are 33.33% musthave 33.33% shouldhave 33.33% couldhave)
			var _weight_musthave = max(1, _weight_base+(_difference_power*(((StageControllerRA_gameplay_needed_count_musthave != -1) ? StageControllerRA_gameplay_needed_count_musthave : _weight_banned-floor((StageControllerRA_gameplay_needed_count_shouldhave+StageControllerRA_gameplay_needed_count_couldhave)/2))-StageControllerRA_gameplay_collected_counter_musthave))),
				_weight_shouldhave = max(1, _weight_base+(_difference_power*(((StageControllerRA_gameplay_needed_count_shouldhave != -1) ? StageControllerRA_gameplay_needed_count_shouldhave : _weight_banned-floor((StageControllerRA_gameplay_needed_count_musthave+StageControllerRA_gameplay_needed_count_couldhave)/2))-StageControllerRA_gameplay_collected_counter_shouldhave))),
				_weight_couldhave = max(1, _weight_base+(_difference_power*(((StageControllerRA_gameplay_needed_count_couldhave != -1) ? StageControllerRA_gameplay_needed_count_couldhave : _weight_banned-floor((StageControllerRA_gameplay_needed_count_musthave+StageControllerRA_gameplay_needed_count_shouldhave)/2))-StageControllerRA_gameplay_collected_counter_couldhave))),
				_calculated_chance_musthave = 100/(1+((_weight_shouldhave+_weight_couldhave)/_weight_musthave)),
				_calculated_chance_shouldhave = 100/(1+((_weight_musthave+_weight_couldhave)/_weight_shouldhave)),
				_random_value = irandom(99),
				_moscow_text ;
			
			if(_random_value < _calculated_chance_musthave) //musthave
			{
				_StageControllerRA_gameplay_reqtext.__musthave = true ;
				_moscow_text = StageControllerRA_gameplay_reqtext_moscow_musthave[irandom(array_length(StageControllerRA_gameplay_reqtext_moscow_musthave)-1)] ;
			}
			else if(_random_value < (_calculated_chance_musthave+_calculated_chance_shouldhave)) //shouldhave
			{
				_StageControllerRA_gameplay_reqtext.__shouldhave = true ;
				_moscow_text = StageControllerRA_gameplay_reqtext_moscow_shouldhave[irandom(array_length(StageControllerRA_gameplay_reqtext_moscow_shouldhave)-1)] ;
			}
			else //couldhave
			{
				_StageControllerRA_gameplay_reqtext.__couldhave = true ;
				_moscow_text = StageControllerRA_gameplay_reqtext_moscow_couldhave[irandom(array_length(StageControllerRA_gameplay_reqtext_moscow_couldhave)-1)] ;
			}
			
			//editing text to include MOSCOW
			_StageControllerRA_gameplay_reqtext.__text = string_replace_all(_StageControllerRA_gameplay_reqtext.__text, "_", _moscow_text) ;
			/*var _string_length = string_length(_StageControllerRA_gameplay_reqtext.__text),
				_c = 1,
				_current_char,
				_new_string = "" ;
			
			for(; _c <= _string_length; _c++)
			{
				_current_char = string_char_at(_StageControllerRA_gameplay_reqtext.__text, _c) ;
				if(_current_char != "_")
				{
					_new_string += _current_char ;
				}
				else
				{
					_new_string += _moscow_text ;
				}
			}
			
			_StageControllerRA_gameplay_reqtext.__text = _new_string ;*/
		}
	}
	
	//text is ready to use
	StageControllerRA_gameplay_reqtext_current = _StageControllerRA_gameplay_reqtext ;
}

//cursor check for on something
function StageControllerRA_fun_CursorCheckOnSomething()
{
	if(cursor_sprite != StageControllerRA_gameplay_cursor_sprite[1])
	{
		cursor_sprite = StageControllerRA_gameplay_cursor_sprite[1] ;
	}
}

//cursor check for normal
function StageControllerRA_fun_CursorCheckOnNothing()
{
	if(cursor_sprite != StageControllerRA_gameplay_cursor_sprite[0])
	{
		cursor_sprite = StageControllerRA_gameplay_cursor_sprite[0] ;
	}
}

//accept requirement
function StageControllerRA_fun_RequirementAccept()
{
	StageControllerRA_gameplay_reqtext_draw_end = true ;
	StageControllerRA_fun_MakeFirstInLineCharacterLeave() ;
	
	if((StageControllerRA_gameplay_reqtext_current.__notreq) or (StageControllerRA_gameplay_reqtext_current.__easteregg))
	{		
		if(StageControllerRA_method == ENUM_METHOD.waterfall)
		{
			StageControllerRA_fun_SoundPlayIngameNarrator(StageControllerRA_gameplay_sound_narratorvoice[1]) ;
		}
		StageControllerRA_fun_MistakeMade() ;
		StageControllerRA_fun_ChangeScore(-StageControllerRA_gameplay_globalscore_decrease_mistake) ;
		
		StageControllerRA_fun_SendLogRequestOfChoice(false, "Text Is Not Req", "ACCEPT", "DENY", StageControllerRA_gameplay_reqtext_current.__text, StageControllerRA_gameplay_reqtext_current.__owner, (StageControllerRA_gameplay_reqtext_current.__notreq) ? "NOT REQ" : "EASTER EGG", "-") ;
	}
	else if(((StageControllerRA_gameplay_needed_count_musthave == -1) and (StageControllerRA_gameplay_reqtext_current.__musthave)) or ((StageControllerRA_gameplay_needed_count_shouldhave == -1) and (StageControllerRA_gameplay_reqtext_current.__shouldhave)) or ((StageControllerRA_gameplay_needed_count_couldhave == -1) and (StageControllerRA_gameplay_reqtext_current.__couldhave)))
	{
		if(StageControllerRA_method == ENUM_METHOD.waterfall)
		{
			StageControllerRA_fun_SoundPlayIngameNarrator(StageControllerRA_gameplay_sound_narratorvoice[2]) ;
		}
		StageControllerRA_fun_MistakeMade() ;
		StageControllerRA_fun_ChangeScore(-StageControllerRA_gameplay_globalscore_decrease_mistake) ;
		
		StageControllerRA_fun_SendLogRequestOfChoice(false, "Forbidden Moscow", "ACCEPT", "DENY", StageControllerRA_gameplay_reqtext_current.__text, StageControllerRA_gameplay_reqtext_current.__owner, (StageControllerRA_gameplay_reqtext_current.__fun) ? "FUNCTIONAL" : "NON-FUNCTIONAL", (StageControllerRA_gameplay_reqtext_current.__musthave) ? "MUST" : ((StageControllerRA_gameplay_reqtext_current.__shouldhave) ? "SHOULD" : "COULD")) ;
	}
	else
	{
		scSoundEffectPlay(StageControllerRA_gameplay_sound_correct[irandom(array_length(StageControllerRA_gameplay_sound_correct)-1)], false) ;
		StageControllerRA_fun_ChangeScore(StageControllerRA_gameplay_globalscore_increase_correct) ;
		
		if(StageControllerRA_gameplay_reqtext_current.__fun)
		{
			StageControllerRA_gameplay_collected_counter_fun++ ;
		}
		
		if(StageControllerRA_gameplay_reqtext_current.__nonfun)
		{
			StageControllerRA_gameplay_collected_counter_nonfun++ ;
		}
		
		if(StageControllerRA_gameplay_reqtext_current.__musthave)
		{
			StageControllerRA_gameplay_collected_counter_musthave++ ;
		}
		
		if(StageControllerRA_gameplay_reqtext_current.__shouldhave)
		{
			StageControllerRA_gameplay_collected_counter_shouldhave++ ;
		}
		
		if(StageControllerRA_gameplay_reqtext_current.__couldhave)
		{
			StageControllerRA_gameplay_collected_counter_couldhave++ ;
		}
		
		StageControllerRA_fun_SendLogRequestOfChoice(true, "-", "ACCEPT", "ACCEPT", StageControllerRA_gameplay_reqtext_current.__text, StageControllerRA_gameplay_reqtext_current.__owner, (StageControllerRA_gameplay_reqtext_current.__fun) ? "FUNCTIONAL" : "NON-FUNCTIONAL", (StageControllerRA_gameplay_reqtext_current.__musthave) ? "MUST" : ((StageControllerRA_gameplay_reqtext_current.__shouldhave) ? "SHOULD" : "COULD")) ;
	}
}

//deny requirement
function StageControllerRA_fun_RequirementDeny()
{
	StageControllerRA_gameplay_reqtext_draw_end = true ;
	StageControllerRA_fun_MakeFirstInLineCharacterFall() ;
	
	if((StageControllerRA_gameplay_reqtext_current.__notreq) or (StageControllerRA_gameplay_reqtext_current.__easteregg))
	{
		scSoundEffectPlay(StageControllerRA_gameplay_sound_correct[irandom(array_length(StageControllerRA_gameplay_sound_correct)-1)], false) ;
		
		StageControllerRA_fun_SendLogRequestOfChoice(true, "-", "DENY", "DENY", StageControllerRA_gameplay_reqtext_current.__text, StageControllerRA_gameplay_reqtext_current.__owner, (StageControllerRA_gameplay_reqtext_current.__notreq) ? "NOT REQ" : "EASTER EGG", "-") ;
	}
	else if((StageControllerRA_gameplay_needed_count_musthave == -1) and (StageControllerRA_gameplay_reqtext_current.__musthave)) or ((StageControllerRA_gameplay_needed_count_shouldhave == -1) and (StageControllerRA_gameplay_reqtext_current.__shouldhave)) or ((StageControllerRA_gameplay_needed_count_couldhave == -1) and (StageControllerRA_gameplay_reqtext_current.__couldhave))
	{
		scSoundEffectPlay(StageControllerRA_gameplay_sound_correct[irandom(array_length(StageControllerRA_gameplay_sound_correct)-1)], false) ;
		
		StageControllerRA_fun_SendLogRequestOfChoice(true, "-", "DENY", "DENY", StageControllerRA_gameplay_reqtext_current.__text, StageControllerRA_gameplay_reqtext_current.__owner, (StageControllerRA_gameplay_reqtext_current.__fun) ? "FUNCTIONAL" : "NON-FUNCTIONAL", (StageControllerRA_gameplay_reqtext_current.__musthave) ? "MUST" : ((StageControllerRA_gameplay_reqtext_current.__shouldhave) ? "SHOULD" : "COULD")) ;
	}
	else
	{
		if(StageControllerRA_method == ENUM_METHOD.waterfall)
		{
			StageControllerRA_fun_SoundPlayIngameNarrator(StageControllerRA_gameplay_sound_narratorvoice[0]) ;
		}
		StageControllerRA_fun_MistakeMade() ;
		StageControllerRA_fun_ChangeScore(-StageControllerRA_gameplay_globalscore_decrease_mistake) ;
		
		StageControllerRA_fun_SendLogRequestOfChoice(false, "Text Is Req", "DENY", "ACCEPT", StageControllerRA_gameplay_reqtext_current.__text, StageControllerRA_gameplay_reqtext_current.__owner, (StageControllerRA_gameplay_reqtext_current.__fun) ? "FUNCTIONAL" : "NON-FUNCTIONAL", (StageControllerRA_gameplay_reqtext_current.__musthave) ? "MUST" : ((StageControllerRA_gameplay_reqtext_current.__shouldhave) ? "SHOULD" : "COULD")) ;
	}
}

//stop whole activity of the game
function StageControllerRA_fun_StopActivityOfGame()
{
	StageControllerRA_gameplay_sound_narratorvoice_active = false ;
	StageControllerRA_gameplay_timer_active = false ;
	StageControllerRA_gameplay_character_active = false ;
	StageControllerRA_gameplay_reqtext_draw_end = true ;
}

//mistake made
function StageControllerRA_fun_MistakeMade()
{
	StageControllerRA_gameplay_collected_counter_mistake++ ;
	scScreenShake(, 10) ;
	scSoundEffectPlay(StageControllerRA_gameplay_sound_wrong[irandom(array_length(StageControllerRA_gameplay_sound_wrong)-1)], false) ;
	StageControllerRA_fun_MistakeCountCheck() ;
}

//mistake check
function StageControllerRA_fun_MistakeCountCheck()
{
	if(StageControllerRA_gameplay_collected_counter_mistake >= StageControllerRA_gameplay_needed_count_mistake)
	{
		if((StageControllerRA_gameplay_collected_counter_fun < StageControllerRA_gameplay_needed_count_fun) or (StageControllerRA_gameplay_collected_counter_nonfun < StageControllerRA_gameplay_needed_count_nonfun) or (StageControllerRA_gameplay_collected_counter_musthave < StageControllerRA_gameplay_needed_count_musthave) or (StageControllerRA_gameplay_collected_counter_shouldhave < StageControllerRA_gameplay_needed_count_shouldhave) or (StageControllerRA_gameplay_collected_counter_couldhave < StageControllerRA_gameplay_needed_count_couldhave))
		{
			StageControllerRA_gameplay_end_result_id = 1 ; //lose with mistakes
		}
		else
		{
			StageControllerRA_gameplay_end_result_id = 0 ; //won
		}
		
		StageControllerRA_fun_StopActivityOfGame() ;
		StageControllerRA_fun_CursorCheckOnNothing() ;
		
		if(StageControllerRA_gameplay_end_available)
		{
			StageControllerRA_gameplay_end_available = false ;
		}
	}
}

//timer runs out check
function StageControllerRA_fun_TimerRunsOutCheck()
{
	StageControllerRA_fun_CursorCheckOnNothing() ;
	
	if((StageControllerRA_gameplay_collected_counter_fun < StageControllerRA_gameplay_needed_count_fun) or (StageControllerRA_gameplay_collected_counter_nonfun < StageControllerRA_gameplay_needed_count_nonfun))
	{
		StageControllerRA_gameplay_end_result_id = 2 ; //lose with insufficent requirements (any type)
	}
	else if((StageControllerRA_gameplay_collected_counter_musthave < StageControllerRA_gameplay_needed_count_musthave) or (StageControllerRA_gameplay_collected_counter_shouldhave < StageControllerRA_gameplay_needed_count_shouldhave) or (StageControllerRA_gameplay_collected_counter_couldhave < StageControllerRA_gameplay_needed_count_couldhave))
	{
		StageControllerRA_gameplay_end_result_id = 3 ; //lose with insufficent moscow (any type)
	}
	else
	{
		StageControllerRA_gameplay_end_result_id = 0 ; //won
	}
	
	if(StageControllerRA_gameplay_end_available)
	{
		StageControllerRA_gameplay_end_available = false ;
	}
}

//completition before timer runs out check
function StageControllerRA_fun_CompletitionBeforeTimerRunsOutCheck()
{
	if(!StageControllerRA_gameplay_end_available)
	{
		if((StageControllerRA_gameplay_collected_counter_fun >= StageControllerRA_gameplay_needed_count_fun) and (StageControllerRA_gameplay_collected_counter_nonfun >= StageControllerRA_gameplay_needed_count_nonfun) and (StageControllerRA_gameplay_collected_counter_musthave >= StageControllerRA_gameplay_needed_count_musthave) and (StageControllerRA_gameplay_collected_counter_shouldhave >= StageControllerRA_gameplay_needed_count_shouldhave) and (StageControllerRA_gameplay_collected_counter_couldhave >= StageControllerRA_gameplay_needed_count_couldhave))
		{
			StageControllerRA_gameplay_end_available = true ;
			StageControllerRA_gameplay_globalscore_increase_correct = 0 ;
			StageControllerRA_gameplay_globalscore_decrease_mistake = 0 ;
			
			//ending the game without waiting for player (for agile)
			if(StageControllerRA_method == ENUM_METHOD.agile)
			{
				StageControllerRA_gameplay_end_available = false ;
				StageControllerRA_gameplay_timer_countdown = 0 ;
			}
		}
	}
	else if(keyboard_check_pressed(vk_space))
	{
		StageControllerRA_gameplay_end_available = false ;
		StageControllerRA_gameplay_timer_countdown = 0 ;
	}
}

//create a background falling character
function StageControllerRA_fun_CreateBackgroundFallingCharacter()
{
	instance_create_layer(0, 0, "BackgroundFallingCharacter", StageControllerRA_gameplay_backgroundfallingcharacter) ;
}

//play in-game narrator line
function StageControllerRA_fun_SoundPlayIngameNarrator(_sound)
{
	if(StageControllerRA_gameplay_sound_narratorvoice_playing == noone)
	{
		StageControllerRA_gameplay_sound_narratorvoice_playing = _sound ;
		StageControllerRA_gameplay_sound_narratorvoice_playing_cooldown = StageControllerRA_gameplay_sound_narratorvoice_playing_cooldown_max ;
	}
}

//change score
function StageControllerRA_fun_ChangeScore(_change)
{
	StageControllerRA_gameplay_globalscore += _change ;
	if((StageControllerRA_gameplay_globalscore < 0) and (StageControllerRA_method == ENUM_METHOD.waterfall))
	{
		StageControllerRA_gameplay_globalscore = 0 ;
	}
}

//send log request of choice
function StageControllerRA_fun_SendLogRequestOfChoice(_is_correct, _mistake_reason, _clicked_on, _correct_was, _text_was, _character_was, _text_type_was, _moscow_term_was)
{
	var _json = {
		"is_correct" : _is_correct,
		"mistake_reason" : _mistake_reason,
		"clicked_on" : _clicked_on,
		"correct_was" : _correct_was,
		"text_was" : _text_was,
		"character_was" : _character_was,
		"text_type_was" : _text_type_was,
		"moscow_term_was" : _moscow_term_was
		} ;
	scCreateRequestObject(ENUM_REQUEST.log, [global.ENUM_LOG_ACTION.stageRA_choice_made, json_stringify(_json)]) ;
	scLocalLog(global.ENUM_LOG_ACTION.stageRA_choice_made, json_stringify(_json)) ;
}
