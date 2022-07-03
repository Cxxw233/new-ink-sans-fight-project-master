if xt=0
{
	a++
	if a=1{
	instance_create_depth(x,y,0,but156_4)
	instance_create_depth(x,y,0,but156_5)
	}
	if a=50
	instance_destroy(battle_soul)
	if a=70
	xt=2
}
if xt=2{
image_alpha-=0.05
sp++
y+=sp
if image_alpha=0
instance_destroy()
}
