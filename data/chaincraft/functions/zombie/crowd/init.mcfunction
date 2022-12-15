# No more babys
data modify entity @s IsBaby set value 0b
data modify entity @s HandDropChances set value [0.000F,0.000F]
data modify entity @s ArmorDropChances set value [0.000F,0.000F,0.000F,0.000F]

# Kill if armor?
# data modify entity @s ArmorItems[0] set value {}
# data modify entity @s ArmorItems[1] set value {}
# data modify entity @s ArmorItems[2] set value {}

function chaincraft:zombie/crowd/head/1
execute if predicate chaincraft:chance/30 run function chaincraft:zombie/crowd/head/2
execute if predicate chaincraft:chance/30 run function chaincraft:zombie/crowd/head/3

tag @s add init