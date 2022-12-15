# Select head
execute if predicate chaincraft:chance/50 run function chaincraft:zombie/bloody/head/2
# Select weapon
function chaincraft:zombie/give_weapon

team join zombie
tag @s remove init