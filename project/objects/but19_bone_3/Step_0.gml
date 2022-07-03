time += 1
image_alpha += 0.05
if (time < 40)
{
    var px = battle_soul.x
    var py = battle_soul.y
    switch pos
    {
        case 0:
            x = (px - 120)
            y = py
            break
        case 1:
            x = (px - 120)
            y = (py - 120)
            break
        case 2:
            x = px
            y = (py - 120)
            break
        case 3:
            x = (px + 120)
            y = (py - 120)
            break
        case 4:
            x = (px + 120)
            y = py
            break
        case 5:
            x = (px + 120)
            y = (py + 120)
            break
        case 6:
            x = px
            y = (py + 120)
            break
        case 7:
            x = (px - 120)
            y = (py + 120)
            break
    }

}
image_angle = (pos * 45)
if (time >= but19.time_2_extra)
{
    switch pos
    {
        case 0:
            var dir = 0
            break
        case 1:
            dir = 270
            break
        case 2:
            dir = 180
            break
        case 3:
            dir = 90
            break
        case 4:
            dir = 0
            break
        case 5:
            dir = 270
            break
        case 6:
            dir = 180
            break
        case 7:
            dir = 90
            break
    }

    direction = (image_angle + dir)
    speed = 8
}

