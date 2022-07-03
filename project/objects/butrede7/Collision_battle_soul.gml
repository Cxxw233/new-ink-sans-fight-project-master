if (image_index == 0)
{
    Player_Hurt()
}
else if (image_index == 2 && b == 1)
{
    image_index = 1
    b = 2
    with (battle_soul)
        event_user(11)
}
else if (image_index == 1 && b == 1)
{
    image_index = 2
    b = 2
    with (battle_soul)
        event_user(12)
}
else if (image_index == 2 && b == 2)
{
    with (battle_soul)
        event_user(12)
}
else if (image_index == 1 && b == 2)
{
    with (battle_soul)
        event_user(11)
}
