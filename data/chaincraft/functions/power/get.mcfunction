## Run this everytime the players die

tag @s remove chainsaw
tag @a remove power
tag @s add power
clear @s
function chaincraft:give/power/full

## Denji is a Berserk. Power is a Glass Canon
# Speed
attribute @s minecraft:generic.movement_speed base set 0.17
# UNLESS EPIC FIGHT
execute unless score epicfights config matches 1 run attribute @s minecraft:generic.attack_speed base set 100
execute if score epicfights config matches 1 run attribute @s minecraft:generic.attack_speed base set 6