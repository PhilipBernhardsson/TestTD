/// @description Insert description here
// You can write your code in this editor
spawn_amount = 5;
spawn_count = 0;
spawn_rate = 0.2 * room_speed;


global.hp = 1;
global.spd = 1;
global.level = 1;
global.coins = 100;
global.playerHealth = 100;
global.holding_tower = false;

//Upgrades
global.upgrades_shuriken_tower_level_max = 3;

restart = false;
running = false;


//Enemies (this is temporary (probably))
enemy_index = 0;

//Slime
enemy_sprites[0] = sEnemy;
enemy_base_healths[0] = 500;
enemy_base_speeds[0] = 0.6;
enemy_base_spawn_rate[0] = 12;
enemy_base_spawn_amount[0] = 0.5;
enemy_base_coins[0] = 10;
//Haunted Scroll
enemy_sprites[1] = sHaunted_Scroll;
enemy_base_healths[1] = 60;
enemy_base_speeds[1] = 1.5;
enemy_base_spawn_rate[1] = 1.5;
enemy_base_spawn_amount[1] = 4;
enemy_base_coins[1] = 2;
//Beholder
enemy_sprites[2] = sBeholder;
enemy_base_healths[2] = 1000;
enemy_base_speeds[2] = 0.9;
enemy_base_spawn_rate[2] = 5;
enemy_base_spawn_amount[2] = 0.5;
enemy_base_coins[2] = 10;
//Chest Stalker
enemy_sprites[3] = sChest_Stalker;
enemy_base_healths[3] = 6000;
enemy_base_speeds[3] = 0.25;
enemy_base_spawn_rate[3] = 40;
enemy_base_spawn_amount[3] = 0.1;
enemy_base_coins[3] = 100;
//Plant man
enemy_sprites[4] = sPlant_Man;
enemy_base_healths[4] = 100;
enemy_base_speeds[4] = 1;
enemy_base_spawn_rate[4] = 1;
enemy_base_spawn_amount[4] = 1;
enemy_base_coins[4] = 5;