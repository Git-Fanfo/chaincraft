# Kill spawner
execute as @s[tag=!jump] run function chaincraft:zombie/jump/spawn

# Initialize
execute as @s[tag=init] run function chaincraft:zombie/jump/init

execute unless score @s jumper matches 0..199 run scoreboard players set @s jumper 200
scoreboard players remove @s jumper 1

execute if score @s jumper matches 0 if entity @p[distance=..10] run tag @s add not_mov

execute unless block ~ ~-1 ~ air run effect give @s slow_falling 1 0 true