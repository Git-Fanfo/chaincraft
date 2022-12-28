execute if score run_second timer matches 1 run particle flame ~ ~4.5 ~ 1 0 1 .015 10 force
scoreboard players remove vul_time zombie_devil 1
execute if score vul_time zombie_devil matches -1 run tag @s remove vulnerable

#Anim
execute unless score vulnerable zombie_devil matches 0.. run scoreboard players set vulnerable zombie_devil 16

execute if score vulnerable zombie_devil matches 16 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:40}},{}]}
execute if score vulnerable zombie_devil matches 15 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:41}},{}]}
execute if score vulnerable zombie_devil matches 14 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:42}},{}]}
execute if score vulnerable zombie_devil matches 13 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:43}},{}]}
execute if score vulnerable zombie_devil matches 12 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:44}},{}]}
execute if score vulnerable zombie_devil matches 11 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:45}},{}]}
execute if score vulnerable zombie_devil matches 10 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:46}},{}]}
execute if score vulnerable zombie_devil matches 9 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:47}},{}]}
execute if score vulnerable zombie_devil matches 8 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:48}},{}]}
execute if score vulnerable zombie_devil matches 7 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:49}},{}]}
execute if score vulnerable zombie_devil matches 6 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:50}},{}]}
execute if score vulnerable zombie_devil matches 5 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:51}},{}]}
execute if score vulnerable zombie_devil matches 4 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:52}},{}]}
execute if score vulnerable zombie_devil matches 3 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:53}},{}]}
execute if score vulnerable zombie_devil matches 2 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:54}},{}]}
execute if score vulnerable zombie_devil matches 1 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:55}},{}]}


execute if score vulnerable zombie_devil matches 16 run playsound minecraft:block.bell.resonate hostile @a ~ ~ ~ 1.1 2
#execute if score vulnerable zombie_devil matches 16 run playsound minecraft:block.bell.use hostile @a ~ ~ ~ 1.1 2

scoreboard players remove vulnerable zombie_devil 1
