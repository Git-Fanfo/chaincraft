scoreboard players set @s score 0
scoreboard players set @s max_combo 0
execute if score skip config matches 0 run scoreboard players set intro timer 620
execute if score skip config matches 0 run scoreboard players set gamestate config 1
execute if score skip config matches 1 run function chaincraft:gamestate/start/skip
execute if entity @a[tag=intro_power] run scoreboard players add player_count config 1
execute if entity @a[tag=intro_chain] run scoreboard players add player_count config 1
