# Tick
scoreboard players add tick timer 1
# Run functions each second
execute if score tick timer matches 20.. run scoreboard players set run_second timer 1






execute as @e at @s run function chaincraft:select_entity

execute if score tick timer matches 20.. run scoreboard players set tick timer 0
execute if score run_second timer matches 1.. run scoreboard players set run_second timer 0

