///@param tile_map_id (use: layer_tilemap_get_id())
///@param velocity_array
///@param tile_size
function Scr_Mov_n_Collide_tiles_2pt(tile_map_id, velocity_array = [5,5], tile_size = 32) {
	// For the velocity array
	var Horizontal = 0;
	var Vertical = 1;

	// Move horizontally
	x += velocity_array[Horizontal];
	
	// Side collisions
	if velocity_array[Horizontal] > 0 {
		var tile_right = Scr_Tile_Collide_at_points(tile_map_id, [bbox_right-1, bbox_top], [bbox_right-1, bbox_bottom-1]);
		if tile_right {
			x = bbox_right & ~(tile_size-1);
			x -= bbox_right-x;
			velocity_array[@ Horizontal] = 0;
		}
	} else {
		var tile_left = Scr_Tile_Collide_at_points(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);
		if tile_left {
			x = bbox_left & ~(tile_size-1);
			x += tile_size+x-bbox_left;
			velocity_array[@ Horizontal] = 0;
		}
	}

	// Move vertically
	y += velocity_array[Vertical];
	
	// Vertical collisions
	if velocity_array[Vertical] > 0 {
		var tile_bottom = Scr_Tile_Collide_at_points(tile_map_id, [bbox_left, bbox_bottom-1], [bbox_right-1, bbox_bottom-1]);
		if tile_bottom {
			y = bbox_bottom & ~(tile_size-1);
			y -= bbox_bottom-y;
			velocity_array[@ Vertical] = 0;
		}
	} else {
		var tile_top = Scr_Tile_Collide_at_points(tile_map_id, [bbox_left, bbox_top], [bbox_right-1, bbox_top]);
		if tile_top {
			y = bbox_top & ~(tile_size-1);
			y += tile_size+y-bbox_top;
			velocity_array[@ Vertical] = 0;
		}
	}
}

///@param tile_map_id
///@param point_arrays...
function Scr_Tile_Collide_at_points() {
	var tile_map_id = argument[0];

	// Found variable
	var found = false;

	// for the point arrays
	var vector2_x = 0;
	var vector2_y = 1;

	// Loop through the points and check for a tile
	for (var i=1; i<argument_count; i++) {
		var point = argument[i];
		found = found || tilemap_get_at_pixel(tile_map_id, point[vector2_x], point[vector2_y]);
	}
	// return found
	return found;
}
