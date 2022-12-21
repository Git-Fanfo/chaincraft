## Run this everytime the players die

clear @s
function chaincraft:give/chainsaw/full
tag @s remove power
tag @a remove chainsaw
tag @s add chainsaw

## Denji is a Berserk. Power is a Glass Canon
# Speed
attribute @s minecraft:generic.movement_speed base set 0.15
# Attack Speed as in 1.7 UNLESS EPIC FIGHT
execute unless score epicfights config matches 1 run attribute @s minecraft:generic.attack_speed base set 100