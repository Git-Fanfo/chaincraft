#> chaincraft:score/trigger
#   Everytime someone kills something, this function is being called
#
# Callers:
#   > chaincraft:player/main

#Add to the total score
scoreboard players set @s combo_cooldown 100
scoreboard players operation @s[scores={combo=..10}] score += @s combo
scoreboard players add @s[scores={combo=11..}] score 10

#Apply corresponding to current combo (if there's an easier way, please tell me)
effect give @s[scores={combo=2}] speed 5 1 true
effect give @s[scores={combo=4}] speed 5 2 true
effect give @s[scores={combo=6}] speed 5 3 true
effect give @s[scores={combo=8}] speed 5 4 true
effect give @s[scores={combo=10}] speed 5 5 true