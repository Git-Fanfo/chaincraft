execute unless score attack zombie_devil matches 0.. run scoreboard players set attack zombie_devil 11

execute if score attack zombie_devil matches 11 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:37}},{}]}
execute if score attack zombie_devil matches 10 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:38}},{}]}
execute if score attack zombie_devil matches 9 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:39}},{}]}
execute if score attack zombie_devil matches 2 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:38}},{}]}

execute if score attack zombie_devil matches 1 run tag @s remove attack

scoreboard players remove attack zombie_devil 1