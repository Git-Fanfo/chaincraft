summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["zombie_devil"],Pose:{RightArm:[0f,0f,0f]},HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:22}},{}]}

# Reset hits
scoreboard players set hit zombie_devil 0
scoreboard players set charge zombie_devil 0
scoreboard players set vulnerable zombie_devil -1