execute if score intro timer matches 620 as @a at @s run playsound minecraft:chaincraft.music.hawatari_nioku_centi voice @s

execute if score intro timer matches 620 as @a run function chaincraft:gamestate/intro/blank

execute if score intro timer matches 595 as @a[tag=intro_chain] run tp -6.90 5.00 -66.64
execute if score intro timer matches 520 as @a[tag=intro_chain] run tellraw @s ["",{"text":"<","color":"#FF9D14"},{"text":"Chainsaw","color":"#FF9D14"},{"text":"> ","color":"#FF9D14"},"I always loved hearing you talk about your dreams."]
execute if score intro timer matches 460 as @a[tag=intro_chain] run tellraw @s ["",{"text":"<","color":"#FF9D14"},{"text":"Chainsaw","color":"#FF9D14"},{"text":"> ","color":"#FF9D14"},{"selector":"@s"},"."]
execute if score intro timer matches 410 as @a[tag=intro_chain] run tellraw @s ["",{"text":"<","color":"#FF9D14"},{"text":"Chainsaw","color":"#FF9D14"},{"text":"> ","color":"#FF9D14"},"Here's the deal. I'll give you my heart."]
execute if score intro timer matches 340 as @a[tag=intro_chain] run tellraw @s ["",{"text":"<","color":"#FF9D14"},{"text":"Chainsaw","color":"#FF9D14"},{"text":"> ","color":"#FF9D14"},"And in exchange, I want you to show me your dream."]

execute if score intro timer matches 220 as @a run function chaincraft:gamestate/intro/black
execute if score intro timer matches 215 as @a[tag=intro_chain] run function chaincraft:chainsaw/get
#execute if score intro timer matches 215 as @a[tag=chainsaw] run tp 73.24 5.00 -60

execute if score intro timer matches 140 as @a run function chaincraft:gamestate/intro/credit
execute if score intro timer matches 80 as @a run function chaincraft:gamestate/intro/music

execute if score intro timer matches 17 as @a[tag=intro_chain] run function chaincraft:gamestate/intro/chainsaw

#execute if score timer config matches 299 run title @a[tag=power] title {"text":"Power","bold":true,"color":"light_purple"}
#execute if score timer config matches 299 run title @a subtitle {"text":"Chainsaw Craft","bold":true,"color":"gold"}

execute if score intro timer matches 215 run function chaincraft:gamestate/gamestart

scoreboard players remove intro timer 1