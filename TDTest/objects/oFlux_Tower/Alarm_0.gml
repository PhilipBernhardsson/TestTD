/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(instance_exists(objectToShoot)){
	var bullets;
	var angle = 45 / bullet_amount;
	
	var i = 0;
	repeat(bullet_amount){
		bullets[i] = instance_create_depth(x,y,-9,oBullet);
		i++;
	}
	i = 0;
	var dir = -1;
	var count = 1;
	repeat(array_length_1d(bullets)) {
		bullets[i].speed = 10;
		
		switch(level) {
	case 1:
	bullets[i].sprite_index = sFlux_Tower_Projectile;
	break;
	case 2:
	bullets[i].sprite_index = sPlasma_Flux_Tower_Projectile;
	break;
	case 3:
	bullets[i].sprite_index = sSpark_Flux_Tower_Projectile;
	break;
}
		
		
		if(i == 0)
			var bullet_direction = point_direction(x,y,objectToShoot.x,objectToShoot.y);
		else if (dir == -1) {
			var bullet_direction = point_direction(x,y,objectToShoot.x,objectToShoot.y) - angle * count;
			dir = 1;
		} else {
			var bullet_direction = point_direction(x,y,objectToShoot.x,objectToShoot.y) + angle * count;
			dir = -1;
			count++;
		}
		bullets[i].direction = bullet_direction;
		bullets[i].damage = 100 + ((level - 1) * 50)
		bullets[i].collides_with_enemies = true;
		i++;
}
	
	
	alarm[0] = fire_rate;
}else{
	shooting= false;	
}