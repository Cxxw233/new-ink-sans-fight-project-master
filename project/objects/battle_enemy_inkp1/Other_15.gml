switch(Battle_GetMenuChoiceButton()){
	case 1:
	 switch(Battle_GetMenuChoiceAction()){
		 case 0:
		 if global.phase<3
		 Dialog_Add("*	 INK!SANS Probably,ATK 1 DEF 1&*	 Maybe the eaiest enemy.&*	 Attact.There will be a way.");
		 if global.phase=3
		 Dialog_Add("*	 INK!SANS Probably,ATK 10 DEF 0&*	 Maybe the eaiest enemy.&*	 An obstacle.");
		 if global.phase=4
		 Dialog_Add("*	 Dirty hacks&*	 Fuck you.");
		 if global.phase=5
		 Dialog_Add("*	 INK!SANS Probably,ATK ! DEF !&*	 Maybe the eaiest enemy.&*	 Colorless.");
		 break
	     case 1:
		 Dialog_Add("*	 You've been beefed up. &* Let's fight.");
		 nowhppl=99
		 audio_play_sound(snd_item_heal,100,0)
		 break
		 case 2:
		 file_delete("temp")
		 file_delete("green")
		 file_delete("aqua")
		 file_delete("blue")
		 file_delete("purple")
		 file_delete("pink")
		 file_delete("red")
		 file_delete("orange")
		 file_delete("yellow")
		 file_delete("xt3end")
		 f = file_bin_open("temp", 1)
         file_bin_write_byte(f, 0)
         file_bin_close(f)
		 global.phase=1
		 audio_stop_all()
		 instance_create_depth(0,0,0,obj_Reset)
		 break
	 }
}


