event_inherited();
Dialog_Add("* You eat L.Hero.&{sleep 20}* You Recovery 40HP.");
Dialog_Start();
Item_Remove(_item_slot,iitem_lhero);
battle_enemy_inkp1.nowhppl+=40
audio_play_sound(snd_item_heal,1,false);

