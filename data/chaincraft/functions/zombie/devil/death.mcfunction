data modify entity @s Marker set value 0b
data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:56}},{}]}
particle dust 0.569 0.082 0.082 3 ~ ~ ~ 1.5 2 1.5 0 500 force
particle minecraft:cloud ~ ~ ~ 0 0 0 .8 500

execute positioned ~3 ~-2 ~ run function chaincraft:controller/spread_blood
execute positioned ~-3 ~-2 ~ run function chaincraft:controller/spread_blood
execute positioned ~ ~-2 ~3 run function chaincraft:controller/spread_blood
execute positioned ~ ~-2 ~-3 run function chaincraft:controller/spread_blood
execute positioned ~2 ~-2 ~2 run function chaincraft:controller/spread_blood
execute positioned ~2 ~-2 ~-2 run function chaincraft:controller/spread_blood
execute positioned ~-2 ~-2 ~2 run function chaincraft:controller/spread_blood
execute positioned ~-2 ~-2 ~-2 run function chaincraft:controller/spread_blood

function chaincraft:zombie/devil/sound/death

fill ~1 ~-2 ~1 ~-1 ~-2 ~-1 barrier replace air

tag @s add dead