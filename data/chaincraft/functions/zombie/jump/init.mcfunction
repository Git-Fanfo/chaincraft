# Select head
execute if predicate chaincraft:chance/30 run function chaincraft:zombie/jump/head/2
execute if predicate chaincraft:chance/30 run function chaincraft:zombie/jump/head/3
# Select weapon
function chaincraft:zombie/give_weapon

team join zombie
tag @s remove init