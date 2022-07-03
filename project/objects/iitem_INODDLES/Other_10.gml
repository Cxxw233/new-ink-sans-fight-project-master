event_inherited();
Dialog_Add("* You eat I.Noddles.&{sleep 20}* You Recovery 90HP.");
Dialog_Start();
Item_Remove(_item_slot,iitem_INODDLES);
battle_enemy_inkp1.nowhppl+=90
audio_play_sound(snd_item_heal,1,false);

