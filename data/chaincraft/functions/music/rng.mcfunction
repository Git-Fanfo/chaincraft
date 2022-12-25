scoreboard players set rng music 1
execute if predicate chaincraft:chance/50 run scoreboard players add rng music 1
execute if predicate chaincraft:chance/50 run scoreboard players add rng music 2

execute if score rng music = now music run function chaincraft:music/rng