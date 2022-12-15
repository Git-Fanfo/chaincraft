# No more babys
data modify entity @s IsBaby set value 0b
data modify entity @s HandDropChances set value [0.000F,0.000F]
data modify entity @s ArmorDropChances set value [0.000F,0.000F,0.000F,0.000F]
#data modify entity @s ArmorItems set value [{},{},{},{}]

data modify entity @s Attributes[0].Base set value 0.3

function chaincraft:zombie/jump/head/1
execute if predicate chaincraft:chance/50 run function chaincraft:zombie/jump/head/2

tag @s add init