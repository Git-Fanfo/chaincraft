kill @s
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["corpse"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:feather",Count:1b,tag:{CustomModelData:13}},{}]}
data modify entity @e[type=armor_stand,sort=nearest,limit=1] Rotation[0] set from entity @p Rotation[0]
