time += 1
if (time >= irandom_range(4, 8))
{
    var ins = instance_create_depth(x, y, depth, obj_brust_2)
    ins.direction = ((angle + 90) + random_range(-45, 45))
    ins.speed = random_range((0.6 * sp), (1.4 * sp))
    ins.gravity = random_range(0.2, 0.6)
}

 