/// @description Insert description here
// You can write your code in this editor
x = clamp(x, 16, 586);

//when the TIE fighter spawns, move down from top of screen
if (state = "Move Down") {
	y += y_speed;
	if (y >= yStop) {
		state = "Move Right";
	}
}
if (state = "Move Right") {
	x += x_speed;
	if (x >= 550) {
		state = "Move Left";
	}
}
else {
	x -= x_speed;
	if (x <= 50) {
		state = "Move Right";
	}
}

if (alarm[0] <= 0) {
	alarm[0] = 20;
}