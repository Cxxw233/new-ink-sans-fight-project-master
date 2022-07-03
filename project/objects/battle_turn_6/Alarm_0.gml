switch keyboard_lastkey
{
    case vk_up:
        if (key != "MOVE UP")
            attack = 1
        else
            attack = 0
        key = "MOVE UP"
        break
    case 40:
        if (key != "MOVE UP")
            attack = 1
        else
            attack = 0
        key = "MOVE DOWN"
        break
    case 37:
        if (key != "MOVE UP")
            attack = 1
        else
            attack = 0
        key = "MOVE LEFT"
        break
    case 39:
        if (key != "MOVE UP")
            attack = 1
        else
            attack = 0
        key = "MOVE RIGHT"
        break
}

alarm[0] = 1

 