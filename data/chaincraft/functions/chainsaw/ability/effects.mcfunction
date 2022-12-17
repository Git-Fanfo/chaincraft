effect give @s strength 5 1 true
execute positioned ^ ^1 ^3 if entity @e[distance=..1] run particle block redstone_block ~ ~ ~ 0 0 0 1 20

scoreboard players remove cord chainsaw 1
execute if score cord chainsaw matches 0 run tag @s remove cord
#if entity @e[distance=...5] run 