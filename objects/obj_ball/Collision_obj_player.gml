
// If the ball is moving downwards, onto the bat...
if(vspeed > 0)
{
	// Bounce back up.
	vspeed = -vspeed;

	// Adjust horizontal speed based on where the ball
	// landed on the bat.
	// This effectively alters the direction of the ball.
	// But changes the total speed, which we fix next.
	hspeed += (x - other.x) / 10;

	// Here we limit how close to horizontal the ball can move
	// This makes the game keep moving along at a satisfying pace
	direction = clamp(direction, 15, 165);

	// Setting total speed here, actually "normalizes"
	// hspeed and vspeed. So regardless of what we set
	// hspeed to in the previous action, total speed will
	// now be 5 but the new direction will be maintained.
	speed = 5;
}