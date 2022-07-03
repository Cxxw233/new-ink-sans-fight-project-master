Battle_SetEnemyName(_enemy_slot,"{font 3}⑨");
Player_SetName("CHARA");
Player_SetLv("20");
Player_SetHp(99);
Player_SetHpMax(99);
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check");
Battle_SetEnemyActionName(_enemy_slot,1,"* Heal");
Battle_SetEnemyActionName(_enemy_slot,2,"* Reset");
window_set_caption("Remnant of what we don't unknown")
if global.phase!=3
Battle_SetEnemyName(_enemy_slot,"INK!Sans");
else
Battle_SetEnemyName(1, "Color dyes");
room_speed = 50

 