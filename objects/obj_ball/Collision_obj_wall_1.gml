// If the ball hits a boundary, we want it to bounce, play a sound, and create an effect.
// Because the move_bounce_solid function moves the ball again, we set it back to where it was previously
// so that it can work on a collision that it generates itself and should not get stuck in a wall
x = xprevious;
y = yprevious;
move_bounce_solid(true);

// We don't want the ball to move horizontally after bouncing either
// So if it is moving up but the angle is very shallow, make it a little bit less shallow
// just so that it doesn't get stuck
if(direction <= 180 && (15 > direction || direction > 165))
{
	direction = clamp(direction, 15, 165);
}
// The same is true for when it's moving downwards, we just make it move a bit MORE down
else if (direction > 180 && (195 > direction || direction > 345))
{
	direction = clamp(direction, 195, 345);
}
instance_destroy()
