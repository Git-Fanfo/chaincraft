# Count players first
scoreboard players set player_count config 0
execute if entity @a[tag=intro_power] run scoreboard players add player_count config 1
execute if entity @a[tag=intro_chain] run scoreboard players add player_count config 1

execute if score skip config matches 0 if score player_count config matches 1.. run scoreboard players set intro timer 620
execute if score skip config matches 0 if score player_count config matches 1.. run scoreboard players set gamestate config 1
scoreboard players set @s score 0
scoreboard players set @s max_combo 0

execute unless score player_count config matches 1.. run tellraw @a {"translate":"console.feedback.1","color":"dark_red"}
execute if score skip config matches 1 if score player_count config matches 1.. run function chaincraft:gamestate/start/skip
