clear @s
function chaincraft:give/chainsaw/full
tag @a remove chainsaw
tag @s add chainsaw

# UNLESS EPIC FIGHT
attribute @s minecraft:generic.attack_speed base set 100