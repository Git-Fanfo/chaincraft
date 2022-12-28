# Read levers
execute if block 19 5 -125 lever[powered=false] run scoreboard players set hardcore config 0
execute if block 19 5 -125 lever[powered=true] run scoreboard players set hardcore config 1
execute if block 19 5 -123 lever[powered=false] run scoreboard players set epicfights config 0
execute if block 19 5 -123 lever[powered=true] run scoreboard players set epicfights config 1
execute if block 19 5 -121 lever[powered=false] run scoreboard players set skip config 0
execute if block 19 5 -121 lever[powered=true] run scoreboard players set skip config 1
execute if block 19 5 -119 lever[powered=false] run scoreboard players set light config 0
execute if block 19 5 -119 lever[powered=true] run scoreboard players set light config 1
##Spawn Coords##
# Count players first
scoreboard players set player_count config 0
execute if entity @a[tag=intro_power] run scoreboard players add player_count config 1
execute if entity @a[tag=intro_chain] run scoreboard players add player_count config 1

execute if score skip config matches 0 if score player_count config matches 1.. run scoreboard players set intro timer 620
execute if score skip config matches 0 if score player_count config matches 1.. run scoreboard players set gamestate config 1
scoreboard players set @a score 0
scoreboard players set @a max_combo 0
scoreboard players set @a kills 0
scoreboard players set @a deathCount 0

execute unless score player_count config matches 1.. run tellraw @a {"translate":"console.feedback.1","color":"dark_red"}
execute if score skip config matches 1 if score player_count config matches 1.. run function chaincraft:gamestate/start/skip
