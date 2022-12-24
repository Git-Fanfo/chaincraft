execute store result bossbar minecraft:timer value run scoreboard players remove gametime timer 1
bossbar set minecraft:timer name ["",{"score":{"name":"timer_minutes","objective":"config"}},{"text":":"},{"score":{"name":"timer_seconds","objective":"config"}}]
execute store result score zombie_count config run execute if entity @e[tag=zombie]
execute if score run_second timer matches 1.. run scoreboard players remove timer_seconds config 1
execute if score timer_seconds config matches -1 run scoreboard players remove timer_minutes config 1
execute if score timer_seconds config matches -1 run scoreboard players set timer_seconds config 59

execute if score player_count config matches 1 run function chaincraft:gamestate/singlesummon
execute if score player_count config matches 2 run function chaincraft:gamestate/multisummon

execute if score gametime timer matches 0 run function chaincraft:gamestate/end