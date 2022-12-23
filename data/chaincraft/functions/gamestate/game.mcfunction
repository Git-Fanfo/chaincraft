execute store result bossbar minecraft:timer value run scoreboard players remove timer config 1
#bossbar set minecraft:timer name ["",{"score":{"name":"timer_minutes","objective":"config"}},{"text":":"},{"score":{"name":"timer_seconds","objective":"config"}}]
execute store result score zombie_count config run execute if entity @e[tag=zombie]

execute if score timer config matches 9000..12000 if score zombie_count config matches ..10 run function chaincraft:gamestate/wave/1
execute if score timer config matches 6000..9000 if score zombie_count config matches ..15 run function chaincraft:gamestate/wave/2
execute if score timer config matches 3000..6000 if score zombie_count config matches ..20 run function chaincraft:gamestate/wave/3
execute if score timer config matches 0..3000 if score zombie_count config matches ..25 run function chaincraft:gamestate/wave/4

execute if score timer config matches 0 run function chaincraft:gamestate/end