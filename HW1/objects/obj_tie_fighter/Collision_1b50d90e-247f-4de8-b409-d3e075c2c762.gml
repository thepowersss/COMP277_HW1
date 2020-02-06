/// @description Checking for getting hit by player
// You can write your code in this editor

score += 1;
//play death sound
audio_play_sound(snd_hit_tie_fighter, 1, false);
instance_destroy();