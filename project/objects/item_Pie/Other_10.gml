event_inherited();

Dialog_Add("* You eat Pie.{slepp 30}&* You HP Recovery Max.");
Dialog_Start();
Item_Remove(_item_slot);
battle_enemy_inkp1.nowhppl+=99
audio_play_sound(snd_item_heal,1,false);
