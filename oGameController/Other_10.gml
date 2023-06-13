///@desc SUBTITLE MAPPING
var _GameController_subtitle_map_values ;

/*
FOR THE ARRAY:

[0][0] means how many different subtitles there are
[0][1] means subtitle color for all, if noone then subtitle colors are specific

[1][0] is the first subtitle
[1][1] is the specific color of the first subtitle
[2] is the subtitle time of next subtitle in seconds

and other [x][0], [x][1], [x+1] groups go like this
*/

switch(global.G_savefile_subtitles_language_id)
{
	case 0:
	default:
		#region ||ENGLISH||
		
		#region //IN MENU
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Time for waterfall." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "It's waterfall, then." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Waterfall it is." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "We are going agile!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator3, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "It is agile!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator4, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Let's agile!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator5, _GameController_subtitle_map_values) ;
		#endregion

		#region //PROJECT SELECTION STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Welcome back new employee! It's great to see you working with us!" ;
		_GameController_subtitle_map_values[2] = 5.0 ;
		_GameController_subtitle_map_values[3][0] = "Now... Let's get straight to business, okay?" ;
		_GameController_subtitle_map_values[4] = 8.0 ;
		_GameController_subtitle_map_values[5][0] = "You see... You are the only software engineer we hired." ;
		_GameController_subtitle_map_values[6] = 13.0 ;
		_GameController_subtitle_map_values[7][0] = "And you might be wondering why." ;
		_GameController_subtitle_map_values[8] = 16.0 ;
		_GameController_subtitle_map_values[9][0] = "Because we think... Ehh... You are the best! Yeah, yeah..." ;
		_GameController_subtitle_map_values[10] = 19.8 ;
		_GameController_subtitle_map_values[11][0] = "We don't need any other software engineer because we have you!" ;
		_GameController_subtitle_map_values[12] = 24.5 ;
		_GameController_subtitle_map_values[13][0] = "You are special and we love you." ;
		_GameController_subtitle_map_values[14] = 29.5 ;
		_GameController_subtitle_map_values[15][0] = "Anyway, we have some project ideas for you. Eee... Select one, and let's make some money, alright?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Interesting choice. Hmm... Alright, let's start." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator1, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "You've selected the EMPLOYEE FIRING SYSTEM. Maybe you can be the first test subject." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah... The SUN OF MELTING MIND... Classic..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator3, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Interestingly, you've chosen POOPING OBSERVER. Sigh... Very well..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator4, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "The good, old GIRLFRIEND FINDER. It makes lots of money." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator5, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "It's time for TERROR ENDER! Let's defeat those world invading aliens!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator6, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "WHO IS THE DADDY? Sigh... Who knows..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator7, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "It's the brand-new ANTI FITNESS APP! Got to get that fats, am I right?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator8, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Behold, HYPNO APP! I am in your mind..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator9, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Only a STUPID DETECTOR can solve this case. Let's give it a try." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator10, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "The ultimate EVERYTHING MANAGEMENT SYSTEM! Play... god..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator11, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "It's the CUTE CAT FINDER. Don't mistake it with girlfriend finder." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator12, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "The SOMETHING. You know the feeling... don't you?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator13, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "You've chosen... HELP ME I'M STUCK IN THIS GAME? What? Well, anyway." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator14, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "So, SHOE TIER APP huh? Is it ties shoes or makes a tier list out of them?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator15, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Future is bright with SENTIENT ANDROID. I'm sure you can handle this." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator16, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Here comes the BRAIN UPLOADER! Live, forever..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator17, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Would you look at that, it's SCHOOL TIME! Haha! Get it? Yeah? Yeah." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator18, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "When you feel cute, ENGINEER DRESSER can help you. Trust me." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator19, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "NAME CREATOR is a money printer. Because people hate using their brains." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator20, _GameController_subtitle_map_values) ;
		#endregion

		#region //REQUIREMENTS GATHERING STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "We are here... It's time to collect some requirements from potential customers and stakeholders." ;
		_GameController_subtitle_map_values[2] = 7.0 ;
		_GameController_subtitle_map_values[3][0] = "Since you are a certified software engineer, I assume you know what is a requirement and not." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Oww... Alright... Then, listen closely." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "So... you know, customers and stakeholders will not give you a direct requirement." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "They will talk with you, and you have to understand that if what they told you can be a requirement or not." ;
		_GameController_subtitle_map_values[4] = 13.0 ;
		_GameController_subtitle_map_values[5][0] = "Requirement is... something that someone wants or needs from a software." ;
		_GameController_subtitle_map_values[6] = 18.3 ;
		_GameController_subtitle_map_values[7][0] = "Let's look at an example from a customer." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "This guy wants to upload a picture to your system. This is clearly a requirement: Being able to upload a picture." ;
		_GameController_subtitle_map_values[2] = 7.7 ;
		_GameController_subtitle_map_values[3][0] = "But... we have to know what kind of a requirement is this. I am talking about functional or non-functional requirements." ;
		_GameController_subtitle_map_values[4] = 16.0 ;
		_GameController_subtitle_map_values[5][0] = "If the requirement defines an action, which is a function, then it is a functional requirement." ;
		_GameController_subtitle_map_values[6] = 23.0 ;
		_GameController_subtitle_map_values[7][0] = "It has to explain how the system will work." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator3, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "In this example, the action is \"uploading\". They want software to give them the ability of \"uploading\" a picture." ;
		_GameController_subtitle_map_values[2] = 8.0 ;
		_GameController_subtitle_map_values[3][0] = "So, how will the system work? The system must let users upload pictures." ;
		_GameController_subtitle_map_values[4] = 13.8 ;
		_GameController_subtitle_map_values[5][0] = "This is the functional requirement." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator4, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "This guy wants to use our service even at 11PM." ;
		_GameController_subtitle_map_values[2] = 4.5 ;
		_GameController_subtitle_map_values[3][0] = "Now... This is a requirement, but it does not define an action. It explains how the system will perform." ;
		_GameController_subtitle_map_values[4] = 12.5 ;
		_GameController_subtitle_map_values[5][0] = "Performance can be described with system's speed, availability, capacity, reliability, usability, and such." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator5, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "In this example, availability of the service is highlighted." ;
		_GameController_subtitle_map_values[2] = 3.9 ;
		_GameController_subtitle_map_values[3][0] = "So, how will the system perform? The system should be available... let's say... 24/7." ;
		_GameController_subtitle_map_values[4] = 11.4 ;
		_GameController_subtitle_map_values[5][0] = "The system should be available 24/7. This is the non-functional requirement." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator6, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Alright then... Again... I hope you know the MOSCOW method." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator7, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Sure... Listen closely." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator8, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "The MOSCOW method helps to prioritize requirements to show how important they are." ;
		_GameController_subtitle_map_values[2] = 5.0 ;
		_GameController_subtitle_map_values[3][0] = "We use \"must have\", \"should have\", \"could have\", and \"won't have\" in order to define the importance of a requirement." ;
		_GameController_subtitle_map_values[4] = 12.5 ;
		_GameController_subtitle_map_values[5][0] = "\"Must have\" being the most important and \"could have\" being the least important." ;
		_GameController_subtitle_map_values[6] = 17.6 ;
		_GameController_subtitle_map_values[7][0] = "\"Won't have\" directly says it will not be included." ;
		_GameController_subtitle_map_values[8] = 21.5 ;
		_GameController_subtitle_map_values[9][0] = "So, we will only care about \"must\", \"should\", \"could\" for now." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator9, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Of coure customers and stakeholders usually will not directly use MOSCOW terms when they want something." ;
		_GameController_subtitle_map_values[2] = 7.5 ;
		_GameController_subtitle_map_values[3][0] = "If we look at this example, we can see that this guy \"has to\" do the action. It is a clearly defined important need." ;
		_GameController_subtitle_map_values[4] = 16.3 ;
		_GameController_subtitle_map_values[5][0] = "So, this requirement has the \"must have\" importance." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator10, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "If we look at this example, we can see that this guy \"would like to\" have this." ;
		_GameController_subtitle_map_values[2] = 6.6 ;
		_GameController_subtitle_map_values[3][0] = "They want this requirement, but it's not urgent. So, this requirement has the \"should have\" importance." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator11, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "So, people can want something with different expressions and it's your job to understand the importance of it." ;
		_GameController_subtitle_map_values[2] = 7.7 ;
		_GameController_subtitle_map_values[3][0] = "I'm currently showing you some of the examples." ;
		_GameController_subtitle_map_values[4] = 10.9 ;
		_GameController_subtitle_map_values[5][0] = "\"I have to\", \"I need to\", \"I really want to\" like expressions defines the \"must have\" importance." ;
		_GameController_subtitle_map_values[6] = 17.9 ;
		_GameController_subtitle_map_values[7][0] = "\"I would like to\", \"I want to\" like expressions defines the \"should have\" importance." ;
		_GameController_subtitle_map_values[8] = 23.7 ;
		_GameController_subtitle_map_values[9][0] = "\"It would be cool to\" like expressions defines the \"could have\" importance." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator12, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Well then... Let's start collecting requirements." ;
		_GameController_subtitle_map_values[2] = 3.6 ;
		_GameController_subtitle_map_values[3][0] = "How many you need to collect is on the poster which is on the wall." ;
		_GameController_subtitle_map_values[4] = 8.1 ;
		_GameController_subtitle_map_values[5][0] = "Good luck." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator13, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Congrats, you've finished the day perfectly." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator14EndgameWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Come on man... You haven't collected enough requirements." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator15EndgameLoseByReq, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Come on man... You haven't collected enough requirements with needed priority." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator16EndgameLoseByMoscow, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Oh my god... You've failed terribly. This was a disaster." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator17EndgameLoseByMistake, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "That was a requirement. Pull yourself together!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator18GameWasReq, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "That wasn't a requirement. It was nonsense!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator19GameNotReq, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "You must not collect that MOSCOW term! Be careful!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator20GameDontMethod, _GameController_subtitle_map_values) ;
		#endregion

		#region //REQUIREMENT CATEGORIZATION STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Holy **** be a little more careful!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckBad, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Okay, alright. Keep going." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckGood, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Well God damn! No wonder we hired you." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hey hey hey! How's my favorite software engineer doing?" ;
		_GameController_subtitle_map_values[2] = 3.5 ;
		_GameController_subtitle_map_values[3][0] = "Anyway, I hope you got time cause uhh..." ;
		_GameController_subtitle_map_values[4] = 6 ;
		_GameController_subtitle_map_values[5][0] = "someone actually has to analyse these requirements, you know?" ;
		_GameController_subtitle_map_values[6] = 8.5 ;
		_GameController_subtitle_map_values[7][0] = "It's a simple task. Just read what's on the paper and" ;
		_GameController_subtitle_map_values[8] = 11.2 ;
		_GameController_subtitle_map_values[9][0] = "place them on top of the correct envelope." ;
		_GameController_subtitle_map_values[10] = 13.5 ;
		_GameController_subtitle_map_values[11][0] = "Functional requirements go to the green envelope," ;
		_GameController_subtitle_map_values[12] = 15.5 ;
		_GameController_subtitle_map_values[13][0] = "Non-Functional ones go to the red one," ;
		_GameController_subtitle_map_values[14] = 17.3 ;
		_GameController_subtitle_map_values[15][0] = "and Data requirements go to the yellow one." ;
		_GameController_subtitle_map_values[16] = 20.1 ;
		_GameController_subtitle_map_values[17][0] = "Oh, wait, you don't know what DATA requirements are do you?" ;
		_GameController_subtitle_map_values[18] = 24.2 ;
		_GameController_subtitle_map_values[19][0] = "Then listen up, fool." ;
		_GameController_subtitle_map_values[20] = 25.6 ;
		_GameController_subtitle_map_values[21][0] = "You may see something like \"The system should save the credit card information\"." ;
		_GameController_subtitle_map_values[22] = 29.4 ;
		_GameController_subtitle_map_values[23][0] = "This means the system will be saving INFORMATION." ;
		_GameController_subtitle_map_values[24] = 32.6 ;
		_GameController_subtitle_map_values[25][0] = "Also known as DATA." ;
		_GameController_subtitle_map_values[26] = 34.2 ;
		_GameController_subtitle_map_values[27][0] = "So this is a DATA requirement." ;
		_GameController_subtitle_map_values[28] = 36 ;
		_GameController_subtitle_map_values[29][0] = "That's it." ;
		_GameController_subtitle_map_values[30] = 37.3 ;
		_GameController_subtitle_map_values[31][0] = "Oh also, watch out for some of the papers" ;
		_GameController_subtitle_map_values[32] = 39.3 ;
		_GameController_subtitle_map_values[33][0] = "cause they won't be requirements at all." ;
		_GameController_subtitle_map_values[34] = 41 ;
		_GameController_subtitle_map_values[35][0] = "You should ignore them." ;
		_GameController_subtitle_map_values[36] = 42 ;
		_GameController_subtitle_map_values[37][0] = "Ehh you'll figure it out." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorTutorial, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*Spits drink* You're done?? Okay, umm, let's see." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorFinish, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "This is... This is bad... I'm sorry, you're fired." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorLose, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Impressive. Very nice. Let's see your mistakes." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresCorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Alright, you're just human after all." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresIncorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "It appears you made every mistake you could make." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresNoCorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "That's it? Wow, okay, good job!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresNoIncorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Alright! Looks like the software can be designed now!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorWin, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Aaand time's up. Let's see what you did." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorTimesUp, _GameController_subtitle_map_values) ;
		#endregion

		#region //DESIGN STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Well that's a shame. Too bad you had to make all those mistakes." ;
		_GameController_subtitle_map_values[2] = 4 ;
		_GameController_subtitle_map_values[3][0] = "Um... I... I have to go..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorLose, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "You did all that? That's awesome! Well then we can move onto-" ;
		_GameController_subtitle_map_values[2] = 5 ;
		_GameController_subtitle_map_values[3][0] = "wait... oh... oh no..." ;
		_GameController_subtitle_map_values[4] = 7.5 ;
		_GameController_subtitle_map_values[5][0] = "oh no oh CRAP he's waking up!!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hey, it's you! Well guess what?" ;
		_GameController_subtitle_map_values[2] = 2.5 ;
		_GameController_subtitle_map_values[3][0] = "So turns out, you're gonna have to DESIGN the program as well!" ;
		_GameController_subtitle_map_values[4] = 6.3 ;
		_GameController_subtitle_map_values[5][0] = "It should be fairly simple though! Just... do it! Heh." ;
		_GameController_subtitle_map_values[6] = 9.8 ;
		_GameController_subtitle_map_values[7][0] = "No no... But all you have to do is" ;
		_GameController_subtitle_map_values[8] = 11.3 ;
		_GameController_subtitle_map_values[9][0] = "select the correct language and the diagram we need." ;
		_GameController_subtitle_map_values[10] = 13.6 ;
		_GameController_subtitle_map_values[11][0] = "Which should be simple. Our amazing Fartificial Intelligence," ;
		_GameController_subtitle_map_values[12] = 16.8 ;
		_GameController_subtitle_map_values[13][0] = "FatGPT is gonna help you with that." ;
		_GameController_subtitle_map_values[14] = 19.8 ;
		_GameController_subtitle_map_values[15][0] = "Then, you'll have to design the features." ;
		_GameController_subtitle_map_values[16] = 21.6 ;
		_GameController_subtitle_map_values[17][0] = "For the functional requirements, you'll decide the order of events." ;
		_GameController_subtitle_map_values[18] = 24.9 ;
		_GameController_subtitle_map_values[19][0] = "And for the data requirements, you'll have to figure out what data types will be used." ;
		_GameController_subtitle_map_values[20] = 28.8 ;
		_GameController_subtitle_map_values[21][0] = "And for the other data requirements you'll design Entity Relationship Diagrams (ERD)." ;
		_GameController_subtitle_map_values[22] = 32.8 ;
		_GameController_subtitle_map_values[23][0] = "Just drag and drop the boxes in the correct slots." ;
		_GameController_subtitle_map_values[24] = 35.5 ;
		_GameController_subtitle_map_values[25][0] = "Ohh, and, we kinda got a virus on our computers so..." ;
		_GameController_subtitle_map_values[26] = 38.6 ;
		_GameController_subtitle_map_values[27][0] = "watch out for the ads." ;
		_GameController_subtitle_map_values[28] = 40.2 ;
		_GameController_subtitle_map_values[29][0] = "You totally got this dude. Bonne Chance." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorTutorial, _GameController_subtitle_map_values) ;
		#endregion

		#region //DEVELOPMENT STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ahhh... Sorry man... I think someone hit me with a spoon or something." ;
		_GameController_subtitle_map_values[2] = 9.7 ;
		_GameController_subtitle_map_values[3][0] = "I was unconscious for a while. Oh... Damn... Ahh!" ;
		_GameController_subtitle_map_values[4] = 17.0 ;
		_GameController_subtitle_map_values[5][0] = "You are at the development step. Incredible! Hahaha!" ;
		_GameController_subtitle_map_values[6] = 21.5 ;
		_GameController_subtitle_map_values[7][0] = "Alright, let's quickly handle this part and then deploy our product." ;
		_GameController_subtitle_map_values[8] = 28.0 ;
		_GameController_subtitle_map_values[9][0] = "Of course we will do testing too. Don't worry about it." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Firstly, you have to consturct the database that we will be using." ;
		_GameController_subtitle_map_values[2] = 4.7 ;
		_GameController_subtitle_map_values[3][0] = "And secondly, you have to develop our product." ;
		_GameController_subtitle_map_values[4] = 8.4 ;
		_GameController_subtitle_map_values[5][0] = "I'm sure you can handle all of this just by yourself." ;
		_GameController_subtitle_map_values[6] = 12.5 ;
		_GameController_subtitle_map_values[7][0] = "You are our great software engineer. Come on, come on, come on! Start working, now!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Oh... You've finished. Nice! Let's test this bad boy." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Welp... After all that... You are behind the schedule." ;
		_GameController_subtitle_map_values[2] = 6.8 ;
		_GameController_subtitle_map_values[3][0] = "My disappointment is immeasurable and my day is ruined." ;
		_GameController_subtitle_map_values[4] = 11.0 ;
		_GameController_subtitle_map_values[5][0] = "All thanks to you. Now... Get out! Just... Ah! You are fired." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator3, _GameController_subtitle_map_values) ;
		#endregion

		#region //TESTING STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "We have to test our product before deployment." ;
		_GameController_subtitle_map_values[2] = 3.3 ;
		_GameController_subtitle_map_values[3][0] = "So, we are going to do some testing now." ;
		_GameController_subtitle_map_values[4] = 7.1 ;
		_GameController_subtitle_map_values[5][0] = "And when I said we I meant you. You will do some testing." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Do you know what white-box and black-box testing are?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Good, then you know you are going to perform black-box testing." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "White-box testing is done by people who know the internal structure of the software." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "Some functions and stuff are written to automatically test the software." ;
		_GameController_subtitle_map_values[4] = 11.0 ;
		_GameController_subtitle_map_values[5][0] = "On the other hand, black-box testing is done by people who know nothing about the software's internal stuff." ;
		_GameController_subtitle_map_values[6] = 18.0 ;
		_GameController_subtitle_map_values[7][0] = "Some inputs are constantly given to the program manually to inspect the outcomes." ;
		_GameController_subtitle_map_values[8] = 24.6 ;
		_GameController_subtitle_map_values[9][0] = "Even though you know the internal structure of the software, you will perform black-box testing." ;
		_GameController_subtitle_map_values[10] = 30.5 ;
		_GameController_subtitle_map_values[11][0] = "Because we don't have time to create an automatic testing and stuff like that." ;
		_GameController_subtitle_map_values[12] = 35.7 ;
		_GameController_subtitle_map_values[13][0] = "Just send some inputs and see if it's good to go." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator3, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Alright, I want you to listen to me carefully and try to picture what I'm going to say." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator4, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "The software... is a bomb. So, it's purpose is to explode." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "So... If it explodes, it works! But we know nothing is perfect." ;
		_GameController_subtitle_map_values[4] = 13.5 ;
		_GameController_subtitle_map_values[5][0] = "In reality, testing never ends just like bugs." ;
		_GameController_subtitle_map_values[6] = 18.2 ;
		_GameController_subtitle_map_values[7][0] = "Your job is to complete some modules on this software bomb without exploding it." ;
		_GameController_subtitle_map_values[8] = 23.8 ;
		_GameController_subtitle_map_values[9][0] = "Which means you will find bugs that prevents software from achieving it's goal." ;
		_GameController_subtitle_map_values[10] = 29.4 ;
		_GameController_subtitle_map_values[11][0] = "Ha? How did we turn our software into a bomb? Hahaha! " ;
		_GameController_subtitle_map_values[12] = 35.7 ;
		_GameController_subtitle_map_values[13][0] = "Don't ask too many questions. Just do what I'm telling you to do." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator5, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Collect enough bugs before the software explodes. Good luck." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator6, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Really good job! You've found lots of bugs." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator7WinPerfect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Good job. You've found enough bugs." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator8WinEnough, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Welp... You have failed." ;
		_GameController_subtitle_map_values[2] = 3.5 ;
		_GameController_subtitle_map_values[3][0] = "We can't continue without a proper testing. Ahh..." ;
		_GameController_subtitle_map_values[4] = 9.0 ;
		_GameController_subtitle_map_values[5][0] = "You are fired." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator9Lose, _GameController_subtitle_map_values) ;
		#endregion

		#region //DEPLOYMENT STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Finally, here we are! Haha! Let's deploy our product and make me some money! HAHAHA!" ;
		_GameController_subtitle_map_values[1][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[2] = 12.1 ;
		_GameController_subtitle_map_values[3][0] = "I think... I think they can hear us." ;
		_GameController_subtitle_map_values[3][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[4] = 14.4 ;
		_GameController_subtitle_map_values[5][0] = "Hahaha... Of course you guys will get some too..." ;
		_GameController_subtitle_map_values[5][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[6] = 19.9 ;
		_GameController_subtitle_map_values[7][0] = "Sure... Of course... I mean who do you think he is, the devil?" ;
		_GameController_subtitle_map_values[7][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[8] = 23.6 ;
		_GameController_subtitle_map_values[9][0] = "I am the CEO! I will get the money, then I will pay you with what you deserve!" ;
		_GameController_subtitle_map_values[9][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[10] = 30.5 ;
		_GameController_subtitle_map_values[11][0] = "You... You know what? Maybe I should get the money." ;
		_GameController_subtitle_map_values[11][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[12] = 33.2 ;
		_GameController_subtitle_map_values[13][0] = "Man... Who the heck even are you!?" ;
		_GameController_subtitle_map_values[13][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[14] = 35.4 ;
		_GameController_subtitle_map_values[15][0] = "I'm the one making the game, who are you!?" ;
		_GameController_subtitle_map_values[15][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[16] = 37.6 ;
		_GameController_subtitle_map_values[17][0] = "*fighting*" ;
		_GameController_subtitle_map_values[17][1] = GameController_subtitle_text_color_a_and_t ;
		_GameController_subtitle_map_values[18] = 45.3 ;
		_GameController_subtitle_map_values[19][0] = "Alright, alright... Do not worry about those two. Let's just deploy the product, shall we?" ;
		_GameController_subtitle_map_values[19][1] = GameController_subtitle_text_color_s ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = noone ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Okay, just press that big red button whenever you are ready to deploy the product." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator1Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Oh wait, you actually need to sign this document first." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator2Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hold on, hold on. You have to sign this document as well." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator3Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hey, check out this ad design. Beautiful isn't it?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator4Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Well, you're also going to have to subscribe to this server provider." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator5Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Oh yeah, I almost forgot to tell you that we must finish all of these before the time runs out. We have a tight schedule, you know." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator6Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Well, would you look at that. You need to fill this sudoku box correctly to balance our financial status. And don't even ask why." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator7Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hey, who the heck ordered food? Is this yours? Well, take it then." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator8Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Anyway, in order to show how stressful your job is, you have to cry about it. So, go ahead, cry." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator9Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Damn it, do I need to remind you that you have to tell your partner that you will always love them and you would never cheat on them." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator10Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Why are we still here, just to suffer?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator11Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Look at this, you have to read this 569 pages long document to be successful. And do you want to know why? Because I say so." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator12Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "I got to go to the bathroom. Do the rest by yourself." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator13Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*toilet flush*" ;
		_GameController_subtitle_map_values[2] = 2.1 ;
		_GameController_subtitle_map_values[3][0] = "Huh... Looks like you did well. From now on, you should maintain the product." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator14EndgameWon, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*toilet flush*" ;
		_GameController_subtitle_map_values[2] = 2.1 ;
		_GameController_subtitle_map_values[3][0] = "What a tragedy... It seems like I must continue eating my food that contains nothing but meat and bread." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator15EndgameLost, _GameController_subtitle_map_values) ;
		#endregion
	
		#region //MAINTENANCE STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "What is maintenace?" ;
		_GameController_subtitle_map_values[2] = 2.6 ;
		_GameController_subtitle_map_values[3][0] = "What is... Maintenance?" ;
		_GameController_subtitle_map_values[4] = 4.2 ;
		_GameController_subtitle_map_values[5][0] = "How is software maintained?" ;
		_GameController_subtitle_map_values[6] = 5.8 ;
		_GameController_subtitle_map_values[7][0] = "What are updates?" 
		_GameController_subtitle_map_values[8] = 7.2 ;
		_GameController_subtitle_map_values[9][0] = "And most importantly, can this be taught in its entirety within 90 seconds?" 
		_GameController_subtitle_map_values[10] = 12.4 ;
		_GameController_subtitle_map_values[11][0] = "Thankfully, the answer to all of these questions is YES." ;
		_GameController_subtitle_map_values[12] = 16.3 ;
		_GameController_subtitle_map_values[13][0] = "Let's dive deeper." ;
		_GameController_subtitle_map_values[14] = 17.7 ;
		_GameController_subtitle_map_values[15][0] = "As the Software Maintenance Personnel, you will recieve calls from customers who have demands." ;
		_GameController_subtitle_map_values[16] = 23.3 ;
		_GameController_subtitle_map_values[17][0] = "You need to listen to them," ;
		_GameController_subtitle_map_values[18] = 24.5 ;
		_GameController_subtitle_map_values[19][0] = "and understand which feature they are talking about, and what needs to be done." ;
		_GameController_subtitle_map_values[20] = 29.8 ;
		_GameController_subtitle_map_values[21][0] = "For example, this gentleman is talking about the \"Playing Music\" feature," ;
		_GameController_subtitle_map_values[22] = 33.8 ;
		_GameController_subtitle_map_values[23][0] = "and claims it is broken." ;
		_GameController_subtitle_map_values[24] = 35.9 ;
		_GameController_subtitle_map_values[25][0] = "This means it has to be UPDATED." ;
		_GameController_subtitle_map_values[26] = 40.4 ;
		_GameController_subtitle_map_values[27][0] = "However, this lady is talking about the \"Ordering Food\" feature," ;
		_GameController_subtitle_map_values[28] = 44.2 ;
		_GameController_subtitle_map_values[29][0] = "and says it is pointless." ;
		_GameController_subtitle_map_values[30] = 46.6 ;
		_GameController_subtitle_map_values[31][0] = "This means that this feature needs to be TURNED OFF" ;
		_GameController_subtitle_map_values[32] = 51.3 ;
		_GameController_subtitle_map_values[33][0] = "That's all you have to do as the Software Maintenance Personnel." ;
		_GameController_subtitle_map_values[34] = 55.7 ;
		_GameController_subtitle_map_values[35][0] = "Make sure not to let the customers' patience run out." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorTutorial, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah yes... The first year of maintenance." ;
		_GameController_subtitle_map_values[2] = 3.6 ;
		_GameController_subtitle_map_values[3][0] = "The most important time of a young engineer's career." ;
		_GameController_subtitle_map_values[4] = 7.2 ;
		_GameController_subtitle_map_values[5][0] = "It is quite the work experience." ;
		_GameController_subtitle_map_values[6] = 9.5 ;
		_GameController_subtitle_map_values[7][0] = "The engineer will have to answer many calls during this time." ;
		_GameController_subtitle_map_values[8] = 13 ;
		_GameController_subtitle_map_values[9][0] = "We wish them the best of luck." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorPt1, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "And so, the engineer grows older, along with their software." ;
		_GameController_subtitle_map_values[2] = 4.3 ;
		_GameController_subtitle_map_values[3][0] = "As the years pass, there are less and less calls" ;
		_GameController_subtitle_map_values[4] = 7.2 ;
		_GameController_subtitle_map_values[5][0] = "giving the engineer time to relax." ;
		_GameController_subtitle_map_values[6] = 10 ;
		_GameController_subtitle_map_values[7][0] = "However, with the age of the software," ;
		_GameController_subtitle_map_values[8] = 12.1 ;
		_GameController_subtitle_map_values[9][0] = "some of the callers won't be customers at all." ;
		_GameController_subtitle_map_values[10] = 15.2 ;
		_GameController_subtitle_map_values[11][0] = "but rather, fraudulent deviants." ;
		_GameController_subtitle_map_values[12] = 17.8 ;
		_GameController_subtitle_map_values[13][0] = "Also known as SCAMMERS." ;
		_GameController_subtitle_map_values[14] = 20.2 ;
		_GameController_subtitle_map_values[15][0] = "Make sure to ignore them when they call." ;
		_GameController_subtitle_map_values[16] = 23.2 ;
		_GameController_subtitle_map_values[17][0] = "You may notice that, the Maintenance Machine itself" ;
		_GameController_subtitle_map_values[18] = 26.1 ;
		_GameController_subtitle_map_values[19][0] = "needs to be updated as well." ;
		_GameController_subtitle_map_values[20] = 28.3 ;
		_GameController_subtitle_map_values[21][0] = "This can be seen by the big blue button on the side." ;
		_GameController_subtitle_map_values[22] = 31.9 ;
		_GameController_subtitle_map_values[23][0] = "When there's a new update, it will glow a pretty blue." ;
		_GameController_subtitle_map_values[24] = 36.7 ;
		_GameController_subtitle_map_values[25][0] = "You must keep the system updated before it is too late." ;
		_GameController_subtitle_map_values[26] = 40.3 ;
		_GameController_subtitle_map_values[27][0] = "Now go forth engineer, the end is near." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorPt2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "After many painful years, the software's lifespan is over." ;
		_GameController_subtitle_map_values[2] = 4.7 ;
		_GameController_subtitle_map_values[3][0] = "The engineer is now free to roam the rose fields of Silicone Valley," ;
		_GameController_subtitle_map_values[4] = 8.6 ;
		_GameController_subtitle_map_values[5][0] = "until the end of time." ;
		_GameController_subtitle_map_values[6] = 10.7 ;
		_GameController_subtitle_map_values[7][0] = "All they have to do now," ;
		_GameController_subtitle_map_values[8] = 12 ;
		_GameController_subtitle_map_values[9][0] = "is SHUT THE SYSTEM DOWN." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorWin, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "How to survive without a job?" ;
		_GameController_subtitle_map_values[2] = 2.4 ;
		_GameController_subtitle_map_values[3][0] = "How to survive... Without... A job?" ;
		_GameController_subtitle_map_values[4] = 6 ;
		_GameController_subtitle_map_values[5][0] = "If you're find yourself watching this," ;
		_GameController_subtitle_map_values[6] = 7.7 ;
		_GameController_subtitle_map_values[7][0] = "then it is likely you've just been fired." ;
		_GameController_subtitle_map_values[8] = 10.3 ;
		_GameController_subtitle_map_values[9][0] = "If your job was indeed terminated," ;
		_GameController_subtitle_map_values[10] = 12.5 ;
		_GameController_subtitle_map_values[11][0] = "you may be interested in our educational tape:" ;
		_GameController_subtitle_map_values[12] = 14.8 ;
		_GameController_subtitle_map_values[13][0] = "\"HOW TO SURVIVE WITHOUT A JOB\"." ;
		_GameController_subtitle_map_values[14] = 17.4 ;
		_GameController_subtitle_map_values[15][0] = "Just go to a local university or a software company," ;
		_GameController_subtitle_map_values[16] = 20.5 ;
		_GameController_subtitle_map_values[17][0] = "and ask for the tape:" ;
		_GameController_subtitle_map_values[18] = 22.2 ;
		_GameController_subtitle_map_values[19][0] = "\"HOW TO SURVIVE WITHOUT A JOB\"." ;
		_GameController_subtitle_map_values[20] = 25.6 ;
		_GameController_subtitle_map_values[21][0] = "VIS Entertainment wishes you luck on the rest of your journey." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorLose, _GameController_subtitle_map_values) ;
		#endregion
		
		#endregion
		break ;
	
	case 1: 
		#region ||TURKISH||
		
		#region //IN MENU
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Waterfall zamanı." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Waterfall, o halde." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Öyleyse waterfall." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Agile başlıyoruz!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator3, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "İşte agile!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator4, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hadi agile!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator5, _GameController_subtitle_map_values) ;
		#endregion

		#region //PROJECT SELECTION STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tekrar hoşgeldin yeni çalışan! Seni aramızda görmek çok iyi." ;
		_GameController_subtitle_map_values[2] = 5.0 ;
		_GameController_subtitle_map_values[3][0] = "Şimdi... Lafı uzatmadan başlayalım, tamam mı?" ;
		_GameController_subtitle_map_values[4] = 8.0 ;
		_GameController_subtitle_map_values[5][0] = "Gördüğün üzere... Elimizdeki tek yazılım mühendisi sensin." ;
		_GameController_subtitle_map_values[6] = 13.0 ;
		_GameController_subtitle_map_values[7][0] = "Nedenini merak ediyorsundur." ;
		_GameController_subtitle_map_values[8] = 16.0 ;
		_GameController_subtitle_map_values[9][0] = "Çünkü... Eeee... Sen en iyisisin! Aynen, evet." ;
		_GameController_subtitle_map_values[10] = 19.8 ;
		_GameController_subtitle_map_values[11][0] = "Elimizde sen olduğun için başka yazılım mühendisine ihtiyacımız yok!" ;
		_GameController_subtitle_map_values[12] = 24.5 ;
		_GameController_subtitle_map_values[13][0] = "Sen özelsin ve seni seviyoruz." ;
		_GameController_subtitle_map_values[14] = 29.5 ;
		_GameController_subtitle_map_values[15][0] = "Neyse. Senin için birkaç projemiz var. Eee... Birini seç ve biraz para kazanalım, tamam mı?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "İlginç... Peki, başlayalım bakalım." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator1, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "ÇALIŞAN KOVMA SİSTEMİ'ni seçtin. Belki de ilk denek olursun." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah... ERİYEN AKLIN GÜNEŞİ... Klasik..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator3, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "İlginçtir ki, SIÇIŞ İZLEYİCİSİ'ni seçtin. *iç çeker* Pekala..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator4, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Yılların KIZ ARKADAŞ BULUCU'su. Çok fazla para kazandırır." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator5, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "TERÖR SONLANDIRICI zamanı! Hadi o dünya işgal eden uzaylıları durduralım!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator6, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "BABACIK KİM? *iç çeker* Kim bilir..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator7, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "İşte yepyeni ANTİ SAĞLIK UYGULAMASI! O kiloları kazanma zamanı, öyle değil mi?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator8, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Destur, HİPNOZ UYGULAMASI! Aklının içindeyim..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator9, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu davayı sadece bir APTAL DEDEKTÖRÜ çözebilir. Hadi bir deneyelim." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator10, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Nihai HER ŞEY YÖNETİM SİSTEMİ! Tanrıyı... oyna..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator11, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "İşte TATLI KEDİ BULUCU. Kız arkadaş bulucuyla karıştırma." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator12, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "BİR ŞEY. Nasıl hissettirdiğini biliyorsun... değil mi?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator13, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Neyi seçtin... YARDIM EDİN BU OYUNDA SIKIŞTIM? Ne? Peki, her neyse." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator14, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Demek AYAKKABI SIRALAYICI UYGULAMASI huh? Ayakkabıları yan yana sıralıyor mu yoksa ayakkabı sıralaması mı yapıyor?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator15, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "DUYARLI ANDROİD ile gelecek parlak. Eminim bunu kaldırabilirsin." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator16, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "İşte BEYİN YÜKLEYİCİ geliyor! Sonsuza dek, yaşa..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator17, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Şuna da bir bak, OKUL ZAMANI! Haha! Anladın mı? Evet? Evet." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator18, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tatlı hissettiğin zamanlarda, MÜHENDİS GİYDİRİCİ işine yarayabilir. Güven bana." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator19, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "İSİM YARATICI bir para basıcı. Çünkü insanlar beyinlerini kullanmaktan nefret ederler." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator20, _GameController_subtitle_map_values) ;
		#endregion

		#region //REQUIREMENTS GATHERING STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Geldik... Şimdi potansiyel müşterilerden ve hissedarlardan gereksinim toplama zamanı!" ;
		_GameController_subtitle_map_values[2] = 7.0 ;
		_GameController_subtitle_map_values[3][0] = "Lisanslı bir yazılım mühendisi olduğun için, neyin gereksinim olup olmadığını anlarsın herhalde." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hadi ya... Peki, iyi dinle." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bildiğin gibi, müşteriler ve hissedarlar sana düz gereksinim vermeyecek." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "Seninle konuşacaklar, ve dedikleri şeyin mantıklı bir gereksinim olup olmadığına karar vermen gerekecek." ;
		_GameController_subtitle_map_values[4] = 13.0 ;
		_GameController_subtitle_map_values[5][0] = "Gereksinim... Programda olması istenen ve ya gereken özelliklerdir." ;
		_GameController_subtitle_map_values[6] = 18.3 ;
		_GameController_subtitle_map_values[7][0] = "Hadi örnek bir gereksinime bakalım." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu arkadaş sisteme resim yüklemek istiyor. Bunun bir requirement olduğu belli: Resim yükleyebilmek." ;
		_GameController_subtitle_map_values[2] = 7.7 ;
		_GameController_subtitle_map_values[3][0] = "Ama... bunun ne tür bir gereksinim olduğunu bilmemiz gerek. Fonksiyonel ve non-fonksiyonel olmayan gereksinimlerden bahsediyoruz." ;
		_GameController_subtitle_map_values[4] = 16.0 ;
		_GameController_subtitle_map_values[5][0] = "Eğer bir gereksinim belli bir aksiyon belirtiyorsa, bu bir fonksiyondur ve yani fonksiyoneldir." ;
		_GameController_subtitle_map_values[6] = 23.0 ;
		_GameController_subtitle_map_values[7][0] = "Bu sistemin nasıl çalıştığını açıklar." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator3, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu örnekte, aksiyonumuz \"yüklemek\"tir (Upload). Yazılımın bir resim \"yükleme\" özelliği olması isteniyor." ;
		_GameController_subtitle_map_values[2] = 8.0 ;
		_GameController_subtitle_map_values[3][0] = "Peki sistem nasıl çalışacak? Sistem, kullanıcılara resim yükleme seçeneği sunmalıdır." ;
		_GameController_subtitle_map_values[4] = 13.8 ;
		_GameController_subtitle_map_values[5][0] = "Bu bir fonksiyonel gereksinimdir." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator4, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu arkadaş ise sistemimizi akşam 11'de bile kullanabilmek istiyor." ;
		_GameController_subtitle_map_values[2] = 4.5 ;
		_GameController_subtitle_map_values[3][0] = "Şimdi... Bu bir gereksinimdir, fakat belli bir aksiyon temsil etmiyor. Onun yerine sistemin performansı için bir kural koyuyor." ;
		_GameController_subtitle_map_values[4] = 12.5 ;
		_GameController_subtitle_map_values[5][0] = "Performans, bir sistem için hız, mevcutluk, kapasite, güvenilirlik ve kullanışlılık gibi faktörler demektir" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator5, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu örnekte, sistemin mevcutluğu ile ilgili bir şeye değinilmiştir." ;
		_GameController_subtitle_map_values[2] = 3.9 ;
		_GameController_subtitle_map_values[3][0] = "Yani sistemin performansı için ne diyebiliriz? Sistem, 7/24 kullanıma mevcut olmalıdır." ;
		_GameController_subtitle_map_values[4] = 11.4 ;
		_GameController_subtitle_map_values[5][0] = "Sistem 7/24 kullanıma mevcut olmalı. Bu bir non-fonksiyonel gereksinimdir." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator6, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tamam o zaman... Yine sorayım, MOSCOW metodunu bildiğini tahmin ediyorum." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator7, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Peki... İyi dinle." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator8, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "MOSCOW metodu, gereksinimleri önem sıralarına göre sıralamamızı sağlar." ;
		_GameController_subtitle_map_values[2] = 5.0 ;
		_GameController_subtitle_map_values[3][0] = "\"Olmalı\" (Must), \"Olsa iyi olur\" (Should), \"Olabilir\" (Could) ve \"Olmayacak\" (Won't) terimlerini kullanarak bir gereksinimin önemini belirtiriz." ;
		_GameController_subtitle_map_values[4] = 12.5 ;
		_GameController_subtitle_map_values[5][0] = "\"Olmalı\" en önemlisi, ve \"Olabilir\" de en az önemli olandır." ;
		_GameController_subtitle_map_values[6] = 17.6 ;
		_GameController_subtitle_map_values[7][0] = "\"Olmayacak\" direkt bir şeyin olmayacağını belirtir." ;
		_GameController_subtitle_map_values[8] = 21.5 ;
		_GameController_subtitle_map_values[9][0] = "Şimdilik sadece \"Olmalı\", \"Olsa iyi olur\" ve \"Olabilir\" ile ilgileneceğiz." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator9, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tabii ki müşteriler ve hissedarlar bir istek belirtirken direkt olarak MOSCOW terimlerini kullanmaz." ;
		_GameController_subtitle_map_values[2] = 7.5 ;
		_GameController_subtitle_map_values[3][0] = "Bu örneğe bakarsak, bu arkadaşın bu aksiyonu \"yapması gerektiği\"ni (Has to) görürüz. Bu belli ki önemi yüksek bir gereksinim." ;
		_GameController_subtitle_map_values[4] = 16.3 ;
		_GameController_subtitle_map_values[5][0] = "Yani, bu gereksinimin önemi \"Olmalı\"dır." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator10, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu örneğe bakarsak, bu kişinin bunu \"istediği\"ni (Would like to) görürüz." ;
		_GameController_subtitle_map_values[2] = 6.6 ;
		_GameController_subtitle_map_values[3][0] = "Bu gereksinimi istiyorlar, fakat bir acelesi yok. Yani, bu gereksinimin önemi \"Olsa iyi olur\" ile açıklanır." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator11, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Yani, insanlar farklı şeyleri farklı ifadelerle isterler. Senin işin de bunların önemini anlayabilmek." ;
		_GameController_subtitle_map_values[2] = 7.7 ;
		_GameController_subtitle_map_values[3][0] = "Şimdi sana birkaç örnek gösteriyorum." ;
		_GameController_subtitle_map_values[4] = 10.9 ;
		_GameController_subtitle_map_values[5][0] = "\"Yapmam gerek\", \"Yapmalıyım\" ve \"Yapmak çok iyi olur\" gibi ifadeler \"Olmalı\" önemine sahiptir." ;
		_GameController_subtitle_map_values[6] = 17.9 ;
		_GameController_subtitle_map_values[7][0] = "\"Yapsam iyi olur\", \"Yapmak isterim\" gibi ifadeler ise \"Olsa iyi olur\" önemine sahiptir." ;
		_GameController_subtitle_map_values[8] = 23.7 ;
		_GameController_subtitle_map_values[9][0] = "\"Yapabilmek hoş olur\" gibi ifadeler ise \"Olabilir\" önemine sahiptir." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator12, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Peki o zaman... Hadi gereksinimleri toplayalım." ;
		_GameController_subtitle_map_values[2] = 3.6 ;
		_GameController_subtitle_map_values[3][0] = "Toplaman gereken miktar duvardaki posterin üzerinde." ;
		_GameController_subtitle_map_values[4] = 8.1 ;
		_GameController_subtitle_map_values[5][0] = "Bol şans." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator13, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tebrikler, günü mükemmel tamamladın." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator14EndgameWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hadi be dostum... Yeterli gereksinim toplayamadın." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator15EndgameLoseByReq, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hadi be dostum... Belirtilen önemde olan yeterli gereksinim toplayamadın." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator16EndgameLoseByMoscow, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Aman tanrım... Baya batırdın. Bu bir felaket." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator17EndgameLoseByMistake, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu bir gereksinimdi! Kendine gel!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator18GameWasReq, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "O bir gereksinim değili. O bir saçmalıktı!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator19GameNotReq, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "O MOSCOW terimini toplamamalıydın! Dikkatli ol!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator20GameDontMethod, _GameController_subtitle_map_values) ;
		#endregion

		#region //REQUIREMENT CATEGORIZATION STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Yuh l*n biraz daha dikkatli ol!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckBad, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Peki, tamam. Devam et." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckGood, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Oha! Seni boşuna tutmamışız." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hey hey hey! En sevdiğim yazılım mühendisi nasılmış?" ;
		_GameController_subtitle_map_values[2] = 3.5 ;
		_GameController_subtitle_map_values[3][0] = "Neyse, umarım vaktin vardır..." ;
		_GameController_subtitle_map_values[4] = 6 ;
		_GameController_subtitle_map_values[5][0] = "çünkü birinin bu gereksinimleri incelemesi gerekiyor, anlarsın." ;
		_GameController_subtitle_map_values[6] = 8.5 ;
		_GameController_subtitle_map_values[7][0] = "Basit bir iş. Sadece kağıtta yazanı oku ve" ;
		_GameController_subtitle_map_values[8] = 11.2 ;
		_GameController_subtitle_map_values[9][0] = "doğru mektubun üstüne yerleştir." ;
		_GameController_subtitle_map_values[10] = 13.5 ;
		_GameController_subtitle_map_values[11][0] = "Fonksiyonel gereksinimler yeşil mektuba," ;
		_GameController_subtitle_map_values[12] = 15.5 ;
		_GameController_subtitle_map_values[13][0] = "Non-fonksiyonel olanlar kırmızı mektuba," ;
		_GameController_subtitle_map_values[14] = 17.3 ;
		_GameController_subtitle_map_values[15][0] = "ve veri ile ilgili gereksinimler ise sarı mektuba gider." ;
		_GameController_subtitle_map_values[16] = 20.1 ;
		_GameController_subtitle_map_values[17][0] = "Ah, bekle, verilerle ilgili olan gereksinimleri bilmiyorsun de mi?" ;
		_GameController_subtitle_map_values[18] = 24.2 ;
		_GameController_subtitle_map_values[19][0] = "O zaman iyi dinle aptal." ;
		_GameController_subtitle_map_values[20] = 25.6 ;
		_GameController_subtitle_map_values[21][0] = "Bu tür gereksinimlerde \"Sistem kredi kartı bilgilerini depolamalı\" gibi bir şey görebilirsin." ;
		_GameController_subtitle_map_values[22] = 29.4 ;
		_GameController_subtitle_map_values[23][0] = "Bu, sistemin bazı BİLGİ'leri DEPOLADIĞINI belirtir." ;
		_GameController_subtitle_map_values[24] = 32.6 ;
		_GameController_subtitle_map_values[25][0] = "Bilgi, yani Veri." ;
		_GameController_subtitle_map_values[26] = 34.2 ;
		_GameController_subtitle_map_values[27][0] = "Yani bu bir \"Veri gereksinimi\"dir." ;
		_GameController_subtitle_map_values[28] = 36 ;
		_GameController_subtitle_map_values[29][0] = "Bu kadar." ;
		_GameController_subtitle_map_values[30] = 37.3 ;
		_GameController_subtitle_map_values[31][0] = "Ha bir de, bazı kağıtlara dikkat et" ;
		_GameController_subtitle_map_values[32] = 39.3 ;
		_GameController_subtitle_map_values[33][0] = "çünkü her kağıt gerçek bir gereksinim değildir." ;
		_GameController_subtitle_map_values[34] = 41 ;
		_GameController_subtitle_map_values[35][0] = "Onları görmezden gelmelisin." ;
		_GameController_subtitle_map_values[36] = 42 ;
		_GameController_subtitle_map_values[37][0] = "Ehh halledersin bir şekilde." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorTutorial, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*İçeceği tükürür* Bitti mi?? Tamam, ııı hadi bakalım." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorFinish, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu... Bu kötü... Üzgünüm, atıldın." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorLose, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Etkileyici. Güzel. Hadi yanlışlarını görelim." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresCorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Peki, insanlık halidir." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresIncorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Görünüşe göre yapabileceğin her hatayı yapmışsın." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresNoCorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu kadar mı? Vay be, helal olsun!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresNoIncorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tamamdır! Artık yazılımı tasarlamaya geçebiliriz." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorWin, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Vee süren bitti. Bakalım ne yaptın." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorTimesUp, _GameController_subtitle_map_values) ;
		#endregion

		#region //DESIGN STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tüh ya. O kadar hata yapman yazık oldu." ;
		_GameController_subtitle_map_values[2] = 4 ;
		_GameController_subtitle_map_values[3][0] = "Iıı... Benim... Benim gitmem gerek." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorLose, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hepsini yaptın mı? Harika! O zaman sırada-" ;
		_GameController_subtitle_map_values[2] = 5 ;
		_GameController_subtitle_map_values[3][0] = "dur... bekle... uf..." ;
		_GameController_subtitle_map_values[4] = 7.5 ;
		_GameController_subtitle_map_values[5][0] = "ah... eyvah uyanıyor!!!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hey, sen! Bil balakım ne oldu?" ;
		_GameController_subtitle_map_values[2] = 2.5 ;
		_GameController_subtitle_map_values[3][0] = "Görünüşe göre yazılımın TASARIMINI da sen yapacaksın!" ;
		_GameController_subtitle_map_values[4] = 6.3 ;
		_GameController_subtitle_map_values[5][0] = "Çok zor olmamalı gerçi. Sadece... yap gitsin! Heh." ;
		_GameController_subtitle_map_values[6] = 9.8 ;
		_GameController_subtitle_map_values[7][0] = "Yok yok... Ama tek yapman gereken" ;
		_GameController_subtitle_map_values[8] = 11.3 ;
		_GameController_subtitle_map_values[9][0] = "doğru bir dil ve ihtiyacımız olan diyagramı seçmek." ;
		_GameController_subtitle_map_values[10] = 13.6 ;
		_GameController_subtitle_map_values[11][0] = "Ki bu basit olmalı. Muazzam Kaka Zeka'mız olan" ;
		_GameController_subtitle_map_values[12] = 16.8 ;
		_GameController_subtitle_map_values[13][0] = "FatGPT sana yardım edecek." ;
		_GameController_subtitle_map_values[14] = 19.8 ;
		_GameController_subtitle_map_values[15][0] = "Sonra özellikleri tasarlaman gerekecek." ;
		_GameController_subtitle_map_values[16] = 21.6 ;
		_GameController_subtitle_map_values[17][0] = "Fonksiyonel gereksinimler için, belirtilen olayların sırasını belirleyeceksin." ;
		_GameController_subtitle_map_values[18] = 24.9 ;
		_GameController_subtitle_map_values[19][0] = "Bazı veri gereksinimleri için ise değişken türlerini belirleyeceksin." ;
		_GameController_subtitle_map_values[20] = 28.8 ;
		_GameController_subtitle_map_values[21][0] = "Ve diğer veri gereksinimleri için Entity Relationship Diagram (ERD) çizeceksin." ;
		_GameController_subtitle_map_values[22] = 32.8 ;
		_GameController_subtitle_map_values[23][0] = "Sadece kutuları sürükleyerek doğru yerlere bırak." ;
		_GameController_subtitle_map_values[24] = 35.5 ;
		_GameController_subtitle_map_values[25][0] = "Ohh, bir de, galiba bilgisayarlarımıza virüs bulaştı..." ;
		_GameController_subtitle_map_values[26] = 38.6 ;
		_GameController_subtitle_map_values[27][0] = "reklamlara dikkat et." ;
		_GameController_subtitle_map_values[28] = 40.2 ;
		_GameController_subtitle_map_values[29][0] = "Yaparsın adamım. Bonne Chance." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorTutorial, _GameController_subtitle_map_values) ;
		#endregion

		#region //DEVELOPMENT STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ahhh... Kusura bakma ya... Sanki birisi bana kaşıkla falan vurdu." ;
		_GameController_subtitle_map_values[2] = 9.7 ;
		_GameController_subtitle_map_values[3][0] = "Bir süre kendimden geçmişim. Oh... Uff... Ahh!" ;
		_GameController_subtitle_map_values[4] = 17.0 ;
		_GameController_subtitle_map_values[5][0] = "Geliştirme aşamasına gelmişsin. Harika! Hahaha!" ;
		_GameController_subtitle_map_values[6] = 21.5 ;
		_GameController_subtitle_map_values[7][0] = "Peki, hadi şunu hızlıca halledelim ve ürünü çıkarmaya geçelim." ;
		_GameController_subtitle_map_values[8] = 28.0 ;
		_GameController_subtitle_map_values[9][0] = "Tabii ki test etme süreci de olacak. Şimdilik dert etme." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Öncelikle, kullanacağımız veri tabanını inşa edeceksin." ;
		_GameController_subtitle_map_values[2] = 4.7 ;
		_GameController_subtitle_map_values[3][0] = "Sonra da ürünün kendisini geliştireceksin." ;
		_GameController_subtitle_map_values[4] = 8.4 ;
		_GameController_subtitle_map_values[5][0] = "Eminim hepsini kendi başına halledebilirsin." ;
		_GameController_subtitle_map_values[6] = 12.5 ;
		_GameController_subtitle_map_values[7][0] = "Sen bizim süper yazılım mühendisimizsin. Hadi, hadi, hadi! Çalışmaya başla artık!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah... Bitirmişsin. Güzel! Hadi şu keratayı test edelim" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah... Bunca şeyden sonra... Planımızın gerisinde kalmışsın." ;
		_GameController_subtitle_map_values[2] = 6.8 ;
		_GameController_subtitle_map_values[3][0] = "Hayal kırıklığım akıl almayacak seviyede ve günüm mahvoldu." ;
		_GameController_subtitle_map_values[4] = 11.0 ;
		_GameController_subtitle_map_values[5][0] = "Hepsi senin sayende. Şimdi... Git burdan! Sadece... Ah! Kovuldun." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator3, _GameController_subtitle_map_values) ;
		#endregion

		#region //TESTING STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ürünü yayınlamadan önce test etmemiz gerek." ;
		_GameController_subtitle_map_values[2] = 3.3 ;
		_GameController_subtitle_map_values[3][0] = "Şimdi, birlikte biraz test yapacağız." ;
		_GameController_subtitle_map_values[4] = 7.1 ;
		_GameController_subtitle_map_values[5][0] = "Ve \"birlikte\" derken sadece seni kastettim. Sen biraz test yapacaksın." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Beyaz-kutu testi ve kara-kutu testinin ne olduğunu biliyor musun?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Güzel, o zaman kara-kutu testi yapacağını biliyorsundur." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Beyaz-kutu testi, yazılımın iç yapısını bilenler tarafından yapılır." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "Yazılımı test etmek için bazı fonksiyon gibi şeyler yazılır." ;
		_GameController_subtitle_map_values[4] = 11.0 ;
		_GameController_subtitle_map_values[5][0] = "Ona kıyasla, kara-kutu testi, yazılımın içini bilmeyen kişiler tarafından yapılır." ;
		_GameController_subtitle_map_values[6] = 18.0 ;
		_GameController_subtitle_map_values[7][0] = "Sonuçlarını görmek için programma sürekli manuel olarak farklı şeyler yapılır." ;
		_GameController_subtitle_map_values[8] = 24.6 ;
		_GameController_subtitle_map_values[9][0] = "Sistemin iç yapısını bilsen de, kara-kutu testi yapacaksın." ;
		_GameController_subtitle_map_values[10] = 30.5 ;
		_GameController_subtitle_map_values[11][0] = "Çünkü otomatik test gibi havalı şeyler yapmak için vaktimiz yok." ;
		_GameController_subtitle_map_values[12] = 35.7 ;
		_GameController_subtitle_map_values[13][0] = "Sadece programa birkaç şey gir ve çalışıyor mu gör." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator3, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tamam, şimdi beni iyi dinlemeni ve dediklerimi aklında canlandırmanı istiyorum." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator4, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Yazılım bir... Bombadır. Yani, amacı patlamaktır." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "Yani eğer patlarsa, çalıştı demektir! Ama bildiğimiz üzere, hiçbir şey mükemmel değildir." ;
		_GameController_subtitle_map_values[4] = 13.5 ;
		_GameController_subtitle_map_values[5][0] = "Gerçekte, test süreci asla bitmez. Aynı bug'lar gibi." ;
		_GameController_subtitle_map_values[6] = 18.2 ;
		_GameController_subtitle_map_values[7][0] = "Senin amacın, bu yazılım bombasını patlatmadan üstündeki modülleri çözmek." ;
		_GameController_subtitle_map_values[8] = 23.8 ;
		_GameController_subtitle_map_values[9][0] = "Kısacası, yazılımın amacına ulaşmasını engelleyen sorunları bulacaksın." ;
		_GameController_subtitle_map_values[10] = 29.4 ;
		_GameController_subtitle_map_values[11][0] = "Ha? Yazılımı nasıl mı bombaya çevirdik? Hahaha! " ;
		_GameController_subtitle_map_values[12] = 35.7 ;
		_GameController_subtitle_map_values[13][0] = "Çok soru sorma. Sadece denileni yap." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator5, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Yazılım patlamadan önce yeterince sorun bul. İyi şanslar." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator6, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Harika iş çıkardın! Bir sürü sorun buldun." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator7WinPerfect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Aferin. Yeterince sorun buldun." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator8WinEnough, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tüh... Başaramadın." ;
		_GameController_subtitle_map_values[2] = 3.5 ;
		_GameController_subtitle_map_values[3][0] = "Düzgün bir test süreci olmadan devam edemeyiz. Ahh..." ;
		_GameController_subtitle_map_values[4] = 9.0 ;
		_GameController_subtitle_map_values[5][0] = "Kovuldun." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator9Lose, _GameController_subtitle_map_values) ;
		#endregion

		#region //DEPLOYMENT STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Sonunda, burdayız! Haha! Hadi ürünü yayınlayım ki biraz para kazanayım! HAHAHA!" ;
		_GameController_subtitle_map_values[1][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[2] = 12.1 ;
		_GameController_subtitle_map_values[3][0] = "Sanırım... Sanırım bizi duyabiliyorlar." ;
		_GameController_subtitle_map_values[3][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[4] = 14.4 ;
		_GameController_subtitle_map_values[5][0] = "Hahaha... Tabii ki siz de biraz kazanacaksınız..." ;
		_GameController_subtitle_map_values[5][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[6] = 19.9 ;
		_GameController_subtitle_map_values[7][0] = "Peki... Eminim öyledir... Yani onun kim olduğunu sanıyorsunuz ki, şeytan mı?" ;
		_GameController_subtitle_map_values[7][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[8] = 23.6 ;
		_GameController_subtitle_map_values[9][0] = "Ben CEO'yum! Parayı alacağım ve sonra hakkınızı vereceğim." ;
		_GameController_subtitle_map_values[9][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[10] = 30.5 ;
		_GameController_subtitle_map_values[11][0] = "Bi... Biliyor musun? Belki de parayı benim almam gerekiyordur." ;
		_GameController_subtitle_map_values[11][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[12] = 33.2 ;
		_GameController_subtitle_map_values[13][0] = "Ne... Sen kimsin ki?" ;
		_GameController_subtitle_map_values[13][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[14] = 35.4 ;
		_GameController_subtitle_map_values[15][0] = "Oyunu yapan benim, asıl sen kimsin!?" ;
		_GameController_subtitle_map_values[15][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[16] = 37.6 ;
		_GameController_subtitle_map_values[17][0] = "*kavga*" ;
		_GameController_subtitle_map_values[17][1] = GameController_subtitle_text_color_a_and_t ;
		_GameController_subtitle_map_values[18] = 45.3 ;
		_GameController_subtitle_map_values[19][0] = "Tamam, tamam. Onları unutun. Sadece şu ürünü yayınlayalım, tamam mı?" ;
		_GameController_subtitle_map_values[19][1] = GameController_subtitle_text_color_s ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = noone ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tamam, sadece hazır olunca ürünü yayınlamak için şu büyük kırmızı düğmeye bas." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator1Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah bekle, önce şu dökümanı imzalaman gerek." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator2Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dur, dur. Bunu da imzalaman gerekecek." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator3Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hey, şu reklam tasarımına bak. Çok güzel değil mi?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator4Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bir de, şu sunucu sağlayıcısına da abone olman gerekecek." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator5Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah evet, neredeyse unutuyordum, bunların hepsini süre bitmeden tamamlamamız gerekecek." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator6Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah şu işe bak. Finansal durumumuzu dengelemek için bu sudoku kutucuğunu doldurman gerek. Neden diye sorma." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator7Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hey, yemeği kim sipariş etti? Senin mi bu? Alsana o zaman." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator8Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Her neyse, işninin ne kadar stresli olduğunu göstermek için ağlaman lazım. Hadi, ağla." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator9Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Lanet olsun, hep hatırlatmam mı gerek? Eşini arayıp onu sevdiğini ve onu asla aldatmayacağını söylemen lazım!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator10Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Hala neden buradayız, sadece sürünmek için?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator11Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Şuna bak. Başarılı olabilmek için bu 569 sayfalık belgeyi okuman gerekiyor. Neden mi? Çünkü ben öyle dedim." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator12Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Tuvalete gitmem gerek. Gerisini kendin yap." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator13Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*sifon çekilir*" ;
		_GameController_subtitle_map_values[2] = 2.1 ;
		_GameController_subtitle_map_values[3][0] = "Hah... İyi yaptın gibi görünüyor. Artık ürünün bakımıyla sorumlusun." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator14EndgameWon, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*sifon çekilir*" ;
		_GameController_subtitle_map_values[2] = 2.1 ;
		_GameController_subtitle_map_values[3][0] = "Ne üzücü bir durum... Görünüşe göre et ve ekmekten ibaret olan yemeğimi yemeye devam etmeliyim." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator15EndgameLost, _GameController_subtitle_map_values) ;
		#endregion
	
		#region //MAINTENANCE STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bakım nedir?" ;
		_GameController_subtitle_map_values[2] = 2.6 ;
		_GameController_subtitle_map_values[3][0] = "Bakım... Nedir?" ;
		_GameController_subtitle_map_values[4] = 4.2 ;
		_GameController_subtitle_map_values[5][0] = "Yazılımın bakımı nasıl yapılır?" ;
		_GameController_subtitle_map_values[6] = 5.8 ;
		_GameController_subtitle_map_values[7][0] = "Güncellemeler nedir?" ;
		_GameController_subtitle_map_values[8] = 7.2 ;
		_GameController_subtitle_map_values[9][0] = "Ve en önemlisi, bütün bunlar 90 saniye içerisinde öğretilir mi?" ;
		_GameController_subtitle_map_values[10] = 12.4 ;
		_GameController_subtitle_map_values[11][0] = "Neyse ki, bütün bu soruların cevabı EVET." ;
		_GameController_subtitle_map_values[12] = 16.3 ;
		_GameController_subtitle_map_values[13][0] = "Haydi inceleyelim." ;
		_GameController_subtitle_map_values[14] = 17.7 ;
		_GameController_subtitle_map_values[15][0] = "Yazılım Bakımcısı olarak, istekleri olan müşterilerden telefonlar alacaksın." ;
		_GameController_subtitle_map_values[16] = 23.3 ;
		_GameController_subtitle_map_values[17][0] = "Onları dinleyip," ;
		_GameController_subtitle_map_values[18] = 24.5 ;
		_GameController_subtitle_map_values[19][0] = "hangi özellikten bahsettiklerini, ve ne yapılması gerektiğini anlamanız gerekir." ;
		_GameController_subtitle_map_values[20] = 29.8 ;
		_GameController_subtitle_map_values[21][0] = "Mesela, bu beyefendi \"Müzik Çalma\" (Playing Music) özelliğinden bahsediyor," ;
		_GameController_subtitle_map_values[22] = 33.8 ;
		_GameController_subtitle_map_values[23][0] = "ve çalışmadığını iddia ediyor." ;
		_GameController_subtitle_map_values[24] = 35.9 ;
		_GameController_subtitle_map_values[25][0] = "Bu demektir ki bu özelliğin GÜNCELLENMESİ (Update) gerekiyor." ;
		_GameController_subtitle_map_values[26] = 40.4 ;
		_GameController_subtitle_map_values[27][0] = "Bu hanımefendi ise \"Yemek Siparişi\" (Ordering Food) özelliğinden bahsediyor" ;
		_GameController_subtitle_map_values[28] = 44.2 ;
		_GameController_subtitle_map_values[29][0] = "ve anlamsız olduğunu söylüyor." ;
		_GameController_subtitle_map_values[30] = 46.6 ;
		_GameController_subtitle_map_values[31][0] = "Bu da, bu özelliğin KAPATILMASI (Turn Off) gerektiğini belirtir." ;
		_GameController_subtitle_map_values[32] = 51.3 ;
		_GameController_subtitle_map_values[33][0] = "Bir Yazılım Bakımcısı olarak, tek yapman gereken budur." ;
		_GameController_subtitle_map_values[34] = 55.7 ;
		_GameController_subtitle_map_values[35][0] = "Müşterilerin sabrının (Patience) tükenmesine izin vermemelisin." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorTutorial, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Ah evet... Bakımın ilk yılı." ;
		_GameController_subtitle_map_values[2] = 3.6 ;
		_GameController_subtitle_map_values[3][0] = "Genç bir mühendisinin kariyerinin en önemli zamanı." ;
		_GameController_subtitle_map_values[4] = 7.2 ;
		_GameController_subtitle_map_values[5][0] = "Eşsiz bir iş deneyimi." ;
		_GameController_subtitle_map_values[6] = 9.5 ;
		_GameController_subtitle_map_values[7][0] = "Bu süre içinde, mühendisin bir çok kişiyle telefonda konuşur." ;
		_GameController_subtitle_map_values[8] = 13 ;
		_GameController_subtitle_map_values[9][0] = "Ona bol şans diliyoruz." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorPt1, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Bu şekilde mühendis, yazılımıyla beraber yaşlanır." ;
		_GameController_subtitle_map_values[2] = 4.3 ;
		_GameController_subtitle_map_values[3][0] = "Yıllar geçtikçe, arayanlar azalır," ;
		_GameController_subtitle_map_values[4] = 7.2 ;
		_GameController_subtitle_map_values[5][0] = "ve mühendise dinlenmesi için zaman kalır." ;
		_GameController_subtitle_map_values[6] = 10 ;
		_GameController_subtitle_map_values[7][0] = "Fakat, yazılımın yaşıyla beraber," ;
		_GameController_subtitle_map_values[8] = 12.1 ;
		_GameController_subtitle_map_values[9][0] = "arayanların bir kısmı artık müşteri değildir" ;
		_GameController_subtitle_map_values[10] = 15.2 ;
		_GameController_subtitle_map_values[11][0] = "ve aksine, yalancı sapkınlardır." ;
		_GameController_subtitle_map_values[12] = 17.8 ;
		_GameController_subtitle_map_values[13][0] = "Yani DOLANDIRICIlardır (Scammer)." ;
		_GameController_subtitle_map_values[14] = 20.2 ;
		_GameController_subtitle_map_values[15][0] = "Onlar aradığında görmezden gelinmelidir." ;
		_GameController_subtitle_map_values[16] = 23.2 ;
		_GameController_subtitle_map_values[17][0] = "Belki fark etmişsinizdir, ama Bakım Makinesi'nin kendisinin de" ;
		_GameController_subtitle_map_values[18] = 26.1 ;
		_GameController_subtitle_map_values[19][0] = "güncellenmesi gerekir." ;
		_GameController_subtitle_map_values[20] = 28.3 ;
		_GameController_subtitle_map_values[21][0] = "Bunu, yanındaki büyük mavi dümeden de görebilirsiniz." ;
		_GameController_subtitle_map_values[22] = 31.9 ;
		_GameController_subtitle_map_values[23][0] = "Yeni bir güncelleme geldiğinde, bu düğme maviş maviş yanar." ;
		_GameController_subtitle_map_values[24] = 36.7 ;
		_GameController_subtitle_map_values[25][0] = "Çok geç olmadan sistemi güncellemeniz gerekir." ;
		_GameController_subtitle_map_values[26] = 40.3 ;
		_GameController_subtitle_map_values[27][0] = "Şimdi devam, mühendis. Bitiş çizgisi yakın." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorPt2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Acı verici yıllar sonra, yazılım ömrünü doldurur." ;
		_GameController_subtitle_map_values[2] = 4.7 ;
		_GameController_subtitle_map_values[3][0] = "Mühendis, artık Silikon Vadisinin gül yaylalarında" ;
		_GameController_subtitle_map_values[4] = 8.6 ;
		_GameController_subtitle_map_values[5][0] = "istediği kadar gezebilir." ;
		_GameController_subtitle_map_values[6] = 10.7 ;
		_GameController_subtitle_map_values[7][0] = "Artık yapılması gereken tek şey," ;
		_GameController_subtitle_map_values[8] = 12 ;
		_GameController_subtitle_map_values[9][0] = "SİSTEMİN KAPATILMASIDIR." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorWin, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "İşsiz nasıl yaşanır?" ;
		_GameController_subtitle_map_values[2] = 2.4 ;
		_GameController_subtitle_map_values[3][0] = "İşsiz... Nasıl... Yaşanır?" ;
		_GameController_subtitle_map_values[4] = 6 ;
		_GameController_subtitle_map_values[5][0] = "Eğer kendinizi bunu izlerken bulduysanız," ;
		_GameController_subtitle_map_values[6] = 7.7 ;
		_GameController_subtitle_map_values[7][0] = "büyük ihtimalle kovuldunuz." ;
		_GameController_subtitle_map_values[8] = 10.3 ;
		_GameController_subtitle_map_values[9][0] = "Eğer işiniz gerçekten de sonlandırıldı ise," ;
		_GameController_subtitle_map_values[10] = 12.5 ;
		_GameController_subtitle_map_values[11][0] = "Eğitim kasedimiz ilginizi çekebilir:" ;
		_GameController_subtitle_map_values[12] = 14.8 ;
		_GameController_subtitle_map_values[13][0] = "\"İŞSİZ NASIL YAŞANIR\"." ;
		_GameController_subtitle_map_values[14] = 17.4 ;
		_GameController_subtitle_map_values[15][0] = "Sadece yakındaki bir üniversiteye ve ya yazılım şirketine gidin ve" ;
		_GameController_subtitle_map_values[16] = 20.5 ;
		_GameController_subtitle_map_values[17][0] = "şu kasedi isteyin:" ;
		_GameController_subtitle_map_values[18] = 22.2 ;
		_GameController_subtitle_map_values[19][0] = "\"İŞSİZ NASIL YAŞANIR\"." ;
		_GameController_subtitle_map_values[20] = 25.6 ;
		_GameController_subtitle_map_values[21][0] = "VIS Entertainment yolculuğunuzun geri kalanında şans diler." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorLose, _GameController_subtitle_map_values) ;
		#endregion
		
		#endregion
		break ;
	
	case 2:
		#region ||DEVDEV||
		
		#region //IN MENU
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdevdev, dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdevdev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdev devdevdev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator3, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdevdev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator4, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdevdev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snMenuNarrator5, _GameController_subtitle_map_values) ;
		#endregion

		#region //PROJECT SELECTION STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev dev dev devdevdev! Dev devdev dev dev dev devdev dev dev!" ;
		_GameController_subtitle_map_values[2] = 5.0 ;
		_GameController_subtitle_map_values[3][0] = "Dev... Dev dev devdev dev devdev, devdev?" ;
		_GameController_subtitle_map_values[4] = 8.0 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev... Dev dev dev devdev devdev devdevdevdev dev devdev." ;
		_GameController_subtitle_map_values[6] = 13.0 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev dev dev devdevdev dev." ;
		_GameController_subtitle_map_values[8] = 16.0 ;
		_GameController_subtitle_map_values[9][0] = "Devdev dev dev... Dev... Dev dev dev dev! Dev, dev..." ;
		_GameController_subtitle_map_values[10] = 19.8 ;
		_GameController_subtitle_map_values[11][0] = "Dev dev dev dev devdev devdev devdevdevdev devdev dev dev dev!" ;
		_GameController_subtitle_map_values[12] = 24.5 ;
		_GameController_subtitle_map_values[13][0] = "Dev dev devdevdev dev dev dev dev." ;
		_GameController_subtitle_map_values[14] = 29.5 ;
		_GameController_subtitle_map_values[15][0] = "Devdevdev, dev dev dev devdevdev devdevdev dev dev. Dev... Devdev dev, dev dev dev dev devdev, devdev?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdevdevdev devdev. Dev... Devdev, dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator1, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev devdevdev dev DEVDEVDEV DEVDEVDEV DEVDEV. Devdev dev dev dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev... Dev DEV DEV DEVDEV DEV... Devdevdev..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator3, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdevdevdevdev, devdev devdev DEVDEV DEVDEVDEV. Dev... Devdev dev..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator4, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev, dev DEVDEVDEV DEVDEV. Dev devdev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator5, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev DEVDEV DEVDEV! Dev devdev devdev dev devdevdev devdevdev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator6, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "DEV DEV DEV DEVDEV? Dev... Dev dev..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator7, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdev-dev DEVDEV DEVDEV DEV! Dev dev dev dev dev, dev Dev dev?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator8, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, DEVDEV DEV! Dev dev dev dev dev..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator9, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev dev DEVDEVDEV DEVDEVDEV dev dev dev dev. Dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator10, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdevdev DEVDEVDEV DEVDEVDEV DEVDEV! Devdev... dev..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator11, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev DEV DEV DEVDEV. Dev devdev dev dev devdevdev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator12, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev DEVDEV. Dev dev dev devdev... dev dev?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator13, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev devdev... DEV DEV DEV DEVDEV DEV DEV DEV? Dev? Dev, devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator14, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev, DEV DEVDEV DEV dev? Dev dev devdev devdev dev devdev dev devdev dev devdev dev dev?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator15, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev dev devdev dev DEVDEVDEV DEVDEVDEVDEV. Dev dev dev dev devdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator16, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev devdev dev DEVDEV DEVDEVDEVDEV! Dev, devdevdev..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator17, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev dev dev, dev DEVDEV DEV! Devdev! Dev dev? Dev? Dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator18, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdev dev, DEVDEVDEVDEV DEVDEVDEV dev dev dev. Devdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator19, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "DEV DEVDEVDEV dev dev devdev devdevdev. Devdev devdev dev devdev devdev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStagePSNarrator20, _GameController_subtitle_map_values) ;
		#endregion

		#region //REQUIREMENTS GATHERING STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdev... Dev dev dev devdev dev devdevdevdevdev devdev devdevdev devdevdev dev devdevdevdev." ;
		_GameController_subtitle_map_values[2] = 7.0 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev dev dev devdevdev devdev devdevdevdev, Dev devdev dev dev dev dev dev devdevdevdevdev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev... Devdev... Dev, devdev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev... dev dev, devdevdev dev devdevdevdev dev dev dev dev dev devdev devdevdevdevdev." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev dev dev dev, dev dev dev dev devdevdevdev dev dev dev dev dev dev dev dev dev devdevdevdevdev dev dev." ;
		_GameController_subtitle_map_values[4] = 13.0 ;
		_GameController_subtitle_map_values[5][0] = "Devdevdevdev dev... devdev dev devdev devdev dev devdev devdev dev devdev." ;
		_GameController_subtitle_map_values[6] = 18.3 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev dev dev devdevdev devdev dev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdev dev devdevdev dev devdev dev dev devdev. Dev dev devdevdevdev dev devdevdevdevdev: Devdev devdev dev devdevdev dev devdev." ;
		_GameController_subtitle_map_values[2] = 7.7 ;
		_GameController_subtitle_map_values[3][0] = "Dev... dev dev dev dev dev dev dev dev devdevdevdevdev dev dev. Dev dev devdev devdev devdevdev dev dev-devdevdev devdevdevdevdev." ;
		_GameController_subtitle_map_values[4] = 16.0 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev devdevdevdevdev devdev dev devdev, dev dev dev devdev, dev dev dev dev devdevdev devdevdevdevdev." ;
		_GameController_subtitle_map_values[6] = 23.0 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev dev devdevdev dev dev devdev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator3, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdevdev, dev devdev dev \"devdevdevdev\". Dev dev devdev dev dev dev dev devdevdevdev dev \"devdevdevdev\" dev devdev." ;
		_GameController_subtitle_map_values[2] = 8.0 ;
		_GameController_subtitle_map_values[3][0] = "Dev, dev dev dev devdev dev? Dev devdev dev dev devdev devdevdev devdev." ;
		_GameController_subtitle_map_values[4] = 13.8 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev dev devdevdev devdevdevdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator4, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev dev dev dev devdev dev dev devDEV." ;
		_GameController_subtitle_map_values[2] = 4.5 ;
		_GameController_subtitle_map_values[3][0] = "Dev... Dev dev dev devdevdevdevdev, dev dev dev dev devdev dev devdev. Dev devdevdev dev dev devdev dev devdev." ;
		_GameController_subtitle_map_values[4] = 12.5 ;
		_GameController_subtitle_map_values[5][0] = "Devdevdev dev dev devdevdev dev devdev devdev, devdevdevdevdevdev, devdevdevdev, devdevdevdevdevdev, devdevdevdevdev, dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator5, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdevdev, devdevdevdevdevdev dev dev devdev dev devdevdev." ;
		_GameController_subtitle_map_values[2] = 3.9 ;
		_GameController_subtitle_map_values[3][0] = "Dev, dev dev dev devdev devdev? Dev devdev dev dev devdevdevdev... dev dev... devdevdevdev/devdev." ;
		_GameController_subtitle_map_values[4] = 11.4 ;
		_GameController_subtitle_map_values[5][0] = "Dev devdev dev dev devdevdevdev devdevdevdev/devdev. Dev dev dev dev-devdevdev devdevdevdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator6, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev dev... Devdev... Dev dev dev dev dev DEVDEV devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator7, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev... Devdev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator8, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev DEVDEV devdev dev dev devdevdevdevdev devdevdevdevdev dev dev dev devdevdev dev dev." ;
		_GameController_subtitle_map_values[2] = 5.0 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev \"dev dev\", \"dev dev\", \"dev dev\", dev \"dev dev\" dev dev dev devdev dev devdevdev dev dev devdevdevdevdev." ;
		_GameController_subtitle_map_values[4] = 12.5 ;
		_GameController_subtitle_map_values[5][0] = "\"Dev dev\" devdev dev dev devdevdev dev \"dev dev\" devdev dev devdev devdevdev." ;
		_GameController_subtitle_map_values[6] = 17.6 ;
		_GameController_subtitle_map_values[7][0] = "\"Dev dev\" devdevdev devdev dev dev dev dev devdevdevdev." ;
		_GameController_subtitle_map_values[8] = 21.5 ;
		_GameController_subtitle_map_values[9][0] = "Dev, dev dev devdev dev devdev \"dev\", \"dev\", \"dev\" dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator9, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdev devdevdev dev devdevdevdev devdevdev dev dev devdevdev dev DEVDEV dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[2] = 7.5 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev dev dev dev devdevdev, dev dev dev dev dev dev \"dev dev\" dev dev devdev. Dev dev dev devdevdevdev devdev devdevdev devdev." ;
		_GameController_subtitle_map_values[4] = 16.3 ;
		_GameController_subtitle_map_values[5][0] = "Dev, dev devdevdevdevdev dev dev \"dev dev\" devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator10, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev dev dev devdevdev, dev dev dev dev dev dev \"dev dev dev\" dev dev." ;
		_GameController_subtitle_map_values[2] = 6.6 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev dev devdevdevdevdev, dev dev dev devdev. Dev, dev devdevdevdevdev dev dev \"dev dev\" devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator11, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev, devdev dev dev devdev dev devdevdev devdevdevdev dev dev dev dev dev devdevdevdev dev devdevdev dev dev." ;
		_GameController_subtitle_map_values[2] = 7.7 ;
		_GameController_subtitle_map_values[3][0] = "Dev devdevdev devdev dev dev dev dev devdevdev." ;
		_GameController_subtitle_map_values[4] = 10.9 ;
		_GameController_subtitle_map_values[5][0] = "\"Dev dev dev\", \"Dev dev dev\", \"Dev devdev dev dev\" dev devdevdevdev devdev dev \"dev dev\" devdevdev." ;
		_GameController_subtitle_map_values[6] = 17.9 ;
		_GameController_subtitle_map_values[7][0] = "\"Dev dev dev dev\", \"Dev dev dev\" dev devdevdevdev devdev dev \"dev dev\" devdevdev." ;
		_GameController_subtitle_map_values[8] = 23.7 ;
		_GameController_subtitle_map_values[9][0] = "\"Dev dev dev dev dev\" dev devdevdevdev devdev dev \"dev dev\" devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator12, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev... Dev devdev devdevdev devdevdevdevdev." ;
		_GameController_subtitle_map_values[2] = 3.6 ;
		_GameController_subtitle_map_values[3][0] = "Dev devdev dev dev dev devdev dev dev dev devdev dev dev dev dev dev." ;
		_GameController_subtitle_map_values[4] = 8.1 ;
		_GameController_subtitle_map_values[5][0] = "Devdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator13, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, devdev devdev dev dev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator14EndgameWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev... Dev devdev devdevdev devdev devdevdevdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator15EndgameLoseByReq, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev... Dev devdev devdevdev devdev devdevdevdevdev dev devdev devdevdevdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator16EndgameLoseByMoscow, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev... Devdev devdevdev devdevdev. Dev dev dev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator17EndgameLoseByMistake, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev devdevdevdevdev. Dev devdev devdevdev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator18GameWasReq, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdev dev devdevdevdevdev. Dev dev devdev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator19GameNotReq, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev devdev dev DEVDEV dev! Dev devdev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageRANarrator20GameDontMethod, _GameController_subtitle_map_values) ;
		#endregion

		#region //REQUIREMENT CATEGORIZATION STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev **** dev dev devdev dev devdev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckBad, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, devdev. Dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckGood, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev Dev dev! Dev devdev dev devdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorCheckWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev! Devdev dev devdevdev devdev devdevdevdev devdev?" ;
		_GameController_subtitle_map_values[2] = 3.5 ;
		_GameController_subtitle_map_values[3][0] = "Devdevdev, Dev dev dev dev dev devdev dev..." ;
		_GameController_subtitle_map_values[4] = 6 ;
		_GameController_subtitle_map_values[5][0] = "devdev devdevdev dev dev devdevdev devdev devdevdevdevdev, dev dev?" ;
		_GameController_subtitle_map_values[6] = 8.5 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev devdev dev. Dev devdev devdev dev dev devdev dev" ;
		_GameController_subtitle_map_values[8] = 11.2 ;
		_GameController_subtitle_map_values[9][0] = "dev dev dev dev dev dev devdev devdevdev." ;
		_GameController_subtitle_map_values[10] = 13.5 ;
		_GameController_subtitle_map_values[11][0] = "Devdevdev requirements dev dev dev devdev devdevdev," ;
		_GameController_subtitle_map_values[12] = 15.5 ;
		_GameController_subtitle_map_values[13][0] = "Dev-Devdevdev dev dev dev dev dev dev," ;
		_GameController_subtitle_map_values[14] = 17.3 ;
		_GameController_subtitle_map_values[15][0] = "dev Devdev devdevdevdevdev dev dev dev devdev dev." ;
		_GameController_subtitle_map_values[16] = 20.1 ;
		_GameController_subtitle_map_values[17][0] = "Dev, dev, dev dev dev dev DEVDEV devdevdevdevdev dev dev dev?" ;
		_GameController_subtitle_map_values[18] = 24.2 ;
		_GameController_subtitle_map_values[19][0] = "Dev devdev dev, dev." ;
		_GameController_subtitle_map_values[20] = 25.6 ;
		_GameController_subtitle_map_values[21][0] = "Dev dev dev devdev dev \"Dev devdev dev dev dev devdevdev dev devdevdevdev\"." ;
		_GameController_subtitle_map_values[22] = 29.4 ;
		_GameController_subtitle_map_values[23][0] = "Dev devdev dev devdev dev dev devdev DEVDEVDEVDEV." ;
		_GameController_subtitle_map_values[24] = 32.6 ;
		_GameController_subtitle_map_values[25][0] = "Devdev devdev dev DEVDEV." ;
		_GameController_subtitle_map_values[26] = 34.2 ;
		_GameController_subtitle_map_values[27][0] = "Dev dev dev dev DEVDEV devdevdevdevdev." ;
		_GameController_subtitle_map_values[28] = 36 ;
		_GameController_subtitle_map_values[29][0] = "Devdev dev." ;
		_GameController_subtitle_map_values[30] = 37.3 ;
		_GameController_subtitle_map_values[31][0] = "Dev devdev, dev devdev dev dev dev dev devdev" ;
		_GameController_subtitle_map_values[32] = 39.3 ;
		_GameController_subtitle_map_values[33][0] = "devdev dev dev dev devdevdevdevdev dev dev." ;
		_GameController_subtitle_map_values[34] = 41 ;
		_GameController_subtitle_map_values[35][0] = "Dev dev devdev dev." ;
		_GameController_subtitle_map_values[36] = 42 ;
		_GameController_subtitle_map_values[37][0] = "Dev devdev devdev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorTutorial, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*Devdev devdev* Devdev dev?? Devdev, dev, dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorFinish, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev... Dev dev dev... Dev devdev, devdev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorLose, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdevdevdev. Devdev dev. Dev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresCorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, devdev dev devdev devdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresIncorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdevdev dev dev devdev devdev dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresNoCorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev dev? Dev, devdev, dev dev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorScoresNoIncorrect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev! Dev dev dev devdev dev dev devdevdev dev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorWin, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdev dev. Dev dev dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageRCNarratorTimesUp, _GameController_subtitle_map_values) ;
		#endregion

		#region //DESIGN STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdev dev devdev. Dev dev dev dev dev dev dev devdev devdev." ;
		_GameController_subtitle_map_values[2] = 4 ;
		_GameController_subtitle_map_values[3][0] = "Dev... Dev... Dev dev dev dev..." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorLose, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev dev? Devdev devdev! Dev dev dev dev dev devdev-" ;
		_GameController_subtitle_map_values[2] = 5 ;
		_GameController_subtitle_map_values[3][0] = "devdev... dev... dev dev..." ;
		_GameController_subtitle_map_values[4] = 7.5 ;
		_GameController_subtitle_map_values[5][0] = "dev dev dev DEVDEV devdev devdev dev!!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorWin, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev, dev dev! Dev devdev dev?" ;
		_GameController_subtitle_map_values[2] = 2.5 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev dev, devdev devdev dev dev DEVDEV dev devdevdev dev dev!" ;
		_GameController_subtitle_map_values[4] = 6.3 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev dev devdevdev devdev devdev! Dev... dev dev! Dev." ;
		_GameController_subtitle_map_values[6] = 9.8 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev... Dev dev dev dev dev dev dev" ;
		_GameController_subtitle_map_values[8] = 11.3 ;
		_GameController_subtitle_map_values[9][0] = "devdev dev devdev devdevdev dev dev devdevdev dev devdev." ;
		_GameController_subtitle_map_values[10] = 13.6 ;
		_GameController_subtitle_map_values[11][0] = "Dev dev dev devdev. Dev devdevdev Devdevdevdev Devdevdevdev," ;
		_GameController_subtitle_map_values[12] = 16.8 ;
		_GameController_subtitle_map_values[13][0] = "DevDEV dev devdev dev dev dev dev." ;
		_GameController_subtitle_map_values[14] = 19.8 ;
		_GameController_subtitle_map_values[15][0] = "Dev, devdev dev dev devdev dev devdev." ;
		_GameController_subtitle_map_values[16] = 21.6 ;
		_GameController_subtitle_map_values[17][0] = "Dev dev devdevdev devdevdevdevdev, devdev devdev dev devdev dev devdev." ;
		_GameController_subtitle_map_values[18] = 24.9 ;
		_GameController_subtitle_map_values[19][0] = "Dev dev dev devdev devdevdevdevdev, devdev dev dev devdev devdev dev devdev dev dev dev devdev." ;
		_GameController_subtitle_map_values[20] = 28.8 ;
		_GameController_subtitle_map_values[21][0] = "Dev dev dev devdev devdev devdevdevdev devdev devdev Devdevdev Devdevdevdev Devdevdev (DEV)." ;
		_GameController_subtitle_map_values[22] = 32.8 ;
		_GameController_subtitle_map_values[23][0] = "Dev devdev dev devdev dev devdev dev dev devdev devdev." ;
		_GameController_subtitle_map_values[24] = 35.5 ;
		_GameController_subtitle_map_values[25][0] = "Dev, dev, dev devdev dev dev devdev dev dev devdevdev dev..." ;
		_GameController_subtitle_map_values[26] = 38.6 ;
		_GameController_subtitle_map_values[27][0] = "dev devdev dev dev dev." ;
		_GameController_subtitle_map_values[28] = 40.2 ;
		_GameController_subtitle_map_values[29][0] = "Dev devdevdev dev dev dev. Devdev Dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_t ;
		ds_map_add(GameController_subtitle_map, snStageDsNarratorTutorial, _GameController_subtitle_map_values) ;
		#endregion

		#region //DEVELOPMENT STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev... Devdev dev... Dev dev devdev dev dev dev dev devdev dev devdev." ;
		_GameController_subtitle_map_values[2] = 9.7 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev devdevdev dev dev devdev. Dev... Dev... Dev!" ;
		_GameController_subtitle_map_values[4] = 17.0 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev dev dev devdevdevdev dev. Devdevdevdevdev! Devdevdev!" ;
		_GameController_subtitle_map_values[6] = 21.5 ;
		_GameController_subtitle_map_values[7][0] = "Devdev, dev devdevdev devdev dev dev dev dev devdev dev devdevdev." ;
		_GameController_subtitle_map_values[8] = 28.0 ;
		_GameController_subtitle_map_values[9][0] = "Dev devdev dev dev dev devdev dev. Dev devdev devdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, dev dev dev devdevdev dev devdevdev dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[2] = 4.7 ;
		_GameController_subtitle_map_values[3][0] = "Dev devdevdev, dev dev dev devdevdev dev devdevdev." ;
		_GameController_subtitle_map_values[4] = 8.4 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev dev dev devdev dev dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[6] = 12.5 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev dev devdev devdev devdevdevdev. Dev dev, dev dev, dev dev! Devdev devdev, dev!" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev... Devdev devdevdev. Dev! Dev dev dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev... Devdev dev dev... Dev dev devdev dev devdevdevdev." ;
		_GameController_subtitle_map_values[2] = 6.8 ;
		_GameController_subtitle_map_values[3][0] = "Dev devdevdevdevdev dev devdevdevdevdev dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[4] = 11.0 ;
		_GameController_subtitle_map_values[5][0] = "Dev devdev dev dev. Dev... Dev dev! Dev... Dev! Dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageDNarrator3, _GameController_subtitle_map_values) ;
		#endregion

		#region //TESTING STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev dev dev devdevdev dev devdevdev." ;
		_GameController_subtitle_map_values[2] = 3.3 ;
		_GameController_subtitle_map_values[3][0] = "Dev, dev dev devdev dev dev dev devdev dev." ;
		_GameController_subtitle_map_values[4] = 7.1 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev Dev dev dev Dev dev dev. Dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev dev dev-dev dev devdev-dev devdev dev?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator1, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, dev dev dev dev dev devdev dev devdev devdev-dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator2, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev-dev devdev dev dev dev devdev dev dev dev devdevdev devdevdev dev dev devdev." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "Dev devdev dev devdev dev devdevdev dev devdevdevdevdevdevdev dev dev dev." ;
		_GameController_subtitle_map_values[4] = 11.0 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev devdev dev, devdev-dev devdev dev dev dev devdev dev dev devdev devdev dev devdev devdevdev devdev." ;
		_GameController_subtitle_map_values[6] = 18.0 ;
		_GameController_subtitle_map_values[7][0] = "Dev devdev dev devdevdev devdev dev dev devdevdev devdevdevdev dev devdev dev devdevdev." ;
		_GameController_subtitle_map_values[8] = 24.6 ;
		_GameController_subtitle_map_values[9][0] = "Dev devdev dev dev dev devdevdev devdevdev dev dev devdev, dev dev devdev devdev-dev devdev." ;
		_GameController_subtitle_map_values[10] = 30.5 ;
		_GameController_subtitle_map_values[11][0] = "Devdev dev dev dev dev dev devdevdev dev devdevdevdevdev devdev dev devdev dev dev." ;
		_GameController_subtitle_map_values[12] = 35.7 ;
		_GameController_subtitle_map_values[13][0] = "Dev dev dev devdev dev dev dev dev devdev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator3, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, Dev dev dev dev devdev dev dev devdevdev dev devdev dev devdev dev Dev devdev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator4, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev devdev... dev dev dev. Dev, dev devdev dev dev devdevdev." ;
		_GameController_subtitle_map_values[2] = 6.0 ;
		_GameController_subtitle_map_values[3][0] = "Dev... Dev dev devdevdev, dev dev! Dev dev dev devdev dev devdev." ;
		_GameController_subtitle_map_values[4] = 13.5 ;
		_GameController_subtitle_map_values[5][0] = "Dev devdevdevdev, devdev devdev dev dev dev dev." ;
		_GameController_subtitle_map_values[6] = 18.2 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev dev dev devdev dev devdev dev dev devdev dev devdev devdevdevdev dev." ;
		_GameController_subtitle_map_values[8] = 23.8 ;
		_GameController_subtitle_map_values[9][0] = "Dev devdev dev dev dev dev dev devdevdev devdev devdev devdevdev dev devdev." ;
		_GameController_subtitle_map_values[10] = 29.4 ;
		_GameController_subtitle_map_values[11][0] = "Dev? Dev dev dev dev dev devdev devdev dev dev? Devdevdev! " ;
		_GameController_subtitle_map_values[12] = 35.7 ;
		_GameController_subtitle_map_values[13][0] = "Dev dev dev devdev devdevdev. Dev dev dev Dev devdev dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator5, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev devdev bugs devdev dev devdev devdevdev. Devdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator6, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev devdev dev! Devdev devdev dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator7WinPerfect, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev dev. Devdev devdev devdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator8WinEnough, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev... Dev dev devdev." ;
		_GameController_subtitle_map_values[2] = 3.5 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev devdevdev devdev dev devdevdev devdev. Dev..." ;
		_GameController_subtitle_map_values[4] = 9.0 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_a ;
		ds_map_add(GameController_subtitle_map, snStageTNarrator9Lose, _GameController_subtitle_map_values) ;
		#endregion

		#region //DEPLOYMENT STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdevdev, devdev dev dev! Devdev! Dev devdev dev devdevdev dev dev dev dev devdev! DEVDEVDEV!" ;
		_GameController_subtitle_map_values[1][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[2] = 12.1 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev... Dev dev dev dev devdev dev." ;
		_GameController_subtitle_map_values[3][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[4] = 14.4 ;
		_GameController_subtitle_map_values[5][0] = "Devdevdev... Dev devdev dev dev dev dev dev dev..." ;
		_GameController_subtitle_map_values[5][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[6] = 19.9 ;
		_GameController_subtitle_map_values[7][0] = "Dev... Dev devdev... Dev devdev dev dev dev dev dev dev, dev devdev?" ;
		_GameController_subtitle_map_values[7][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[8] = 23.6 ;
		_GameController_subtitle_map_values[9][0] = "Dev dev dev DEV! Dev dev dev dev devdev, dev Dev dev dev dev dev dev dev devdev!" ;
		_GameController_subtitle_map_values[9][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[10] = 30.5 ;
		_GameController_subtitle_map_values[11][0] = "Dev... Dev dev dev? Devdev Dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[11][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[12] = 33.2 ;
		_GameController_subtitle_map_values[13][0] = "Dev... Dev dev dev devdev dev dev!?" ;
		_GameController_subtitle_map_values[13][1] = GameController_subtitle_text_color_a ;
		_GameController_subtitle_map_values[14] = 35.4 ;
		_GameController_subtitle_map_values[15][0] = "Dev dev dev devdev dev dev, dev dev dev!?" ;
		_GameController_subtitle_map_values[15][1] = GameController_subtitle_text_color_t ;
		_GameController_subtitle_map_values[16] = 37.6 ;
		_GameController_subtitle_map_values[17][0] = "*devdev*" ;
		_GameController_subtitle_map_values[17][1] = GameController_subtitle_text_color_a_and_t ;
		_GameController_subtitle_map_values[18] = 45.3 ;
		_GameController_subtitle_map_values[19][0] = "Devdev, devdev... Dev dev devdev devdev devdev dev. Dev dev devdev dev devdevdev, dev dev?" ;
		_GameController_subtitle_map_values[19][1] = GameController_subtitle_text_color_s ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = noone ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator0, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, dev devdev dev dev dev devdev devdevdev dev dev dev dev devdev dev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator1Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev, dev devdevdev dev dev dev dev devdevdev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator2Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev, dev dev. Dev dev dev dev dev devdevdev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator3Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev, dev dev dev dev devdev. Devdevdevdev devdev dev?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator4Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev, devdev dev devdev dev dev dev devdevdev dev dev devdev devdevdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator5Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev, Dev devdev devdev dev dev dev dev dev dev devdev dev dev devdev devdev dev dev dev dev. Dev dev dev dev devdevdevdev, dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator6Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev, dev dev dev dev dev. Dev dev dev dev dev devdevdev dev devdevdev dev devdev dev devdevdev devdevdev. Dev dev dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator7Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev, dev dev dev devdevdev dev? Dev dev devdev? Dev, dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator8Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev, dev devdev dev dev dev devdevdev dev dev dev, dev dev dev devdev devdev dev. Dev, dev devdev, dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator9Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev, dev Dev dev dev devdev dev dev dev dev dev dev dev devdev dev dev dev devdev dev dev dev dev dev devdev dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator10Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev devdev devdev, dev dev devdev?" ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator11Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev, dev dev dev dev dev devdevdevdevdevdevdevdev devdev dev devdevdev dev dev devdevdev. Dev dev dev dev dev dev dev? Devdev Dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator12Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev dev dev dev dev devdev. Dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator13Gameplay, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*devdevdev devdev*" ;
		_GameController_subtitle_map_values[2] = 2.1 ;
		_GameController_subtitle_map_values[3][0] = "Dev... Dev dev dev dev dev. Devdev dev dev, dev dev devdevdev dev devdevdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator14EndgameWon, _GameController_subtitle_map_values) ;

		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "*devdevdev devdev*" ;
		_GameController_subtitle_map_values[2] = 2.1 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev devdevdevdev... Dev devdev dev Dev dev devdevdev devdevdev dev dev dev devdev devdev dev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_s ;
		ds_map_add(GameController_subtitle_map, snStageDpNarrator15EndgameLost, _GameController_subtitle_map_values) ;
		#endregion
	
		#region //MAINTENANCE STAGE
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdevdevdev?" ;
		_GameController_subtitle_map_values[2] = 2.6 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev... Devdevdevdev?" ;
		_GameController_subtitle_map_values[4] = 4.2 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev devdev devdevdevdev?" ;
		_GameController_subtitle_map_values[6] = 5.8 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev devdev?" 
		_GameController_subtitle_map_values[8] = 7.2 ;
		_GameController_subtitle_map_values[9][0] = "Dev dev devdevdevdev, dev dev dev devdev dev dev devdevdevdev devdev devdev devdev?" 
		_GameController_subtitle_map_values[10] = 12.4 ;
		_GameController_subtitle_map_values[11][0] = "Devdevdev, dev dev dev dev dev dev devdevdev dev DEV." ;
		_GameController_subtitle_map_values[12] = 16.3 ;
		_GameController_subtitle_map_values[13][0] = "Dev dev devdev." ;
		_GameController_subtitle_map_values[14] = 17.7 ;
		_GameController_subtitle_map_values[15][0] = "Dev dev Devdev Devdevdevdev Devdevdev, dev dev devdev dev devdev devdevdev dev dev devdev." ;
		_GameController_subtitle_map_values[16] = 23.3 ;
		_GameController_subtitle_map_values[17][0] = "Dev dev dev devdev dev dev," ;
		_GameController_subtitle_map_values[18] = 24.5 ;
		_GameController_subtitle_map_values[19][0] = "dev devdevdevdev dev devdev dev dev devdev devdev, dev dev dev dev dev dev." ;
		_GameController_subtitle_map_values[20] = 29.8 ;
		_GameController_subtitle_map_values[21][0] = "Dev devdevdev, dev devdevdev dev devdev devdev dev \"Devdevdev Devdev\" devdev," ;
		_GameController_subtitle_map_values[22] = 33.8 ;
		_GameController_subtitle_map_values[23][0] = "dev devdev dev dev devdevdev." ;
		_GameController_subtitle_map_values[24] = 35.9 ;
		_GameController_subtitle_map_values[25][0] = "Dev devdev dev dev dev dev DEVDEVDEV." ;
		_GameController_subtitle_map_values[26] = 40.4 ;
		_GameController_subtitle_map_values[27][0] = "Devdevdev, dev devdev dev devdev devdev dev \"Devdevdev Dev\" devdev," ;
		_GameController_subtitle_map_values[28] = 44.2 ;
		_GameController_subtitle_map_values[29][0] = "dev dev dev dev devdevdev." ;
		_GameController_subtitle_map_values[30] = 46.6 ;
		_GameController_subtitle_map_values[31][0] = "Dev devdev dev dev devdev dev dev dev DEVDEV DEV" ;
		_GameController_subtitle_map_values[32] = 51.3 ;
		_GameController_subtitle_map_values[33][0] = "Dev dev dev dev dev dev dev dev Devdev Devdevdevdev Devdevdev." ;
		_GameController_subtitle_map_values[34] = 55.7 ;
		_GameController_subtitle_map_values[35][0] = "Dev dev dev dev dev dev devdevdev devdev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorTutorial, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev... Dev dev dev dev devdevdevdev." ;
		_GameController_subtitle_map_values[2] = 3.6 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev devdevdev dev dev dev dev devdevdevdev devdevdev." ;
		_GameController_subtitle_map_values[4] = 7.2 ;
		_GameController_subtitle_map_values[5][0] = "Dev dev devdev dev dev devdevdevdev." ;
		_GameController_subtitle_map_values[6] = 9.5 ;
		_GameController_subtitle_map_values[7][0] = "Dev devdevdevdev dev dev dev dev dev dev devdev dev dev." ;
		_GameController_subtitle_map_values[8] = 13 ;
		_GameController_subtitle_map_values[9][0] = "Dev dev dev dev dev dev dev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorPt1, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev, dev devdevdevdev devdev devdev, devdev dev devdev devdev." ;
		_GameController_subtitle_map_values[2] = 4.3 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev dev dev, dev dev dev dev dev dev" ;
		_GameController_subtitle_map_values[4] = 7.2 ;
		_GameController_subtitle_map_values[5][0] = "devdev dev devdevdevdev dev dev devdev." ;
		_GameController_subtitle_map_values[6] = 10 ;
		_GameController_subtitle_map_values[7][0] = "Devdevdev, dev dev dev dev dev devdev," ;
		_GameController_subtitle_map_values[8] = 12.1 ;
		_GameController_subtitle_map_values[9][0] = "dev dev dev devdev dev dev devdevdev dev dev." ;
		_GameController_subtitle_map_values[10] = 15.2 ;
		_GameController_subtitle_map_values[11][0] = "dev devdev, devdevdevdev devdevdev." ;
		_GameController_subtitle_map_values[12] = 17.8 ;
		_GameController_subtitle_map_values[13][0] = "Devdev devdev dev DEVDEVDEV." ;
		_GameController_subtitle_map_values[14] = 20.2 ;
		_GameController_subtitle_map_values[15][0] = "Dev dev dev devdev dev dev dev dev." ;
		_GameController_subtitle_map_values[16] = 23.2 ;
		_GameController_subtitle_map_values[17][0] = "Dev dev devdev dev, dev Devdevdevdev Devdev devdev" ;
		_GameController_subtitle_map_values[18] = 26.1 ;
		_GameController_subtitle_map_values[19][0] = "devdev dev dev devdevdev dev dev." ;
		_GameController_subtitle_map_values[20] = 28.3 ;
		_GameController_subtitle_map_values[21][0] = "Dev dev dev dev dev dev dev devdev devdev dev dev dev." ;
		_GameController_subtitle_map_values[22] = 31.9 ;
		_GameController_subtitle_map_values[23][0] = "Dev devdev dev dev devdev, dev dev devdev dev devdevdev devdev." ;
		_GameController_subtitle_map_values[24] = 36.7 ;
		_GameController_subtitle_map_values[25][0] = "Dev dev dev dev devdev devdevdev devdev dev dev dev dev." ;
		_GameController_subtitle_map_values[26] = 40.3 ;
		_GameController_subtitle_map_values[27][0] = "Dev dev dev devdevdevdev, dev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorPt2, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Devdev devdev devdevdev dev, dev devdev devdevdev dev devdev." ;
		_GameController_subtitle_map_values[2] = 4.7 ;
		_GameController_subtitle_map_values[3][0] = "Dev devdevdevdev dev dev dev dev dev dev dev devdev dev Devdevdev Devdev," ;
		_GameController_subtitle_map_values[4] = 8.6 ;
		_GameController_subtitle_map_values[5][0] = "devdev dev dev dev dev." ;
		_GameController_subtitle_map_values[6] = 10.7 ;
		_GameController_subtitle_map_values[7][0] = "Dev dev dev dev dev dev," ;
		_GameController_subtitle_map_values[8] = 12 ;
		_GameController_subtitle_map_values[9][0] = "dev DEV DEV DEVDEV DEV." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorWin, _GameController_subtitle_map_values) ;
	
		_GameController_subtitle_map_values = array_create(1) ;
		_GameController_subtitle_map_values[1][0] = "Dev dev devdev devdev dev dev?" ;
		_GameController_subtitle_map_values[2] = 2.4 ;
		_GameController_subtitle_map_values[3][0] = "Dev dev devdev... Devdev... Dev dev?" ;
		_GameController_subtitle_map_values[4] = 6 ;
		_GameController_subtitle_map_values[5][0] = "Dev devdev dev devdev devdev dev," ;
		_GameController_subtitle_map_values[6] = 7.7 ;
		_GameController_subtitle_map_values[7][0] = "dev dev dev devdev devdev dev devdev." ;
		_GameController_subtitle_map_values[8] = 10.3 ;
		_GameController_subtitle_map_values[9][0] = "Dev dev dev dev devdev devdevdevdev," ;
		_GameController_subtitle_map_values[10] = 12.5 ;
		_GameController_subtitle_map_values[11][0] = "dev dev dev devdevdevdev dev dev devdevdevdevdev dev:" ;
		_GameController_subtitle_map_values[12] = 14.8 ;
		_GameController_subtitle_map_values[13][0] = "\"DEV DEV DEVDEV DEVDEV DEV DEV\"." ;
		_GameController_subtitle_map_values[14] = 17.4 ;
		_GameController_subtitle_map_values[15][0] = "Dev dev dev dev devdev devdevdevdevdev dev dev devdev devdevdev," ;
		_GameController_subtitle_map_values[16] = 20.5 ;
		_GameController_subtitle_map_values[17][0] = "dev dev dev dev dev:" ;
		_GameController_subtitle_map_values[18] = 22.2 ;
		_GameController_subtitle_map_values[19][0] = "\"DEV DEV DEVDEV DEVDEV DEV DEV\"." ;
		_GameController_subtitle_map_values[20] = 25.6 ;
		_GameController_subtitle_map_values[21][0] = "Dev devdevdevdev devdev dev dev dev dev dev dev dev devdev." ;
		_GameController_subtitle_map_values[0][0] = array_length(_GameController_subtitle_map_values)/2 ;
		_GameController_subtitle_map_values[0][1] = GameController_subtitle_text_color_b ;
		ds_map_add(GameController_subtitle_map, snStageMtNarratorLose, _GameController_subtitle_map_values) ;
		#endregion
		
		#endregion
		break ;
}
