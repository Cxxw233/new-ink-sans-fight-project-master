if instance_exists(battle_soul)
    gravity_direction = point_direction(x, y, battle_soul.x, battle_soul.y)
direction = ((180 + gravity_direction) + irandom_range(-10, 10))
gravity = 0.2
speed = 1.33333
depth=DEPTH_BATTLE.BOARD-99999
