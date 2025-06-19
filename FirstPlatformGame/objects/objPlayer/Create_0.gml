window_set_size(view_wport[0] * 6, view_hport[0] * 6);
window_center();
velocity     = 1;
max_speed    = 4; //Max speed
max_fall     = 20; //Max falling
jump_speed   = 2.5; //Jump Velocity
gravity_fall = 0.1; //Fall Gravity
tile         = layer_tilemap_get_id("Platforms")
hazards      = layer_tilemap_get_id("Hazards")
on_ground    = place_meeting(x, y+1, tile)
velocity_x = 0;
velocity_y = 0;
go = false;
alarm[0] = 30;