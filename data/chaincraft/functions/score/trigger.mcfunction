#> chaincraft:score/trigger
#   Everytime someone kills something, this function is being called
#
# Callers:
#   > chaincraft:player/main

# Sfx and zombie_devil system
execute as @s[tag=chainsaw] run playsound minecraft:chaincraft.chainsaw.cut record @a ~ ~ ~ 1 1.2
playsound minecraft:chaincraft.power.cut player @a ~ ~ ~ 1 1
scoreboard players add charge zombie_devil 1

#Reset timer
scoreboard players set @s combo_cooldown 80

#Max combo
execute if score @s max_combo < @s combo run scoreboard players operation @s max_combo = @s combo

#Apply corresponding to current combo (if there's an easier way, please tell me)
effect give @s[scores={combo=2..3}] speed 5 1 true
effect give @s[scores={combo=4..5}] speed 5 2 true
effect give @s[scores={combo=6..7}] speed 5 3 true
effect give @s[scores={combo=8..9}] speed 5 4 true
effect give @s[scores={combo=10..}] speed 5 5 true
effect give @s[scores={combo=25..}] strength 5 4 true

#Combo graphics
execute if score intro timer matches ..0 run title @s[scores={combo=2..}] title [{"text":"BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAx","font":"minecraft:score"},{"score":{"name":"@s","objective":"combo"},"font":"minecraft:score"}]
#title @s[scores={combo=..9}] title {"score":{"name":"@s","objective":"combo"},"color":"gold"}
#title @s[scores={combo=10..}] title {"score":{"name":"@s","objective":"combo"},"color":"red"}
##Colour will be used to show which abilities can be used.