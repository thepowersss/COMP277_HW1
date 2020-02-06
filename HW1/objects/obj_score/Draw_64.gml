/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

var text = "Score " + string(score);
draw_text(32, 64, text);