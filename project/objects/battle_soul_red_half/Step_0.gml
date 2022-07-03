
if (Battle_GetState() == (3 << 0) && moveable)
{
    x = (640 - battle_soul.x)
    y = ((640 - battle_soul.y) - 110)
}
if (mode == 1)
{
    var SPD = Player_GetSpdTotal()
    SPD = (Input_Check((5 << 0)) ? (SPD / 2) : SPD)
    repeat (SPD * 10)
    {
        if Input_Check((0 << 0))
        {
            if (!(position_meeting(x, (y - (sprite_height / 2)), block)))
                y -= 0.1
        }
        if Input_Check((1 << 0))
        {
            if (!(position_meeting(x, (y + (sprite_height / 2)), block)))
                y += 0.1
        }
    }
}

 