event_inherited()
moveable = 1
dir = 270
move = 0
impact = 0
_gravity_jump = 0.1
_speed_jump = 4
_gravity_fall = 0.15
_gravity_fall_max = 5
bz = battle_platform
if instance_exists(butgreenextra)
   snow = part_emitter_create(global.se)
depth=DEPTH_BATTLE.BOARD-999999
