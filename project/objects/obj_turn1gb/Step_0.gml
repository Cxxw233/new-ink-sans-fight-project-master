//crgb(x,y,xto,yto,tuse,spr,lzrspr1,lzrspr2,alarm,xscale,lzrsca,tlong,tlong2,anto,angle,obj)
time+=1
if(time=90){
crgb(-20,-50,30,random_range(240,380),20,bssp7,bssp8,bssp9,20,0.5,1,1,0,90,90,gb);
crgb(660,-50,610,random_range(240,380),20,bssp7,bssp8,bssp9,20,0.5,1,1,0,270,270,gb);time=0;a+=1}
if(a=4){battle_turn_intro.a=9 instance_destroy();}