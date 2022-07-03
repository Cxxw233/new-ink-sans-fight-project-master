if xt=14{
a++
if a = 1{
(instance_create_depth(577.5,355,0,obj_phase1_start_bone)).speed=0
}
if a > 1
{
	obj_phase1_start_bone.x-=1.3
}
}
if xt=0{
	crtalk1(380, 74, "...",1)
	xt=1
}
if xt=2{
	crtalk1(380, 74, "OK./Here we are",1)
	xt=3
}
if xt=4{
	crtalk1(380, 74, "NO matter who is the/first one to get/this idea...",1)
	battle_enemy_inkp1.touxts=3
	xt=5
}
if xt=6{
	crtalk1(380, 74, "I need to give you/an attack now.",1)
	xt=7
}
if xt=8{
	crtalk1(380, 74, "Resdy?/If you are not,I/understand.",1)
	battle_enemy_inkp1.touxts=0
	xt=9
}
if xt=10{
	crtalk1(380, 74, "Because.../I am not ready...too.",1)
	battle_enemy_inkp1.touxts=1
	xt=11
}
if xt=12{
	crtalk1(380, 74, "Anyways,/let us begin.",1)
	battle_enemy_inkp1.touxts=0
	xt=13
}
if instance_exists(obj_phase1_start_bone){
if obj_phase1_start_bone.x < 70&&xt=14{
	crtalk1(380, 74, "Well./You see,you had must/be bored with using the/most strong attack first.",1)
	battle_enemy_inkp1.touxts=3
	xt=15
}}
if xt=16{
	crtalk1(380, 74, "So,this first turn will/be yours.",1)
	xt=17
}
if xt=18{
	crtalk1(380, 74, "It's also my action/to show that I have/no hostile intentions.",1)
	xt=19
}
if xt=20{
	crtalk1(380, 74, "If you want to stop,/I am still willing to/do that.",1)
	xt=21
}
if xt=22{
	crtalk1(380, 74, "But,if you don't.../I	promise the following/will be harder than that.",1)
	battle_enemy_inkp1.touxts=6
	xt=23
}
if xt=24
{
Battle_EndTurn()
battle_enemy_inkp1.touxts=0
}