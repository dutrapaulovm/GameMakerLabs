if (go){
	var _left  = keyboard_check(vk_left);
	var _right = keyboard_check(vk_right);
	var _jump  = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up);

	if (on_ground){
		velocity_y = 0	
	}

	var dir = _right - _left;

	if (_jump) && on_ground{
		velocity_y = -jump_speed
	}
	else
		if !on_ground{ 
			velocity_y += gravity_fall;		
		}

	if (velocity_y > 0 && !on_ground){
		//Aplica uma velocidade máxima de queda
		velocity_y = clamp(velocity_y, 0, max_fall)	
	}

	//Limita o velocidade do player
	velocity_x = clamp(velocity * dir, -max_speed, max_speed)	

	move_and_collide(velocity_x, velocity_y, tile, 4);

	if (place_meeting(x,y, hazards)){
		room_restart()	
	}
}