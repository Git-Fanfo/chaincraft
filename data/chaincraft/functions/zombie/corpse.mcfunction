execute unless score @s despawn matches ..499 run scoreboard players set @s despawn 500
scoreboard players remove @s despawn 1

#execute if score @s despawn matches 485 run particle block redstone_block ~ ~1.2 ~ .2 .5 .2 1 100 force
execute if score @s despawn matches 499 run tp @s ~ ~ ~ facing entity @p eyes
execute if score @s despawn matches 490 run data modify entity @s HandItems[0] set from entity @s HandItems[1]
#data modify entity @s Rotation[0] set from entity @p Rotation[0]

execute if score @s despawn matches ..15 run tp ^ ^-.02 ^
execute if score @s despawn matches ..0 rotated ~ 0 run particle block redstone_block ^ ^.3 ^-1 .5 .1 .5 1 50 force
execute if score @s despawn matches ..0 run kill

execute if entity @s[tag=eaten] run scoreboard players remove @s despawn 150
# Remove being eaten
tag @s remove eaten