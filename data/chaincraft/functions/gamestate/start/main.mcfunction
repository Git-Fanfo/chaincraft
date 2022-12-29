# Read levers
execute if block 151 4 -24 redstone_lamp[lit=true] run scoreboard players set skip config 0
execute if block 151 4 -24 redstone_lamp[lit=false] run scoreboard players set skip config 1

execute if block 149 4 -24 redstone_lamp[lit=true] run scoreboard players set epicfights config 1
execute if block 149 4 -24 redstone_lamp[lit=false] run scoreboard players set epicfights config 0

execute if block 147 4 -24 redstone_lamp[lit=true] run scoreboard players set hardcore config 1
execute if block 147 4 -24 redstone_lamp[lit=false] run scoreboard players set hardcore config 0

execute if block 145 4 -24 redstone_lamp[lit=true] run scoreboard players set light config 1
execute if block 145 4 -24 redstone_lamp[lit=false] run scoreboard players set light config 0
##Spawn Coords##
# Count players first
scoreboard players set player_count config 0
execute if entity @a[tag=intro_power] run scoreboard players add player_count config 1
execute if entity @a[tag=intro_chain] run scoreboard players add player_count config 1

execute if score skip config matches 0 if score player_count config matches 1.. run scoreboard players set intro timer 620
execute if score skip config matches 0 if score player_count config matches 1.. run scoreboard players set gamestate config 1
scoreboard players reset @a score
scoreboard players set @a max_combo 0
scoreboard players set @a kills 0
scoreboard players set @a deathCount 0

execute unless score player_count config matches 1.. run tellraw @a {"translate":"console.feedback.1","color":"dark_red"}
execute if score skip config matches 1 if score player_count config matches 1.. run function chaincraft:gamestate/start/skip
