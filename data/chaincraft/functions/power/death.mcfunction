execute if score hardcore config matches 1 run scoreboard players set gametime timer 1
execute if score hardcore config matches 0 run scoreboard players remove @s score 30000

scoreboard players set @s[scores={dead=1..}] dead 0

function chaincraft:power/get