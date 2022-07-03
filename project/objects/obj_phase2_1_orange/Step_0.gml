if a=1{
  image_alpha-=0.1
  if image_alpha=0{
    instance_destroy()
	if instance_exists(battle_turn_intro)
    battle_turn_intro.a=6
  }
}

