effect give @s invisibility 5 0 true
effect give @s speed 5 0 true
effect give @s resistance 5 1 true
effect give @s jump_boost 5 0 true

# Idle effects
execute if score idle chainsaw matches ..0 run scoreboard players set idle chainsaw 99
execute if score idle chainsaw matches 80 run playsound minecraft:chaincraft.chainsaw.idle record @s ~ ~ ~ 1 1
scoreboard players remove idle chainsaw 1

# Chainsaw killed something
scoreboard players operation @s stored_kills -= @s kills
execute if score @s stored_kills matches ..-1 run playsound minecraft:chaincraft.chainsaw.cut record @s ~ ~ ~ 1 1.2
## Here
## execute if score @s stored_kills matches ..-1 run function chaincraft:score/trigger
scoreboard players operation @s stored_kills = @s kills

# Used string
execute as @s[tag=string] run function chaincraft:chainsaw/ability/effects