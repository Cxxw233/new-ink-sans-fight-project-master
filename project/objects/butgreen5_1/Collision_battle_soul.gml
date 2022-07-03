if (dmg == 1)
{
if (battle_soul._inv=0)
{
Battle_CallSoulEventHurt();
battle_enemy_inkp1.nowhppl-=10
}
}
else if (dmg != 1)
{
audio_play_sound(snd_item_heal, 1, false)
battle_enemy_inkp1.nowhppl+=10
}
instance_destroy()

 
