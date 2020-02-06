/// @description Spawn
// You can write your code in this editor

if !(instance_exists(obj_tie_fighter)) {
	var topRandomX = irandom_range(100, 500);
	var inst = instance_create_layer(topRandomX, -50, "Instances", obj_tie_fighter)
}

if (score == 10) {
	game_end()
}