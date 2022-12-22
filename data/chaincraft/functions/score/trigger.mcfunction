#> chaincraft:score/trigger
#   Everytime someone kills something, this function is being called
#
# Callers:
#   > chaincraft:player/main

# Sfx and zombie_devil system
execute as @s[tag=chainsaw] if score @s stored_kills matches ..-1 run playsound minecraft:chaincraft.chainsaw.cut record @a ~ ~ ~ 1 1.2
execute if score @s stored_kills matches ..-1 run playsound minecraft:chaincraft.power.cut player @a ~ ~ ~ 1 1
execute if score @s stored_kills matches ..-1 run scoreboard players add charge zombie_devil 1

#Reset timer
scoreboard players set @s combo_cooldown 100

#Add to the total score
scoreboard players operation @s[scores={combo=..10}] combo_calc = @s combo
scoreboard players operation @s[scores={combo=..10}] combo_calc *= constant.100 combo_calc
scoreboard players operation @s[scores={combo=..10}] score += @s combo_calc
scoreboard players add @s[scores={combo=11..}] score 1000

#Apply corresponding to current combo (if there's an easier way, please tell me)
effect give @s[scores={combo=2}] speed 5 1 true
effect give @s[scores={combo=4}] speed 5 2 true
effect give @s[scores={combo=6}] speed 5 3 true
effect give @s[scores={combo=8}] speed 5 4 true
effect give @s[scores={combo=10}] speed 5 5 true

#Combo graphics
title @s[scores={combo=..9}] title {"score":{"name":"@s","objective":"combo"},"color":"gold"}
title @s[scores={combo=10..}] title {"score":{"name":"@s","objective":"combo"},"color":"red"}
##Colour will be used to show which abilities can be used.