// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_colision(){
	Dir = point_direction(self.x,self.y,other.x,other.y);
	show_debug_message(Dir);
}