event_inherited();
Dialog_Add("* You eat System.{slepp 30}&* You freak.{slepp 30}&* You HP Recovery Max.");
Dialog_Start();
Item_Remove(_item_slot,item_tml);
battle_enemy_inkp1.nowhppl+=battle_enemy_inkp1.nowhppl
audio_play_sound(snd_item_heal,1,false);


