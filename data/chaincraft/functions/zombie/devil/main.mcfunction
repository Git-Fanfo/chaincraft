# Everytime kills x enemies makes it vulnerable
execute if score charge zombie_devil matches 43.. run function chaincraft:zombie/devil/add_vulnerable

# Follow player
execute unless score vul_time zombie_devil matches 0.. run tp @s ~ ~ ~ facing entity @p eyes

# push if not vulnerable
execute unless score vul_time zombie_devil matches 0.. as @a[distance=..4] at @s rotated ~ 0 run function chaincraft:zombie/devil/push
#execute if score vul_time zombie_devil matches 0.. run function chaincraft:zombie/devil/vulnerable

## ANIMATION
execute as @s[tag=!attack,tag=!vulnerable] run function chaincraft:zombie/devil/idle
execute as @s[tag=vulnerable] run function chaincraft:zombie/devil/vulnerable
execute as @s[tag=attack] run function chaincraft:zombie/devil/attack

execute if predicate chaincraft:chance/5 run particle block redstone_block ^ ^1.5 ^-.15 0 0 0 1 80 force

# If 3 times hit. Kill
execute if score hit zombie_devil matches 3.. run function chaincraft:zombie/devil/death