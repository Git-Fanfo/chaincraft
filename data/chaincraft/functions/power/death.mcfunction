execute if score hardcore config matches 1 if score player_count config matches 2.. run tp 19 4 -68
execute if score hardcore config matches 1 if score player_count config matches 2.. run scoreboard players remove player_count config 1
execute if score hardcore config matches 1 if score player_count config matches 1 run scoreboard players set gametime timer 1
execute if score hardcore config matches 0 run scoreboard players remove @s score 15000

scoreboard players set @s combo_cooldown 1

scoreboard players set @s dead 0

function chaincraft:power/get