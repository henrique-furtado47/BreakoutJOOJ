// If the ball is locked to the bat, we want it to follow the bat's position
if(_locked_to_bat)
{
	x = obj_player.x;
	y = obj_player.y - 28;

	// If the player has pressed the left mouse button then they want to start the game so start the ball moving
	if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_space))
	{
		direction = choose(135,90,45);
	
		speed = 5;
	
		_locked_to_bat = false;
	}
}
