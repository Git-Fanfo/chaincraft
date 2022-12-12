# No more babys
data modify entity @s IsBaby set value 0b

function chaincraft:zombie/crowd/head/1
execute if predicate chaincraft:chance/30 run function chaincraft:zombie/crowd/head/2
execute if predicate chaincraft:chance/31 run function chaincraft:zombie/crowd/head/3

tag @s add init