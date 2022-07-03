event_inherited();

Dialog_Add("* You eat Cukong.&*{color `yellow`}{slepp 20} COARSE PORES.");
Dialog_Start();
Item_Remove(_item_slot,item_Big_hole);
battle_enemy_inkp1.nowhppl=1
battle_enemy_inkp1.maxhppl=1
audio_play_sound(snd_hurt,1,false);
