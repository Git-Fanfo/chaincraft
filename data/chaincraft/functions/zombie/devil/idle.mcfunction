execute unless score idle zombie_devil matches 0.. run scoreboard players set idle zombie_devil 60

execute if score idle zombie_devil matches 60 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:22}},{}]}
execute if score idle zombie_devil matches 56 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:23}},{}]}
execute if score idle zombie_devil matches 52 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:24}},{}]}
execute if score idle zombie_devil matches 48 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:25}},{}]}
execute if score idle zombie_devil matches 44 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:26}},{}]}
execute if score idle zombie_devil matches 40 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:27}},{}]}
execute if score idle zombie_devil matches 36 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:28}},{}]}
execute if score idle zombie_devil matches 32 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:29}},{}]}
execute if score idle zombie_devil matches 28 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:30}},{}]}
execute if score idle zombie_devil matches 24 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:31}},{}]}
execute if score idle zombie_devil matches 20 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:32}},{}]}
execute if score idle zombie_devil matches 16 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:33}},{}]}
execute if score idle zombie_devil matches 12 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:34}},{}]}
execute if score idle zombie_devil matches 8 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:35}},{}]}
execute if score idle zombie_devil matches 4 run data merge entity @s {HandItems:[{id:'minecraft:feather',Count:1b,tag:{CustomModelData:36}},{}]}

scoreboard players remove idle zombie_devil 1