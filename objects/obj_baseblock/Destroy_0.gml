/// @description Insert description here
// You can write your code in this editor
var _b = irandom_range(0,3)

if _b = 3 {
	var _c = irandom_range(0, 99)
	if _c<50{
		instance_create_layer(x, y,"Instances", obj_powerup_2xball)
	}
	if _c>50{
		instance_create_layer(x, y,"Instances", obj_powerup_plus1)
	}
}