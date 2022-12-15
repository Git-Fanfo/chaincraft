# Select head
execute if predicate chaincraft:chance/30 run function chaincraft:zombie/crowd/head/2
execute if predicate chaincraft:chance/30 run function chaincraft:zombie/crowd/head/3
execute if predicate chaincraft:chance/20 run function chaincraft:zombie/crowd/head/4
execute if predicate chaincraft:chance/30 run function chaincraft:zombie/crowd/head/5
# Select weapon
function chaincraft:zombie/give_weapon

team join zombie
tag @s remove init
