execute as @s[tag=chainsaw] run function chaincraft:chainsaw/main
execute as @s[tag=power] run function chaincraft:power/main

execute if score @s using_carrot matches 1.. run function chaincraft:player/using_carrot

execute if score run_second timer matches 1.. if predicate chaincraft:has_effect/hunger run function chaincraft:controller/spread_blood

execute store result score @s foodLevel run data get entity @s foodLevel
execute if score run_second timer matches 1.. if score @s foodLevel matches 0 run effect give @s instant_damage 1 0 true