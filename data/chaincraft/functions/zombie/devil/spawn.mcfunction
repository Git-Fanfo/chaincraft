summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["zombie_devil"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:22}},{}]}

execute positioned ~1 ~-2 ~1 run function chaincraft:controller/spread_blood
execute positioned ~1 ~-2 ~-1 run function chaincraft:controller/spread_blood
execute positioned ~-1 ~-2 ~1 run function chaincraft:controller/spread_blood
execute positioned ~-1 ~-2 ~-1 run function chaincraft:controller/spread_blood
execute positioned ~2 ~-2 ~ run function chaincraft:controller/spread_blood
execute positioned ~-2 ~-2 ~ run function chaincraft:controller/spread_blood
execute positioned ~ ~-2 ~2 run function chaincraft:controller/spread_blood
execute positioned ~ ~-2 ~-2 run function chaincraft:controller/spread_blood

# Reset hits
scoreboard players set hit zombie_devil 0
scoreboard players set charge zombie_devil 0
scoreboard players set vul_time zombie_devil -1