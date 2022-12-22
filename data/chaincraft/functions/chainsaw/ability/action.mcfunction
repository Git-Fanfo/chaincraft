execute if score cord chainsaw matches 200 run function chaincraft:give/chainsaw/saw
execute if score cord chainsaw matches 192 run playsound minecraft:chaincraft.chainsaw.forehead record @s ~ ~ ~ 1 .8
execute if score cord chainsaw matches 180 run playsound minecraft:chaincraft.chainsaw.laugh player @s ~ ~ ~ 1 .9

execute anchored eyes positioned ^ ^ ^.5 run particle block redstone_block ~ ~.1 ~ 0 .3 0 1 3 force
execute if score run_second timer matches 1.. run function chaincraft:chainsaw/ability/effects

# Feedback
execute as @s[tag=!heal_cord] if predicate chaincraft:is/sneaking run function chaincraft:chainsaw/ability/cant_heal

execute anchored eyes positioned ^ ^ ^1 run summon arrow ~ ~ ~ {damage:8d,Tags:["not_mov","forehead"],SoundEvent:"entity.generic.explode"}

data modify entity @e[type=arrow, sort=nearest, limit=1, tag=forehead, tag=not_mov] Owner set from entity @s UUID

scoreboard players remove cord chainsaw 1
# Reset
execute if score cord chainsaw matches 0 run tag @s remove cord
execute if score cord chainsaw matches 0 run tag @s remove heal_cord