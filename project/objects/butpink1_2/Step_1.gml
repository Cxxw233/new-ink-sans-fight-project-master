var playerx=battle_soul.x
var playery=battle_soul.y
if (collision_rectangle((477 - playerx), (playery - 8), (493 - playerx), (playery + 8), battle_bullet, 1, 1) || collision_rectangle((787 - playerx), (playery - 8), (803 - playerx), (playery + 8), battle_bullet, 1, 1) || collision_rectangle((playerx - 8), (317 - playery), (playerx + 8), (333 - playery), battle_bullet, 1, 1) || collision_rectangle((playerx - 8), (627 - playery), (playerx + 8), (643 - playery), battle_bullet, 1, 1))
{
    with (battle_soul)
    {
        if (a == 0)
        {
             if (battle_soul._inv=0)
{
Battle_CallSoulEventBulletCollision();
Battle_CallSoulEventHurt();
Player_Hurt(10);
a=Player_GetInvTotal();
}
        }
    }
}
