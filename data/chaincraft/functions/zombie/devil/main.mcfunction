# Everytime kills x enemies makes it vulnerable
execute if score charge zombie_devil matches 10.. run function chaincraft:zombie/devil/vulnerable

# Follow player
tp @s ~ ~ ~ facing entity @p eyes

# push if not vulnerable
execute unless score vulnerable zombie_devil matches 0.. as @a[distance=..5] at @s rotated ~ 0 run function chaincraft:zombie/devil/push
execute if score vulnerable zombie_devil matches 0.. run scoreboard players remove vulnerable zombie_devil 1