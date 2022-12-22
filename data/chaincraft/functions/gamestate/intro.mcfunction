scoreboard players remove timer config 1

execute if score timer config matches 299 run title @a[tag=chainsaw] title {"text":"Chainsaw Man","bold":true,"color":"red"}
execute if score timer config matches 299 run title @a[tag=power] title {"text":"Power","bold":true,"color":"light_purple"}
execute if score timer config matches 299 run title @a subtitle {"text":"Chainsaw Craft","bold":true,"color":"gold"}

execute if score timer config matches 0 run function chaincraft:gamestate/gamestart