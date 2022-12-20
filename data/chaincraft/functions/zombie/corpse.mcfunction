execute unless score @s despawn matches ..499 run scoreboard players set @s despawn 500
scoreboard players remove @s despawn 1

#execute if score @s despawn matches 485 run particle block redstone_block ~ ~1.2 ~ .2 .5 .2 1 100 force
execute if score @s despawn matches ..0 run particle block redstone_block ^ ^ ^1 .5 .1 .5 1 50 force
execute if score @s despawn matches ..0 run kill

execute if entity @s[tag=eaten] run scoreboard players remove @s despawn 150
# Remove being eaten
tag @s remove eaten