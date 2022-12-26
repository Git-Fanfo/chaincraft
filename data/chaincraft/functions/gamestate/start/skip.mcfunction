execute as @a[tag=intro_chain] run function chaincraft:chainsaw/get
execute as @a[tag=intro_power] run function chaincraft:power/get
execute as @a[tag=intro_chain] run tp @s 61 5 -107.5 0 0
execute as @a[tag=intro_power] run tp @s 59 16.5 -50 180 15
function chaincraft:music/1
scoreboard players set now music 1
function chaincraft:gamestate/gamestart
tag @a[tag=intro_chain] remove intro_chain
tag @a[tag=intro_power] remove intro_power
