/// @description Insert description here
// You can write your code in this editor
if (global.playerHealth <= 0)
{
    restart = true;
    if (keyboard_check_pressed(vk_space))
    {
		get = undefined;
        room_restart();
    }
	if (!end_round_logic) {
		room_speed = global.base_room_speed;
		if(!global.used_debug) {
		http_get("http://api.stabwoundstudios.com/api/Leaderboard/New?name="+global.player_name+"&level="+string(global.level-1)+"&pleb=da8w76daw87d6aw8c7aw876daw876xc");
		highscore_add(global.player_name, global.level - 1);
		}
		alarm[2] = room_speed * 6;
		 var obj = instance_find(oUI_Highscore,0);
		 obj.depth = -1111;
		 obj.visible = true;
		 end_round_logic = true;
	}
}
else {
	var obj = instance_find(oUI_Highscore,0);
		 obj.visible = false;
}


if(!running && keyboard_check_pressed(vk_space)) {
		
	alarm[0] = 1;
	alarm[1] = room_speed * 5;
	running = true;
}