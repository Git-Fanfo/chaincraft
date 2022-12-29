execute as @s[tag=chainsaw] run function chaincraft:chainsaw/main
execute as @s[tag=power] run function chaincraft:power/main

execute if score @s using_carrot matches 1.. run function chaincraft:player/using_carrot

execute if predicate chaincraft:has_effect/hunger run function chaincraft:player/clear_saturation

execute store result score @s foodLevel run data get entity @s foodLevel
execute if score run_second timer matches 1.. if score @s foodLevel matches 0 run effect give @s instant_damage 1 0 true

# Lobby
#execute if score run_second timer matches 1.. run tag @s remove in
#execute unless entity @e[tag=credit,distance=..1.5] run tag @s remove in