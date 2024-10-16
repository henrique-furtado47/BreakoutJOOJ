/// @description Insert description here
// You can write your code in this editor
var _b = irandom_range(0,3)

if _b = 3 {
	var _c = irandom_range(0, 150)
	if _c<20{
		instance_create_layer(x, y, "Instances", obj_powerup_2xball)
	}
	if	_c>=20 and _c<50{
		instance_create_layer(x, y, "Instances", obj_powerup_playersize)
	}
	if _c>=50 and _c<100{
		instance_create_layer(x, y, "Instances", obj_powerup_plus1)
	}
	if _c>=100{
		instance_create_layer(x, y, "Instances", obj_powerup_playerspeed)
	}
}
	