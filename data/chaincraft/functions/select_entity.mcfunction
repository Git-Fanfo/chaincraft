execute if predicate chaincraft:is_hurt run function chaincraft:controller/spread_blood

## Selectors
execute as @s[type=player] run function chaincraft:player/main
execute as @s[type=item] run function chaincraft:item/select_item
execute as @s[tag=corpse] run function chaincraft:zombie/corpse

## zombies
execute as @s[type=chicken] run function chaincraft:controller/kill_mob
execute as @s[type=zombie] run function chaincraft:zombie/crowd/main
execute as @s[type=husk] run function chaincraft:zombie/bloody/main
execute as @s[type=drowned] run function chaincraft:zombie/jump/main
execute as @s[type=iron_golem] run function chaincraft:zombie/strength/main
execute as @s[tag=zombie_devil,tag=!dead] run function chaincraft:zombie/devil/main
execute as @s[tag=weak_point] run function chaincraft:zombie/devil/weak_point
kill @s[type=experience_orb]

## Apply motion
execute as @s[tag=not_mov] rotated as @p run function chaincraft:controller/apply_motion/select_motion
execute as @s[tag=forehead] run function chaincraft:chainsaw/ability/range
execute as @s[tag=sweep] run function chaincraft:power/sweep/range

## Trampoline
execute as @s[tag=t_north] positioned ~ ~1 ~ run execute as @e[distance=..1,tag=!push,type=!armor_stand,type=!arrow,type=!item,sort=nearest,limit=1] run function chaincraft:trampoline/add_north
execute as @s[tag=t_south] positioned ~ ~1 ~ run execute as @e[distance=..1,tag=!push,type=!armor_stand,type=!arrow,type=!item,sort=nearest,limit=1] run function chaincraft:trampoline/add_south
execute as @s[tag=t_east] positioned ~ ~1 ~ run execute as @e[distance=..1,tag=!push,type=!armor_stand,type=!arrow,type=!item,sort=nearest,limit=1] run function chaincraft:trampoline/add_east
execute as @s[tag=t_west] positioned ~ ~1 ~ run execute as @e[distance=..1,tag=!push,type=!armor_stand,type=!arrow,type=!item,sort=nearest,limit=1] run function chaincraft:trampoline/add_west
execute as @s[tag=push] run function chaincraft:trampoline/push