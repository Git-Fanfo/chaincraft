execute unless score @s despawn matches ..399 run scoreboard players set @s despawn 400 
scoreboard players remove @s despawn 1

execute if score @s despawn matches 0 run particle block redstone_block ^ ^ ^1 .5 .1 .5 1 50 force
execute if score @s despawn matches 0 run kill