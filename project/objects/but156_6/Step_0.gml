time-=1
if time>=0{
y+=2
image_angle+=2}
if time<0{
direction = (image_angle - 90)
speed = 1
friction = -0.1
}
