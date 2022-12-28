tellraw @a [{"selector":"@s","color": "dark_red"},{"text": " "},{"translate": "console.feedback.6","color": "white"}]

execute if score hardcore config matches 1 if score player_count config matches 2.. run tp 17 4 -122
##Spawn Coords##
execute if score hardcore config matches 1 if score player_count config matches 2.. run scoreboard players remove player_count config 1
execute if score hardcore config matches 1 if score player_count config matches 1 run scoreboard players set gametime timer 1
execute if score hardcore config matches 0 run scoreboard players remove @s score 10000

scoreboard players set @s combo_cooldown 1

scoreboard players set @s dead 0

function chaincraft:power/get