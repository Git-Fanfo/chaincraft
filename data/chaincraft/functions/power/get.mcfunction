clear @s
function chaincraft:give/power/full
tag @s remove chainsaw
tag @a remove power
tag @s add power

# UNLESS EPIC FIGHT
execute unless score epicfights config matches 1 run attribute @s minecraft:generic.attack_speed base set 100