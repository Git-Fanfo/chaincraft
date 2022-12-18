execute if score cord chainsaw matches 192 run playsound minecraft:chaincraft.chainsaw.forehead record @s ~ ~ ~ 1 .9
execute if score cord chainsaw matches 180 run playsound minecraft:chaincraft.chainsaw.laugh player @s ~ ~ ~ 1 .9

execute anchored eyes positioned ^ ^ ^.5 run particle block redstone_block ~ ~ ~ 0 .2 0 1 4 force
execute if score run_second timer matches 1.. run function chaincraft:chainsaw/ability/effects

#execute positioned ^ ^1 ^3 if entity @e[distance=..1, type=!arrow] run particle block redstone_block ~ ~ ~ 0 0 0 1 20

execute anchored eyes positioned ^ ^ ^1 run summon arrow ~ ~ ~ {damage:8d,Tags:["not_mov","forehead"],SoundEvent:"entity.generic.explode"}

data modify entity @e[type=arrow, sort=nearest, limit=1, tag=forehead] Owner set from entity @s UUID

scoreboard players remove cord chainsaw 1
execute if score cord chainsaw matches 0 run tag @s remove cord
#if entity @e[distance=...5] run 