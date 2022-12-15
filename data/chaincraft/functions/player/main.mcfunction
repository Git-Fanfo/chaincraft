execute as @s[tag=chainsaw] run function chaincraft:chainsaw/main

execute if score @s using_carrot matches 1.. run function chaincraft:player/using_carrot

execute if score run_second timer matches 1.. if predicate chaincraft:has_effect/hunger run function chaincraft:controller/spread_blood