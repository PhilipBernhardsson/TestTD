if (x != round(mouse_x/16) * 16 || y != round(mouse_y/16) * 16) {
	x=round(mouse_x/16) * 16;
	y=round(mouse_y/16) * 16;
	show_debug_message("X: " + string(x) + " Y: " + string(y));
}



if(place_meeting(x,y,oRegion) || place_meeting(x,y,oTowerParent)) color = c_red;
else color = c_white;

if(color == c_white && device_mouse_check_button_released(0, mb_left)) {
	instance_destroy();
var tower = instance_create_depth(x,y,-1 - (y),oTower);

//Tower properties
tower.tower_sprites = tower_sprites;
tower.tower_max_level = tower_max_level;
tower.tower_cost = tower_cost;
tower.tower_upgrade_cost = tower_upgrade_cost;
tower.tower_aim_is_single_target = tower_aim_is_single_target;

//Tower range
tower.base_attack_range = base_attack_range;
tower.attack_range_increased_by = attack_range_increased_by;

//Tower speed
tower.base_attack_speed = base_attack_speed;
tower.attack_speed_increased_by = attack_speed_increased_by;


//Bullet properties
tower.bullet_sprites = bullet_sprites;
tower.bullet_is_piercing = bullet_is_piercing;
tower.bullet_has_infinite_range = bullet_has_infinite_range;
tower.bullet_has_collision = bullet_has_collision;

//Damage
tower.base_bullet_damage = base_bullet_damage;
tower.bullet_damage_increased_by = bullet_damage_increased_by;

//Speed
tower.base_bullet_speed = base_bullet_speed;
tower.bullet_speed_increased_by = bullet_speed_increased_by;

//Amount
tower.base_bullet_amount = base_bullet_amount;
tower.bullet_amount_increase = bullet_amount_increase;

//AOE
tower.bullet_has_aoe = bullet_has_aoe;
tower.base_bullet_aoe_range = base_bullet_aoe_range;
tower.bullet_aoe_increased_by = bullet_aoe_increased_by;

//Afflictions
tower.bullet_affliction = bullet_affliction;
tower.bullet_affliction_strength = bullet_affliction_strength;
tower.bullet_affliction_strength_increased_by = bullet_affliction_strength_increased_by;
tower.bullet_affliction_stacks = bullet_affliction_stacks;
tower.bullet_affliction_time = bullet_affliction_time;
tower.bullet_affliction_time_increased_by = bullet_affliction_time_increased_by;


global.holding_tower = false;
}

if(device_mouse_check_button_released(0, mb_right)) {
	global.coins += tower_cost;
global.holding_tower = false;
instance_destroy();
}