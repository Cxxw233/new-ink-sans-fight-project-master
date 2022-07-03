event_inherited();
Dialog_Add("* You eat Steak.&{sleep 20}* You Recovery 60HP.");
Dialog_Start();
Item_Remove(_item_slot,iitem_Steak);
battle_enemy_inkp1.nowhppl+=60
audio_play_sound(snd_item_heal,1,false);

