#> chaincraft:score/trigger
#   Everytime someone kills something, this function is being called
#
# Callers:
#   > chaincraft:player/main

scoreboard players set @s combo_cooldown 40
scoreboard players operation @s[scores={combo=..10}] score += @s combo
scoreboard players add @s[scores={combo=11..}] score 10