if xt = 0
time++
if bk=450
bkxt=0
if bkxt=0
bk-=2
if bk=0
bkxt=1
if bkxt=1
bk+=2
Battle_SetBoardSize(75,65,72.5-bk+230,72.5+bk-230,1)
if time = 1{
Battle_SetSoul(battle_soul_red_fast)
instance_create_depth(0,-60,0,obj_phase2_2_pen_1)
instance_create_depth(0,-60,0,obj_phase2_2_pen_2)
instance_create_depth(258,82,battle_enemy_inkp1.depth+1,but9_1)
battle_soul.x=40
}
if time>1&&time<=30
battle_enemy_inkp1.xj-=4
if time%45=0
 crgb(random(640), -100, battle_soul.x, 120, 15, bssp7,bssp8, bssp9, 30, 0.5, 0.5, 0, 0, 0, 0, gb)
if time%65=0
instance_create_depth(choose(battle_soul.x,irandom_range(-20,660)),irandom_range(-210,-240),0,but9_3)
if time>420&&time<=450
battle_enemy_inkp1.xj+=4
if time = 450{
Battle_SetSoul(battle_soul_red)
instance_destroy(but9_1)
instance_destroy(but9_3)
instance_destroy(but9_3_1)
instance_destroy(obj_phase2_2_pen_1)
instance_destroy(obj_phase2_2_pen_2)
Battle_EndTurn()
}