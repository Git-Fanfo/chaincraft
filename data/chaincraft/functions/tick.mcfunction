# Tick
scoreboard players add tick timer 1
# Run functions each second
execute if score tick timer matches 20.. run scoreboard players set run_second timer 1






execute as @e at @s run function chaincraft:select_entity

execute if score intro timer matches 0.. run function chaincraft:gamestate/intro/main
execute if score gamestate config matches 2 run function chaincraft:gamestate/game
execute if score timer music matches 0.. run function chaincraft:music/main
function chaincraft:gamestate/config

execute positioned 135 11 -28 run function chaincraft:gamestate/lobby/fanfo
execute positioned 136 11 -30 run function chaincraft:gamestate/lobby/dark
execute positioned 136 11 -26 run function chaincraft:gamestate/lobby/zabat
execute positioned 140 11 -30 run function chaincraft:gamestate/lobby/will
execute positioned 145 11 -23.7 run function chaincraft:gamestate/lobby/save
execute positioned 150 11 -23.536 run function chaincraft:gamestate/lobby/etherna

execute if score tick timer matches 20.. run scoreboard players set tick timer 0
execute if score run_second timer matches 1.. run scoreboard players set run_second timer 0
