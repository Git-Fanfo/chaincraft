execute if score intro timer matches 620 as @a at @s run function chaincraft:music/1

execute if score intro timer matches 620 as @a run function chaincraft:gamestate/intro/blank

execute if score intro timer matches 595 as @a[tag=intro_chain] run tp 31 3 -54
execute if score intro timer matches 520 as @a[tag=intro_chain] run tellraw @s ["",{"text":"<","color":"#FF9D14"},{"text":"Chainsaw","color":"#FF9D14"},{"text":"> ","color":"#FF9D14"},"I always loved hearing you talk about your dreams."]
execute if score intro timer matches 460 as @a[tag=intro_chain] run tellraw @s ["",{"text":"<","color":"#FF9D14"},{"text":"Chainsaw","color":"#FF9D14"},{"text":"> ","color":"#FF9D14"},{"selector":"@s"},"."]
execute if score intro timer matches 410 as @a[tag=intro_chain] run tellraw @s ["",{"text":"<","color":"#FF9D14"},{"text":"Chainsaw","color":"#FF9D14"},{"text":"> ","color":"#FF9D14"},"Here's the deal. I'll give you my heart."]
execute if score intro timer matches 340 as @a[tag=intro_chain] run tellraw @s ["",{"text":"<","color":"#FF9D14"},{"text":"Chainsaw","color":"#FF9D14"},{"text":"> ","color":"#FF9D14"},"And in exchange, I want you to show me your dream."]

execute if score intro timer matches 595 as @a[tag=intro_power] run tp 31 3 -95
execute if score intro timer matches 520 as @a[tag=intro_power] run tellraw @s ["",{"text":"<","color":"dark_red"},{"selector":"@s","color": "dark_red"},{"text":"> ","color":"dark_red"},"I've killed all who've met my eyes."]
execute if score intro timer matches 460 as @a[tag=intro_power] run tellraw @s ["",{"text":"<","color":"dark_red"},{"selector":"@s","color": "dark_red"},{"text":"> ","color":"dark_red"},"It's become strange to hear a voice"]
execute if score intro timer matches 410 as @a[tag=intro_power] run tellraw @s ["",{"text":"<","color":"dark_red"},{"selector":"@s","color": "dark_red"},{"text":"> ","color":"dark_red"},"that isn't screaming"]
execute if score intro timer matches 340 as @a[tag=intro_power] run tellraw @s ["",{"text":"<","color":"dark_red"},{"selector":"@s","color": "dark_red"},{"text":"> ","color":"dark_red"},"So strange..."]

execute if score intro timer matches 220 as @a run function chaincraft:gamestate/intro/black
execute if score intro timer matches 215 as @a[tag=intro_chain] run function chaincraft:chainsaw/get
execute if score intro timer matches 215 as @a[tag=intro_power] run function chaincraft:power/get

execute if score intro timer matches 215 as @a[tag=intro_chain] run tp @s 61 5 -107.5 0 0
execute if score intro timer matches 215 as @a[tag=intro_power] run tp @s 59 16.5 -50 180 15
##Fixed Coords##
execute if score intro timer matches 140 as @a run function chaincraft:gamestate/intro/credit
execute if score intro timer matches 80 as @a run function chaincraft:gamestate/intro/music

execute if score intro timer matches 17 as @a[tag=intro_chain] run function chaincraft:gamestate/intro/chainsaw
execute if score intro timer matches 17 as @a[tag=intro_power] run function chaincraft:gamestate/intro/power

execute if score intro timer matches 215 run function chaincraft:gamestate/gamestart

execute if score intro timer matches 1 run tag @a[tag=intro_chain] remove intro_chain
execute if score intro timer matches 1 run tag @a[tag=intro_power] remove intro_power

scoreboard players remove intro timer 1