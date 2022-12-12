effect give @s strength 5 1 true
execute positioned ^ ^1 ^3 if entity @e[distance=..1] run particle block redstone_block ~ ~ ~ 0 0 0 1 20
#if entity @e[distance=...5] run 