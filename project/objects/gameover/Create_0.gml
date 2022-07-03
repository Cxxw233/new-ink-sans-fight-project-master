if global.reset=1{
global.reset=0
audio_stop_all()
room_goto(room_battle)}
x=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X);
y=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y);
audio_stop_all();
alarm[0]=40;
_ready = 0
alpha=0
xt=0
qss=0