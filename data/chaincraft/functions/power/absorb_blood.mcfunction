# Stored blood to use Attack
scoreboard players add acc_blood power 1
execute unless score acc_blood power >= strength_2 power run fill ~ ~-1 ~ ~ ~-1 ~ gray_concrete replace red_concrete

execute unless score @s foodLevel matches 20.. unless predicate chaincraft:has_effect/hunger run effect give @s saturation 1 1 true