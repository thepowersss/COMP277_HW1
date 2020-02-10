/// @description Moving and Firing
// You can write your code in this editor

x = clamp(x, 25, 575);

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
fire = keyboard_check_pressed(vk_space);
	
// stop moving if left and right are both pressed
hinput = right - left;

if (hinput != 0) { // when accelerating when L or R is pressed
	// adds acceleration to the horizontal speed in the correct direction
	hspeed_ += hinput * acceleration_;
	// clamp keeps the hspeed_ between the bounds
	hspeed_ = clamp(hspeed_, -hspeed_max, hspeed_max);
}
else { // when deaccelerating when nothing is pressed or both L+R is pressed
	hspeed_ = lerp(hspeed_, 0, friction_);
}
	
// moving to the left
if (left) {
	x += hspeed_;
}
// moving to the right
if (right) {
	x += hspeed_;
}

if (fire) {
	var inst = instance_create_layer(x, y, "Instances", obj_xwing_bullet);
	audio_play_sound(snd_xwing_bullet1, 1, false);
}