// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_Jump_2pt(collision_tile_map_id, jumpSpeed){
//var Horizontal = 0;
var Vertical = 1;

var on_ground = tile_collide_at_points(collision_tile_map_id, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);
if on_ground {
	// Jumping
	if keyboard_check_pressed(vk_up) {
		Velocidade[@ Vertical] = -jumpSpeed;
	}
} else {
	// Control jump height
	if keyboard_check_released(vk_up) && Velocidade[Vertical] <= -(jumpSpeed/3) {
		Velocidade[@ Vertical] = -(jumpSpeed/3);
	}
}
}