execute unless score @s jumper matches 0..179 run scoreboard players set @s jumper 180
scoreboard players remove @s jumper 1

execute if score @s jumper matches 0 if entity @p[distance=..10] run tag @s add not_mov

execute unless block ~ ~-1 ~ air run effect give @s slow_falling 1 0 true

execute as @s[tag=not_mov] rotated as @s run function chaincraft:controller/apply_motion/select_motion