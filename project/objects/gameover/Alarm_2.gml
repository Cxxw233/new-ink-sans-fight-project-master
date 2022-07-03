audio_play_sound(bgm_gameover, 0, 1)
instance_create_depth(109,58,0,gameoversp)
qss = instance_create_depth(109, 302, 0, text_typer)
qss.text = "{scale 2}{voice 2}* You died.{pause}{end}"
