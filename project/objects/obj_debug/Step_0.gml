if keyboard_check(ord("H")){battle_enemy_inkp1.nowhppl=99
battle_enemy_inkp1.maxhppl=99
}
if keyboard_check_pressed(ord("F"))
inv+=1
if inv>1
inv=0
if inv=1{
battle_enemy_inkp1.nowhppl=99
battle_enemy_inkp1.maxhppl=99
}
if ((keyboard_check_pressed(ord("I"))))
	Battle_SetTurnNumber(Battle_GetTurnNumber() - 1);
if ((keyboard_check_pressed(ord("O"))))
	Battle_SetTurnNumber(Battle_GetTurnNumber() + 1);
if ((keyboard_check_pressed(ord("U"))))
	Battle_EndTurn();
	if keyboard_check_pressed(ord("T"))
gs+=1
if gs>1
gs=0
if gs=1&&instance_exists(battle_soul){
battle_soul.x=mouse_x
battle_soul.y=mouse_y
}
if keyboard_check_pressed(ord("D"))
global.phase+=1
if keyboard_check_pressed(ord("S"))
global.phase-=1
if keyboard_check_pressed(ord("B")){
battle_enemy_inkp1.bthp[1]=1
battle_enemy_inkp1.bthp[2]=1
battle_enemy_inkp1.bthp[3]=1
battle_enemy_inkp1.bthp[4]=1
battle_enemy_inkp1.bthp[5]=1
battle_enemy_inkp1.bthp[6]=1
battle_enemy_inkp1.bthp[7]=1
battle_enemy_inkp1.bthp[8]=1
}
if keyboard_check_pressed(ord("C"))
battle_enemy_inkp1.nowhppl+=1
if keyboard_check_pressed(ord("V"))
battle_enemy_inkp1.nowhppl-=1
if keyboard_check_pressed(ord("J"))
draw+=1
if draw>1
draw=0
