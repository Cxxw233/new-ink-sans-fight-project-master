Battle_SetSoul(battle_soul_red)
time = 0
battle_soul.x = 320
battle_soul.y = 310
var list = ds_list_create()
for (var i = 1; i <= 12; i+=1)
{
    var ins = instance_create_depth((300 - (i * 80)), 270, -5, choose(obj_phase1_bc_1_bone_aqua,obj_phase1_bc_1_bone_orange))
    ds_list_add(list, ins)
}
for (i = 1; i <= 12; i+=1)
{
    ins = instance_create_depth((300 + (i * 80)), 270, -5, choose(obj_phase1_bc_1_bone_aqua,obj_phase1_bc_1_bone_orange))

    ds_list_add(list, ins)
}
ds_list_shuffle(list)
for (i = 1; i <= 24; i+=1)
{
    ins = ds_list_find_value(list, (i - 1))
    ins.alarm[0] = (i * 7)
}
ds_list_destroy(list)

